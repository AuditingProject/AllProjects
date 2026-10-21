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
import "contracts/external/openzeppelin/contracts/security/ReentrancyGuardTransient.sol";
import "contracts/external/openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "contracts/limit-order/LimitOrderStorage.sol";
import "contracts/limit-order/LimitOrderLib.sol";
import "contracts/limit-order/IGMTokenLimitOrder.sol";

/**
 * @title  GMTokenLimitOrder
 * @author Ondo Finance
 * @notice Limit order contract enabling users to place limit orders for buying and selling
 *         GM tokens (e.g., APPLon, TSLAon).
 *
 * @dev    The contract supports four order types based on two dimensions:
 *         - Side: BUY (mint GM tokens) or SELL (redeem GM tokens)
 *         - ExactType: EXACT_GM (specify exact GM token amount) or EXACT_QUOTE (specify exact quote token amount)
 *
 *         Order execution is performed by permissioned executors who provide attestation quotes
 *         from the GMTokenManager. Orders use fill-or-kill execution (must be fully filled in one transaction).
 *
 *         Example use cases:
 *         - createBuyOrderExactIn: "I want to spend exactly 1000 USDC to buy APPLon at max $150/share"
 *         - createBuyOrderExactOut: "I want to buy exactly 10 APPLon shares at max $150/share"
 *         - createSellOrderExactIn: "I want to sell exactly 10 APPLon shares at min $150/share"
 *         - createSellOrderExactOut: "I want to receive exactly 1500 USDC from selling APPLon at min $150/share"
 *
 *         Uses unstructured storage pattern for library-based state management.
 */
