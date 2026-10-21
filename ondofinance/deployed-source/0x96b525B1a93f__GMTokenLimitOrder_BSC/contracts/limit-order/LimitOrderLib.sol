// SPDX-License-Identifier: BUSL-1.1
/*

      ▄▄█████████▄
   ╓██▀└ ,╓▄▄▄, '▀██▄
  ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,
 ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,
██  ██ ╒█▀'   ╙█▌ ╙█▌ ██     ▐██      ███  █████,  ██  ██▌    └██▌  ██▌     └██▌
██ ▐█▌ ██      ╟█  █▌ ╟█     ██▌      ▐██  ██ └███ ██  ██▌     ╟██ j██       ╟██
╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
 ██ "██, ╙▀▀███████████⌐      ╙████████▀   ██     ╙██  ███████▀▀     ╙███████▀`
  ██▄ ╙▀██▄▄▄▄▄,,,                ¬─                                    '─¬
   ╙▀██▄ '╙╙╙▀▀▀▀▀▀▀▀
      ╙▀▀██████R⌐

 */
pragma solidity 0.8.24;

import "contracts/globalMarkets/tokenManager/IGMTokenManager.sol";
import "contracts/xManager/interfaces/IOndoIDRegistry.sol";
import "contracts/external/openzeppelin/contracts/token/IERC20.sol";
import "contracts/external/openzeppelin/contracts/token/IERC20Metadata.sol";
import "contracts/external/openzeppelin/contracts/token/SafeERC20.sol";
import "contracts/limit-order/LimitOrderStorage.sol";
import "contracts/limit-order/IGMTokenLimitOrder.sol";

/**
 * @title  LimitOrderLib
 * @author Ondo Finance
 * @notice Library containing core business logic for the GMTokenLimitOrder contract,
 *         including order creation, cancellation, execution, and validation.
 */
