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
pragma solidity ^0.8.20;

import {OFTMsgCodec} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/libs/OFTMsgCodec.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IOFT, OFTCore} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTCore.sol";
import {Origin} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oapp/OAppReceiver.sol";
import {EfficientRateLimiter} from "contracts/layerZeroBridge/EfficientRateLimiter.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {IERC20MintBurn} from "contracts/interfaces/IERC20MintBurn.sol";

/**
 * @title CUSTOM OFTAdapter Contract
 * @dev OFTAdapter is a contract that adapts an ERC-20 token to the OFT functionality.
 *
 * @dev For existing ERC20 tokens, this can be used to convert the token to crosschain compatibility.
 * @dev WARNING: ONLY 1 of these should exist for a given global mesh,
 * unless you make a NON-default implementation of OFT and needs to be done very carefully.
 * @dev WARNING: The default OFTAdapter implementation assumes LOSSLESS transfers, ie. 1 token in, 1 token out.
 * IF the 'innerToken' applies something like a transfer fee, the default will NOT work...
 * a pre/post balance check will need to be done to calculate the amountSentLD/amountReceivedLD.
 */
abstract contract MintBurnAdapter is OFTCore, EfficientRateLimiter, Pausable {
  using SafeERC20 for IERC20;

  event PauserStatusChange(address pauserAddress, bool newStatus);

  IERC20 internal immutable innerToken;
  mapping(address => bool) public pausers;

  /**
   * @dev Constructor for the OFTAdapter contract.
   * @param _token The address of the ERC-20 token to be adapted.
   * @param _lzEndpoint The LayerZero endpoint address.
   * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
   */
  constructor(
    address _token,
    address _lzEndpoint,
    address _delegate
  ) OFTCore(IERC20Metadata(_token).decimals(), _lzEndpoint, _delegate) {
    innerToken = IERC20(_token);
  }

  /**
   * @dev Retrieves the address of the underlying ERC20 implementation.
   * @return The address of the adapted ERC-20 token.
   *
   * @dev In the case of OFTAdapter, address(this) and erc20 are NOT the same contract.
   */
  function token() external view returns (address) {
    return address(innerToken);
  }

  /**
   * @notice Indicates whether the OFT contract requires approval of the 'token()' to send.
   * @return requiresApproval Needs approval of the underlying token implementation.
   *
   * @dev In the case of default OFTAdapter, approval is required.
   * @dev In non-default OFTAdapter contracts with something like mint and burn privileges, it would NOT need approval.
   */
  function approvalRequired() external pure virtual returns (bool) {
    return true;
  }

  /**
   * @notice Sets the cross-chain tx rate limits for specific endpoints based on provided configurations.
   * It allows configuration of rate limits either for outbound or inbound directions.
   * This method is designed to be called by contract admins for updating the system's rate limiting behavior.
   *
   * @param _rateLimitConfigs An array of `RateLimitConfig` structs that specify the new rate limit settings.
   * Each struct includes an endpoint ID, the limit value, and the window duration.
   * @param direction The direction (`Outbound` or `Inbound`) specifies whether the endpoint ID passed should be considered a dstEid or srcEid.
   * This parameter determines which set of rate limits (outbound or inbound) will be updated for each endpoint.
   */
  function setRateLimits(
    RateLimitConfig[] calldata _rateLimitConfigs,
    RateLimitDirection direction
  ) external onlyOwner {
    _setRateLimits(_rateLimitConfigs, direction);
  }

  /**
   * Enables or disables an address from having pausing privileges.
   * @param _pauser The address to change the pauser privileges.
   * @param _status Boolean to indicate of the _pauser has privileges or not.
   */
  function setPauser(address _pauser, bool _status) public onlyOwner {
    pausers[_pauser] = _status;

    emit PauserStatusChange(_pauser, _status);
  }

  /**
   * Pauses the contract which will prevent the _credit or _debit functions from being called.
   */
  function pause() external {
    require(pausers[msg.sender], "Adapter: caller is not a pauser");
    _pause();
  }

  /**
   * Unpauses the contract which will allow _credit and _debit to be called.
   */
  function unpause() external onlyOwner {
    _unpause();
  }

  /**
   * @dev Burns tokens from the sender's specified balance, ie. pull method.
   * @param from The address where tokens will be burned from.
   * @param _amountLD The amount of tokens to send in local decimals.
   * @param _minAmountLD The minimum amount to send in local decimals.
   * @param _dstEid The destination chain ID.
   * @return amountSentLD The amount sent in local decimals.
   * @return amountReceivedLD The amount received in local decimals on the remote chain.
   *
   * @dev msg.sender will need to approve this _amountLD of tokens to be transfered to the adapter contract address.
   * @dev WARNING: The default OFTAdapter implementation assumes LOSSLESS transfers, ie. 1 token in, 1 token out.
   * IF the 'innerToken' applies something like a transfer fee, the default will NOT work...
   * a pre/post balance check will need to be done to calculate the amountReceivedLD.
   */
  function _debit(
    address from,
    uint256 _amountLD,
    uint256 _minAmountLD,
    uint32 _dstEid
  )
    internal
    virtual
    override
    whenNotPaused
    returns (uint256 amountSentLD, uint256 amountReceivedLD)
  {
    _checkAndUpdateRateLimit(_dstEid, _amountLD, RateLimitDirection.Outbound);
    (amountSentLD, amountReceivedLD) = _debitView(
      _amountLD,
      _minAmountLD,
      _dstEid
    );

    innerToken.safeTransferFrom(from, address(this), amountSentLD);
    IERC20MintBurn(address(innerToken)).burn(amountSentLD);
  }

  /**
   * @dev Credits tokens to the specified address.
   * @param _to The address to credit the tokens to.
   * @param _amountLD The amount of tokens to credit in local decimals.
   * @dev _srcEid The source chain ID.
   * @return amountReceivedLD The amount of tokens ACTUALLY received in local decimals.
   *
   * @dev WARNING: The default OFTAdapter implementation assumes LOSSLESS transfers, ie. 1 token in, 1 token out.
   * IF the 'innerToken' applies something like a transfer fee, the default will NOT work...
   * a pre/post balance check will need to be done to calculate the amountReceivedLD.
   */
  function _credit(
    address _to,
    uint256 _amountLD,
    uint32 _srcEid
  ) internal virtual override whenNotPaused returns (uint256 amountReceivedLD) {
    // Check and update the rate limit based on the source endpoint ID (srcEid) and the amount in local decimals from the message.
    _checkAndUpdateRateLimit(_srcEid, _amountLD, RateLimitDirection.Inbound);
    // @dev Mint the tokens to the recipient.
    IERC20MintBurn(address(innerToken)).mint(_to, _amountLD);
    // @dev In the case of NON-default OFTAdapter, the amountLD MIGHT not be == amountReceivedLD.
    return _amountLD;
  }
}
