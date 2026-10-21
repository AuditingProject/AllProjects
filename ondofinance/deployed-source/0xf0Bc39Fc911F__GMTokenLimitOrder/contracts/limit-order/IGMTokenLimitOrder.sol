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

/**
 * @title  IGMTokenLimitOrder
 * @author Ondo Finance
 * @notice Interface for the GMTokenLimitOrder contract which enables users to place
 *         limit orders for buying and selling GM tokens (e.g., APPLon, TSLAon).
 */
interface IGMTokenLimitOrder {
  // ─────────────────────────────────────────────────────────────────────────────
  // Enums
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Specifies which amount is exact for order matching
   */
  enum ExactType {
    /// The exactAmount field represents GM tokens
    EXACT_GM,
    /// The exactAmount field represents quote tokens
    EXACT_QUOTE
  }

  /**
   * @notice Order lifecycle status
   */
  enum OrderStatus {
    /// Default value, order does not exist
    NOT_INITIATED,
    /// Order is open and can be executed or cancelled
    ACTIVE,
    /// Order has been fully filled
    EXECUTED,
    /// Order was cancelled by user or admin
    CANCELLED
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Structs
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Represents a limit order
   * @param  user        Address of the order maker
   * @param  gmToken     Address of the GM token to buy/sell (e.g., APPLon)
   * @param  quoteToken  Address of the quote token for payment (e.g., USDC)
   * @param  side        BUY (mint) or SELL (redeem)
   * @param  exactType   Whether exactAmount represents GM tokens or quote tokens
   * @param  exactAmount The exact amount required (interpretation depends on exactType)
   * @param  limitPrice  Maximum price for buys, minimum price for sells (18 decimals)
   * @param  expiry      Unix timestamp after which the order cannot be executed
   * @param  status      Current order status
   */
  struct LimitOrder {
    address user;
    address gmToken;
    address quoteToken;
    IGMTokenManager.QuoteSide side;
    ExactType exactType;
    uint256 exactAmount;
    uint256 limitPrice;
    uint256 expiry;
    OrderStatus status;
  }

  /**
   * @notice Parameters for creating a new limit order
   * @param  side        BUY (mint) or SELL (redeem)
   * @param  exactType   Whether exactAmount represents GM tokens or quote tokens
   * @param  gmToken     Address of the GM token to buy/sell
   * @param  quoteToken  Address of the quote token for payment
   * @param  exactAmount The exact amount required (interpretation depends on exactType)
   * @param  limitPrice  Maximum price for buys, minimum price for sells (18 decimals)
   * @param  expiry      Unix timestamp after which the order cannot be executed
   */
  struct CreateOrderParams {
    IGMTokenManager.QuoteSide side;
    ExactType exactType;
    address gmToken;
    address quoteToken;
    uint256 exactAmount;
    uint256 limitPrice;
    uint256 expiry;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Events
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Emitted when a new order is created
   * @param  orderId Unique identifier for the order
   * @param  user    Address of the order maker
   * @param  gmToken Address of the GM token
   */
  event OrderCreated(
    uint256 indexed orderId,
    address indexed user,
    address indexed gmToken
  );

  /**
   * @notice Emitted when an order is executed
   * @param  orderId          Unique identifier for the order
   * @param  executor         Address that executed the order
   * @param  side             BUY or SELL
   * @param  attestationId    ID from the attestation quote
   * @param  gmQuantity       GM tokens transferred
   * @param  quoteTokenAmount Quote tokens transferred
   */
  event OrderExecuted(
    uint256 indexed orderId,
    address indexed executor,
    IGMTokenManager.QuoteSide side,
    uint256 attestationId,
    uint256 gmQuantity,
    uint256 quoteTokenAmount
  );

  /**
   * @notice Emitted when an order is cancelled
   * @param  orderId     Unique identifier for the order
   * @param  cancelledBy Address that cancelled the order
   */
  event OrderCancelled(uint256 indexed orderId, address indexed cancelledBy);

  /**
   * @notice Emitted when the contract is paused
   * @param  pauser Address that paused the contract
   */
  event Paused(address indexed pauser);

  /**
   * @notice Emitted when the contract is unpaused
   * @param  unpauser Address that unpaused the contract
   */
  event Unpaused(address indexed unpauser);

  /**
   * @notice Emitted when tokens are retrieved from the contract
   * @param  token     Address of the token retrieved
   * @param  recipient Address receiving the tokens
   * @param  amount    Amount of tokens retrieved
   */
  event TokensRetrieved(
    address indexed token,
    address indexed recipient,
    uint256 amount
  );

  /**
   * @notice Emitted when maxOrderDuration is updated
   * @param  newDuration New maximum order duration
   */
  event MaxOrderDurationSet(uint256 newDuration);