library LimitOrderLib {
  using SafeERC20 for IERC20;

  // ─────────────────────────────────────────────────────────────────────────────
  // Constants
  // ─────────────────────────────────────────────────────────────────────────────

  /// Normalizer for 18 decimal precision calculations
  uint256 internal constant NORMALIZER_18 = 1e18;

  /// Number of decimals used for USD value calculations
  uint8 internal constant USD_DECIMALS = 18;

  /// Identifier used for GM token operations in OndoIDRegistry
  address internal constant GM_IDENTIFIER =
    address(uint160(uint256(keccak256(abi.encodePacked("global_markets")))));

  // ─────────────────────────────────────────────────────────────────────────────
  // Storage Accessor
  // ─────────────────────────────────────────────────────────────────────────────

  function s() internal pure returns (LimitOrderStorage.Layout storage) {
    return LimitOrderStorage.layout();
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Initialization
  // ─────────────────────────────────────────────────────────────────────────────

  function initialize(
    address gmTokenManager,
    address ondoIDRegistry,
    uint256 maxOrderDuration
  ) internal {
    s().gmTokenManager = IGMTokenManager(gmTokenManager);
    s().ondoIDRegistry = IOndoIDRegistry(ondoIDRegistry);
    s().maxOrderDuration = maxOrderDuration;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Pause Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function whenNotPaused() internal view {
    if (s().paused) revert IGMTokenLimitOrder.ContractPaused();
  }

  function pause() internal {
    s().paused = true;
    emit IGMTokenLimitOrder.Paused(msg.sender);
  }

  function unpause() internal {
    s().paused = false;
    emit IGMTokenLimitOrder.Unpaused(msg.sender);
  }

  function paused() internal view returns (bool) {
    return s().paused;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Creation
  // ─────────────────────────────────────────────────────────────────────────────

  function createOrder(
    IGMTokenLimitOrder.CreateOrderParams memory params
  ) internal returns (uint256 orderId) {
    validateCreateParams(
      params.gmToken,
      params.quoteToken,
      params.exactAmount,
      params.limitPrice,
      params.expiry
    );

    IGMTokenLimitOrder.LimitOrder memory order = IGMTokenLimitOrder.LimitOrder({
      user: msg.sender,
      gmToken: params.gmToken,
      quoteToken: params.quoteToken,
      side: params.side,
      exactType: params.exactType,
      exactAmount: params.exactAmount,
      limitPrice: params.limitPrice,
      expiry: params.expiry,
      status: IGMTokenLimitOrder.OrderStatus.ACTIVE
    });

    orderId = s().orders.length;
    s().orders.push(order);

    emit IGMTokenLimitOrder.OrderCreated(orderId, msg.sender, params.gmToken);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Cancellation
  // ─────────────────────────────────────────────────────────────────────────────

  function cancelOrder(uint256 orderId) internal {
    IGMTokenLimitOrder.LimitOrder storage order = s().orders[orderId];

    if (order.user != msg.sender) revert IGMTokenLimitOrder.NotOrderMaker();
    if (order.status != IGMTokenLimitOrder.OrderStatus.ACTIVE) {
      revert IGMTokenLimitOrder.OrderNotActive();
    }

    order.status = IGMTokenLimitOrder.OrderStatus.CANCELLED;
    emit IGMTokenLimitOrder.OrderCancelled(orderId, msg.sender);
  }

  function adminCancelOrder(uint256 orderId) internal {
    IGMTokenLimitOrder.LimitOrder storage order = s().orders[orderId];

    if (order.status != IGMTokenLimitOrder.OrderStatus.ACTIVE) {
      revert IGMTokenLimitOrder.OrderNotActive();
    }

    order.status = IGMTokenLimitOrder.OrderStatus.CANCELLED;
    emit IGMTokenLimitOrder.OrderCancelled(orderId, msg.sender);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Execution
  // ─────────────────────────────────────────────────────────────────────────────

  function executeOrder(
    uint256 orderId,
    IGMTokenManager.Quote calldata quote,
    bytes calldata signature
  ) internal {
    IGMTokenLimitOrder.LimitOrder storage order = s().orders[orderId];

    validateExecution(order, quote);

    // For EXACT_GM: calculate from quote. For EXACT_QUOTE: use order's exactAmount.
    uint256 quoteAmount = order.exactType ==
      IGMTokenLimitOrder.ExactType.EXACT_GM
      ? calculateQuoteAmount(quote, order.quoteToken)
      : order.exactAmount;

    if (order.side == IGMTokenManager.QuoteSide.BUY) {
      executeBuy(order, quote, signature, quoteAmount);
    } else if (order.side == IGMTokenManager.QuoteSide.SELL) {
      executeSell(order, quote, signature, quoteAmount);
    } else {
      revert IGMTokenLimitOrder.SideMismatch();
    }

    order.status = IGMTokenLimitOrder.OrderStatus.EXECUTED;

    emit IGMTokenLimitOrder.OrderExecuted(
      orderId,
      msg.sender,
      order.side,
      quote.attestationId,
      quote.quantity,
      quoteAmount
    );
  }

  function executeBuy(
    IGMTokenLimitOrder.LimitOrder storage order,
    IGMTokenManager.Quote calldata quote,
    bytes calldata signature,
    uint256 quoteAmount
  ) internal {
    IGMTokenManager gmTokenManager = s().gmTokenManager;

    // 1. Pull quote tokens from user
    IERC20(order.quoteToken).safeTransferFrom(
      order.user,
      address(this),
      quoteAmount
    );

    // 2. Approve GMTokenManager
    IERC20(order.quoteToken).forceApprove(address(gmTokenManager), quoteAmount);

    // 3. Mint GM tokens
    gmTokenManager.mintWithAttestation(
      quote,
      signature,
      order.quoteToken,
      quoteAmount
    );

    // 4. Transfer GM tokens to user
    IERC20(order.gmToken).safeTransfer(order.user, quote.quantity);
  }

  function executeSell(
    IGMTokenLimitOrder.LimitOrder storage order,
    IGMTokenManager.Quote calldata quote,
    bytes calldata signature,
    uint256 quoteAmount
  ) internal {
    IGMTokenManager gmTokenManager = s().gmTokenManager;

    // 1. Pull GM tokens from user
    IERC20(order.gmToken).safeTransferFrom(
      order.user,
      address(this),
      quote.quantity
    );

    // 2. Approve GMTokenManager
    IERC20(order.gmToken).forceApprove(address(gmTokenManager), quote.quantity);

    // 3. Redeem GM tokens (use quoteAmount as minAmountOut)
    gmTokenManager.redeemWithAttestation(
      quote,
      signature,
      order.quoteToken,
      quoteAmount
    );

    // 4. Transfer quote tokens to user
    IERC20(order.quoteToken).safeTransfer(order.user, quoteAmount);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Validation Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function validateCreateParams(
    address gmToken,
    address quoteToken,
    uint256 exactAmount,
    uint256 limitPrice,
    uint256 expiry
  ) internal view {
    if (gmToken == address(0)) revert IGMTokenLimitOrder.GMTokenZeroAddress();
    if (quoteToken == address(0)) {
      revert IGMTokenLimitOrder.QuoteTokenZeroAddress();
    }
    if (!s().gmTokenManager.gmTokenAccepted(gmToken)) {
      revert IGMTokenLimitOrder.GMTokenNotAccepted();
    }
    if (gmToken == quoteToken) revert IGMTokenLimitOrder.SameToken();
    if (exactAmount == 0) revert IGMTokenLimitOrder.ZeroQuantity();
    if (limitPrice == 0) revert IGMTokenLimitOrder.ZeroLimitPrice();
    if (expiry <= block.timestamp) revert IGMTokenLimitOrder.ExpiryInPast();
    if (expiry > block.timestamp + s().maxOrderDuration) {
      revert IGMTokenLimitOrder.ExpiryTooFarInFuture();
    }
  }

  function checkCompliance(address user) internal view {
    bytes32 userId = s().ondoIDRegistry.getRegisteredID(GM_IDENTIFIER, user);
    if (userId == bytes32(0)) revert IGMTokenLimitOrder.UserNotRegistered();
  }

  function validateExecution(
    IGMTokenLimitOrder.LimitOrder storage order,
    IGMTokenManager.Quote calldata quote
  ) internal view {
    // Order state validation
    if (order.status != IGMTokenLimitOrder.OrderStatus.ACTIVE) {
      revert IGMTokenLimitOrder.OrderNotActive();
    }
    if (block.timestamp > order.expiry) {
      revert IGMTokenLimitOrder.OrderExpired();
    }

    // Quote parameter validation
    if (quote.asset != order.gmToken) revert IGMTokenLimitOrder.AssetMismatch();
    if (block.timestamp > quote.expiration) {
      revert IGMTokenLimitOrder.QuoteExpired();
    }
    if (quote.side != order.side) revert IGMTokenLimitOrder.SideMismatch();

    // Price limit validation
    if (order.side == IGMTokenManager.QuoteSide.BUY) {
      if (quote.price > order.limitPrice) {
        revert IGMTokenLimitOrder.PriceTooHigh();
      }
    } else if (order.side == IGMTokenManager.QuoteSide.SELL) {
      if (quote.price < order.limitPrice) {
        revert IGMTokenLimitOrder.PriceTooLow();
      }
    }

    // Fill-or-kill quantity validation (only for EXACT_GM orders)
    if (order.exactType == IGMTokenLimitOrder.ExactType.EXACT_GM) {
      if (quote.quantity != order.exactAmount) {
        revert IGMTokenLimitOrder.QuantityMismatch();
      }
    }

    // Max GM quantity validation for EXACT_QUOTE SELL orders
    // Prevents executor from overspending user's GM token allowance
    if (
      order.exactType == IGMTokenLimitOrder.ExactType.EXACT_QUOTE &&
      order.side == IGMTokenManager.QuoteSide.SELL
    ) {
      uint256 maxGM = calculateMaxGM(
        order.exactAmount,
        order.limitPrice,
        order.quoteToken
      );
      if (quote.quantity > maxGM) {
        revert IGMTokenLimitOrder.QuantityTooHigh();
      }
    }
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Utility Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function calculateQuoteAmount(
    IGMTokenManager.Quote calldata quote,
    address quoteToken
  ) internal view returns (uint256) {
    uint8 tokenDecimals = IERC20Metadata(quoteToken).decimals();
    // Combine into single division to avoid intermediate truncation precision loss
    uint256 numerator = quote.quantity * quote.price * (10 ** tokenDecimals);
    uint256 divisor = NORMALIZER_18 * NORMALIZER_18;
    // Round up for BUY (user pays more), round down for SELL (user receives less)
    return
      quote.side == IGMTokenManager.QuoteSide.BUY
        ? (numerator + divisor - 1) / divisor
        : numerator / divisor;
  }

  function calculateMaxGM(
    uint256 quoteAmount,
    uint256 limitPrice,
    address quoteToken
  ) internal view returns (uint256) {
    uint8 tokenDecimals = IERC20Metadata(quoteToken).decimals();
    // Normalize quoteAmount to 18 decimals (USD value)
    uint256 usdValue = quoteAmount * (10 ** (USD_DECIMALS - tokenDecimals));
    // maxGM = usdValue * 1e18 / limitPrice (round up to allow for rounding tolerance)
    return (usdValue * NORMALIZER_18 + limitPrice - 1) / limitPrice;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // View Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function getOrderCount() internal view returns (uint256) {
    return s().orders.length;
  }

  function getOrder(
    uint256 orderId
  ) internal view returns (IGMTokenLimitOrder.LimitOrder storage) {
    return s().orders[orderId];
  }

  function isOrderActive(uint256 orderId) internal view returns (bool) {
    if (orderId >= s().orders.length)
      revert IGMTokenLimitOrder.InvalidOrderId();
    IGMTokenLimitOrder.LimitOrder storage order = s().orders[orderId];
    return
      order.status == IGMTokenLimitOrder.OrderStatus.ACTIVE &&
      block.timestamp <= order.expiry;
  }

  function isOrderExecuted(uint256 orderId) internal view returns (bool) {
    if (orderId >= s().orders.length)
      revert IGMTokenLimitOrder.InvalidOrderId();
    return
      s().orders[orderId].status == IGMTokenLimitOrder.OrderStatus.EXECUTED;
  }

  function retrieveTokens(
    address token,
    address recipient,
    uint256 amount
  ) internal {
    IERC20(token).safeTransfer(recipient, amount);
    emit IGMTokenLimitOrder.TokensRetrieved(token, recipient, amount);
  }

  function getGMTokenManager() internal view returns (address) {
    return address(s().gmTokenManager);
  }

  function getOndoIDRegistry() internal view returns (address) {
    return address(s().ondoIDRegistry);
  }

  function setMaxOrderDuration(uint256 duration) internal {
    s().maxOrderDuration = duration;
    emit IGMTokenLimitOrder.MaxOrderDurationSet(duration);
  }

  function getMaxOrderDuration() internal view returns (uint256) {
    return s().maxOrderDuration;
  }
}