contract GMTokenLimitOrder is
  ReentrancyGuardTransient,
  AccessControlEnumerable,
  IGMTokenLimitOrder
{
  // ─────────────────────────────────────────────────────────────────────────────
  // Constants
  // ─────────────────────────────────────────────────────────────────────────────

  /// Role identifier for addresses permitted to execute orders
  bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

  /// Role identifier for addresses permitted to pause the contract
  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

  /// Role identifier for addresses permitted to unpause the contract
  bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

  /// Role identifier for addresses permitted to retrieve tokens from the contract
  bytes32 public constant TOKEN_RETRIEVER_ROLE =
    keccak256("TOKEN_RETRIEVER_ROLE");

  /// Role identifier for addresses permitted to cancel any order
  bytes32 public constant CANCELLER_ROLE = keccak256("CANCELLER_ROLE");

  // ─────────────────────────────────────────────────────────────────────────────
  // Constructor
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Initializes the limit order contract
   * @param  _gmTokenManager   Address of the GMTokenManager contract for minting/redeeming
   * @param  _ondoIDRegistry   Address of the OndoIDRegistry for compliance checks
   * @param  _defaultAdmin     Address to receive the DEFAULT_ADMIN_ROLE
   * @param  _maxOrderDuration Maximum duration (in seconds) that an order expiry can be set into the future
   */
  constructor(
    address _gmTokenManager,
    address _ondoIDRegistry,
    address _defaultAdmin,
    uint256 _maxOrderDuration
  ) {
    if (_gmTokenManager == address(0)) {
      revert IGMTokenLimitOrder.GMTokenManagerZeroAddress();
    }
    if (_ondoIDRegistry == address(0)) {
      revert IGMTokenLimitOrder.OndoIDRegistryZeroAddress();
    }
    if (_defaultAdmin == address(0)) {
      revert IGMTokenLimitOrder.DefaultAdminZeroAddress();
    }
    if (_maxOrderDuration == 0) {
      revert IGMTokenLimitOrder.MaxOrderDurationZero();
    }

    LimitOrderLib.initialize(
      _gmTokenManager,
      _ondoIDRegistry,
      _maxOrderDuration
    );
    _grantRole(DEFAULT_ADMIN_ROLE, _defaultAdmin);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // External Functions - Order Creation
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Create a buy order specifying exact quote token amount to spend
   * @param  gmToken     Address of the GM token to buy
   * @param  quoteToken  Address of the quote token to spend
   * @param  quoteAmount Exact amount of quote tokens to spend
   * @param  limitPrice  Maximum price per GM token (18 decimals)
   * @param  expiry      Unix timestamp after which order expires
   * @return Unique identifier for the created order
   * @dev    Use when you want to spend a specific amount of quote tokens
   *         (e.g., "spend exactly 1000 USDC"). Caller must be registered in
   *         OndoIDRegistry.
   */
  function createBuyOrderExactIn(
    address gmToken,
    address quoteToken,
    uint256 quoteAmount,
    uint256 limitPrice,
    uint256 expiry
  ) external whenNotPaused onlyCompliant(msg.sender) returns (uint256) {
    return
      LimitOrderLib.createOrder(
        IGMTokenLimitOrder.CreateOrderParams({
          side: IGMTokenManager.QuoteSide.BUY,
          exactType: IGMTokenLimitOrder.ExactType.EXACT_QUOTE,
          gmToken: gmToken,
          quoteToken: quoteToken,
          exactAmount: quoteAmount,
          limitPrice: limitPrice,
          expiry: expiry
        })
      );
  }

  /**
   * @notice Create a buy order specifying exact GM token amount to receive
   * @param  gmToken    Address of the GM token to buy
   * @param  quoteToken Address of the quote token to spend
   * @param  gmAmount   Exact amount of GM tokens to receive
   * @param  limitPrice Maximum price per GM token (18 decimals)
   * @param  expiry     Unix timestamp after which order expires
   * @return Unique identifier for the created order
   * @dev    Use when you want to receive a specific amount of GM tokens
   *         (e.g., "buy exactly 10 shares"). Caller must be registered in
   *         OndoIDRegistry.
   */
  function createBuyOrderExactOut(
    address gmToken,
    address quoteToken,
    uint256 gmAmount,
    uint256 limitPrice,
    uint256 expiry
  ) external whenNotPaused onlyCompliant(msg.sender) returns (uint256) {
    return
      LimitOrderLib.createOrder(
        IGMTokenLimitOrder.CreateOrderParams({
          side: IGMTokenManager.QuoteSide.BUY,
          exactType: IGMTokenLimitOrder.ExactType.EXACT_GM,
          gmToken: gmToken,
          quoteToken: quoteToken,
          exactAmount: gmAmount,
          limitPrice: limitPrice,
          expiry: expiry
        })
      );
  }

  /**
   * @notice Create a sell order specifying exact GM token amount to sell
   * @param  gmToken    Address of the GM token to sell
   * @param  quoteToken Address of the quote token to receive
   * @param  gmAmount   Exact amount of GM tokens to sell
   * @param  limitPrice Minimum price per GM token (18 decimals)
   * @param  expiry     Unix timestamp after which order expires
   * @return Unique identifier for the created order
   * @dev    Use when you want to sell a specific amount of GM tokens
   *         (e.g., "sell exactly 10 shares"). Caller must be registered in
   *         OndoIDRegistry.
   */
  function createSellOrderExactIn(
    address gmToken,
    address quoteToken,
    uint256 gmAmount,
    uint256 limitPrice,
    uint256 expiry
  ) external whenNotPaused onlyCompliant(msg.sender) returns (uint256) {
    return
      LimitOrderLib.createOrder(
        IGMTokenLimitOrder.CreateOrderParams({
          side: IGMTokenManager.QuoteSide.SELL,
          exactType: IGMTokenLimitOrder.ExactType.EXACT_GM,
          gmToken: gmToken,
          quoteToken: quoteToken,
          exactAmount: gmAmount,
          limitPrice: limitPrice,
          expiry: expiry
        })
      );
  }

  /**
   * @notice Create a sell order specifying exact quote token amount to receive
   * @param  gmToken     Address of the GM token to sell
   * @param  quoteToken  Address of the quote token to receive
   * @param  quoteAmount Exact amount of quote tokens to receive
   * @param  limitPrice  Minimum price per GM token (18 decimals)
   * @param  expiry      Unix timestamp after which order expires
   * @return Unique identifier for the created order
   * @dev    Use when you want to receive a specific amount of quote tokens
   *         (e.g., "receive exactly 1500 USDC"). Caller must be registered in
   *         OndoIDRegistry.
   */
  function createSellOrderExactOut(
    address gmToken,
    address quoteToken,
    uint256 quoteAmount,
    uint256 limitPrice,
    uint256 expiry
  ) external whenNotPaused onlyCompliant(msg.sender) returns (uint256) {
    return
      LimitOrderLib.createOrder(
        IGMTokenLimitOrder.CreateOrderParams({
          side: IGMTokenManager.QuoteSide.SELL,
          exactType: IGMTokenLimitOrder.ExactType.EXACT_QUOTE,
          gmToken: gmToken,
          quoteToken: quoteToken,
          exactAmount: quoteAmount,
          limitPrice: limitPrice,
          expiry: expiry
        })
      );
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // External Functions - Order Cancellation
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Cancel an order (only callable by order maker)
   * @param  orderId The order to cancel
   * @dev    Sets order status to CANCELLED. Order must be ACTIVE.
   */
  function cancelOrder(uint256 orderId) external {
    LimitOrderLib.cancelOrder(orderId);
  }

  /**
   * @notice Cancel an order as admin (requires CANCELLER_ROLE)
   * @param  orderId The order to cancel
   * @dev    Sets order status to CANCELLED. Order must be ACTIVE.
   */
  function adminCancelOrder(uint256 orderId) external onlyRole(CANCELLER_ROLE) {
    LimitOrderLib.adminCancelOrder(orderId);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // External Functions - Order Execution
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Execute an order with an attestation quote (requires EXECUTOR_ROLE)
   * @param  orderId   The order to execute
   * @param  quote     Attestation quote from GMTokenManager
   * @param  signature EIP-712 signature of the quote
   * @dev    Validates the quote against order parameters and executes via
   *         GMTokenManager. For buy orders: pulls quote tokens from user, mints
   *         GM tokens to user. For sell orders: pulls GM tokens from user, sends
   *         quote tokens to user. Uses fill-or-kill: quote must exactly match
   *         order's exactAmount or reverts.
   */
  function executeOrder(
    uint256 orderId,
    IGMTokenManager.Quote calldata quote,
    bytes calldata signature
  )
    external
    nonReentrant
    whenNotPaused
    onlyRole(EXECUTOR_ROLE)
    onlyCompliant(msg.sender)
  {
    LimitOrderLib.checkCompliance(LimitOrderLib.getOrder(orderId).user);
    LimitOrderLib.executeOrder(orderId, quote, signature);
  }

  /**
   * @notice Execute multiple orders in a single transaction (requires EXECUTOR_ROLE)
   * @param  orderIds   Array of order IDs to execute
   * @param  quotes     Array of attestation quotes
   * @param  signatures Array of EIP-712 signatures
   * @dev    Each order is executed independently. If one fails, the entire batch
   *         reverts.
   */
  function executeOrderBatch(
    uint256[] calldata orderIds,
    IGMTokenManager.Quote[] calldata quotes,
    bytes[] calldata signatures
  )
    external
    nonReentrant
    whenNotPaused
    onlyRole(EXECUTOR_ROLE)
    onlyCompliant(msg.sender)
  {
    if (
      orderIds.length != quotes.length || quotes.length != signatures.length
    ) {
      revert IGMTokenLimitOrder.ArrayLengthMismatch();
    }

    for (uint256 i = 0; i < orderIds.length; i++) {
      LimitOrderLib.checkCompliance(LimitOrderLib.getOrder(orderIds[i]).user);
      LimitOrderLib.executeOrder(orderIds[i], quotes[i], signatures[i]);
    }
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // View Functions
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Get total number of orders created
   * @return Total order count
   */
  function getOrderCount() external view returns (uint256) {
    return LimitOrderLib.getOrderCount();
  }

  /**
   * @notice Get order details by ID
   * @param  orderId The order ID
   * @return The LimitOrder struct
   */
  function orders(
    uint256 orderId
  ) external view returns (IGMTokenLimitOrder.LimitOrder memory) {
    return LimitOrderLib.getOrder(orderId);
  }

  /**
   * @notice Check if an order is active and not expired
   * @param  orderId The order ID
   * @return True if order is ACTIVE and not expired
   * @dev    Reverts with InvalidOrderId for nonexistent orders
   */
  function isOrderActive(uint256 orderId) external view returns (bool) {
    return LimitOrderLib.isOrderActive(orderId);
  }

  /**
   * @notice Check if an order has been executed
   * @param  orderId The order ID
   * @return True if order status is EXECUTED
   * @dev    Reverts with InvalidOrderId for nonexistent orders
   */
  function isOrderExecuted(uint256 orderId) external view returns (bool) {
    return LimitOrderLib.isOrderExecuted(orderId);
  }

  /**
   * @notice Check if contract is paused
   * @return True if paused
   */
  function paused() external view returns (bool) {
    return LimitOrderLib.paused();
  }

  /**
   * @notice Get GMTokenManager address
   * @return GMTokenManager contract address
   */
  function gmTokenManager() external view returns (address) {
    return LimitOrderLib.getGMTokenManager();
  }

  /**
   * @notice Get OndoIDRegistry address
   * @return OndoIDRegistry contract address
   */
  function ondoIDRegistry() external view returns (address) {
    return LimitOrderLib.getOndoIDRegistry();
  }

  /**
   * @notice Get GM identifier for OndoIDRegistry operations
   * @return GM identifier address
   */
  function gmIdentifier() external pure returns (address) {
    return LimitOrderLib.GM_IDENTIFIER;
  }

  /**
   * @notice Get maximum order duration
   * @return Maximum duration (in seconds) that an order expiry can be set into the future
   */
  function maxOrderDuration() external view returns (uint256) {
    return LimitOrderLib.getMaxOrderDuration();
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Admin Functions
  // ─────────────────────────────────────────────────────────────────────────────

  /**
   * @notice Pause the contract (requires PAUSER_ROLE)
   * @dev    When paused, order creation and execution are blocked
   */
  function pause() external onlyRole(PAUSER_ROLE) {
    LimitOrderLib.pause();
  }

  /**
   * @notice Unpause the contract (requires UNPAUSER_ROLE)
   */
  function unpause() external onlyRole(UNPAUSER_ROLE) {
    LimitOrderLib.unpause();
  }

  /**
   * @notice Retrieve tokens from the contract (requires TOKEN_RETRIEVER_ROLE)
   * @param  token     Address of token to retrieve
   * @param  recipient Address to send tokens to
   * @param  amount    Amount of tokens to retrieve
   * @dev    Used to recover stuck tokens or excess funds
   */
  function retrieveTokens(
    address token,
    address recipient,
    uint256 amount
  ) external onlyRole(TOKEN_RETRIEVER_ROLE) {
    LimitOrderLib.retrieveTokens(token, recipient, amount);
  }

  /**
   * @notice Set maximum order duration (requires DEFAULT_ADMIN_ROLE)
   * @param  duration Maximum duration (in seconds) that an order expiry can be set into the future
   */
  function setMaxOrderDuration(
    uint256 duration
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    LimitOrderLib.setMaxOrderDuration(duration);
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Modifiers
  // ─────────────────────────────────────────────────────────────────────────────

  /// Reverts if the contract is paused
  modifier whenNotPaused() {
    LimitOrderLib.whenNotPaused();
    _;
  }

  /**
   * @notice Reverts if the user is not registered in OndoIDRegistry
   * @param  user The address to check compliance for
   */
  modifier onlyCompliant(address user) {
    LimitOrderLib.checkCompliance(user);
    _;
  }
}