  // ─────────────────────────────────────────────────────────────────────────────
  // Errors
  // ─────────────────────────────────────────────────────────────────────────────

  /// Error emitted when gmToken address is zero
  error GMTokenZeroAddress();

  /// Error emitted when quoteToken address is zero
  error QuoteTokenZeroAddress();

  /// Error emitted when gmToken is not accepted by GMTokenManager
  error GMTokenNotAccepted();

  /// Error emitted when gmToken and quoteToken are the same
  error SameToken();

  /// Error emitted when exactAmount is zero
  error ZeroQuantity();

  /// Error emitted when limitPrice is zero
  error ZeroLimitPrice();

  /// Error emitted when expiry is not in the future
  error ExpiryInPast();

  /// Error emitted when order status is not ACTIVE
  error OrderNotActive();

  /// Error emitted when order has expired
  error OrderExpired();

  /// Error emitted when caller is not the order maker
  error NotOrderMaker();

  /// Error emitted when user is not registered in OndoIDRegistry
  error UserNotRegistered();

  /// Error emitted when quote asset doesn't match order gmToken
  error AssetMismatch();

  /// Error emitted when quote side doesn't match order side
  error SideMismatch();

  /// Error emitted when quote price exceeds limit price for buy orders
  error PriceTooHigh();

  /// Error emitted when quote price is below limit price for sell orders
  error PriceTooLow();

  /// Error emitted when quote quantity doesn't match order's exactAmount
  error QuantityMismatch();

  /// Error emitted when quote quantity exceeds maximum for EXACT_QUOTE orders
  error QuantityTooHigh();

  /// Error emitted when attestation quote has expired
  error QuoteExpired();

  /// Error emitted when contract is paused
  error ContractPaused();

  /// Error emitted when batch arrays have mismatched lengths
  error ArrayLengthMismatch();

  /// Error emitted when orderId does not exist
  error InvalidOrderId();

  /// Error emitted when gmTokenManager constructor argument is zero address
  error GMTokenManagerZeroAddress();

  /// Error emitted when ondoIDRegistry constructor argument is zero address
  error OndoIDRegistryZeroAddress();

  /// Error emitted when defaultAdmin constructor argument is zero address
  error DefaultAdminZeroAddress();

  /// Error emitted when maxOrderDuration constructor argument is zero
  error MaxOrderDurationZero();

  /// Error emitted when order expiry exceeds maxOrderDuration
  error ExpiryTooFarInFuture();

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Creation
  // ─────────────────────────────────────────────────────────────────────────────

  function createBuyOrderExactIn(
    address gmToken,
    address quoteToken,
    uint256 quoteAmount,
    uint256 limitPrice,
    uint256 expiry
  ) external returns (uint256);

  function createBuyOrderExactOut(
    address gmToken,
    address quoteToken,
    uint256 gmAmount,
    uint256 limitPrice,
    uint256 expiry
  ) external returns (uint256);

  function createSellOrderExactIn(
    address gmToken,
    address quoteToken,
    uint256 gmAmount,
    uint256 limitPrice,
    uint256 expiry
  ) external returns (uint256);

  function createSellOrderExactOut(
    address gmToken,
    address quoteToken,
    uint256 quoteAmount,
    uint256 limitPrice,
    uint256 expiry
  ) external returns (uint256);

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Cancellation
  // ─────────────────────────────────────────────────────────────────────────────

  function cancelOrder(uint256 orderId) external;

  function adminCancelOrder(uint256 orderId) external;

  // ─────────────────────────────────────────────────────────────────────────────
  // Order Execution
  // ─────────────────────────────────────────────────────────────────────────────

  function executeOrder(
    uint256 orderId,
    IGMTokenManager.Quote calldata quote,
    bytes calldata signature
  ) external;

  function executeOrderBatch(
    uint256[] calldata orderIds,
    IGMTokenManager.Quote[] calldata quotes,
    bytes[] calldata signatures
  ) external;

  // ─────────────────────────────────────────────────────────────────────────────
  // View Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function getOrderCount() external view returns (uint256);

  function orders(uint256 orderId) external view returns (LimitOrder memory);

  function isOrderActive(uint256 orderId) external view returns (bool);

  function isOrderExecuted(uint256 orderId) external view returns (bool);

  function paused() external view returns (bool);

  function gmTokenManager() external view returns (address);

  function ondoIDRegistry() external view returns (address);

  function gmIdentifier() external pure returns (address);

  function maxOrderDuration() external view returns (uint256);

  // ─────────────────────────────────────────────────────────────────────────────
  // Admin Functions
  // ─────────────────────────────────────────────────────────────────────────────

  function pause() external;

  function unpause() external;

  function retrieveTokens(
    address token,
    address recipient,
    uint256 amount
  ) external;

  function setMaxOrderDuration(uint256 duration) external;
}
