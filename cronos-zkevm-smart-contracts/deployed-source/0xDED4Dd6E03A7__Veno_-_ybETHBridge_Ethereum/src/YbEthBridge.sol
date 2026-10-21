// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";

import {IYbEth} from "./interfaces/IYbEth.sol";
import {IBridgeMiddleware} from "./interfaces/IBridgeMiddleware.sol";
import {LibSanitize} from "./libs/LibSanitize.sol";

contract YbEthBridge is Ownable, Pausable, ReentrancyGuard {
    /// @dev Indicates that the ETH value is insufficient
    error InsufficientEthValue();

    // @dev Emitted when MintAndBridge L1 tx success. This not mean that the conterpart L2 tx will success
    //  `canonicalTxHash` is the L2 tx hash, which can be used to check if the L2 tx is processed successfully.
    event MintAndBridge(address indexed sender, address indexed l2Recevier, uint256 amount, bytes32 canonicalTxHash);

    IYbEth public ybEth;
    IBridgeMiddleware public bridgeMiddleware;

    /// @param _ybEth the ybEth address
    /// @param _bridgeMiddleware the bridgeMiddleware address
    constructor(address _ybEth, address _bridgeMiddleware) Ownable(msg.sender) {
        LibSanitize.notZeroAddress(_ybEth);
        LibSanitize.notZeroAddress(_bridgeMiddleware);

        ybEth = IYbEth(_ybEth);
        bridgeMiddleware = IBridgeMiddleware(_bridgeMiddleware);
    }

    /// @dev Pause the contract
    function pause() external onlyOwner {
        return _pause();
    }

    /// @dev Unpause the contract
    function unpause() external onlyOwner {
        return _unpause();
    }

    /// Deposite ETH to mint ybETH and bridge them to L2 within the same transaction
    ///
    /// @param _l2Receiver The receiver that will receive the minted tokens on L2
    /// @param _amount The amount of ETH to stake to the ybEth contract
    /// @param _l2GasLimit The estimated gas limit of the L2 tx
    /// @return canonicalTxHash The canonical L2 tx hash, which can be used to track the L2 tx status.
    function mintAndBridge(
        address _l2Receiver,
        uint256 _amount,
        uint256 _l2GasLimit,
        uint256 _l2GasPerPubdataByteLimit,
        address _refundRecipient
    ) external payable whenNotPaused nonReentrant returns (bytes32 canonicalTxHash) {
        LibSanitize.notZeroAddress(_l2Receiver);
        LibSanitize.notNullValue(_amount);
        LibSanitize.notNullValue(_l2GasLimit);
        LibSanitize.notNullValue(_l2GasPerPubdataByteLimit);
        LibSanitize.notZeroAddress(_refundRecipient);

        if (msg.value <= _amount) {
            revert InsufficientEthValue();
        }

        // Mint ybETH token to this contract by staking ETH to the YbEth contract
        uint256 ybEthAmount = ybEth.stake{value: _amount}(address(this));
        // Approve the bridgeMiddleware to transfer the ybETH from this contract
        ybEth.approve(address(bridgeMiddleware), ybEthAmount);

        // The remaining ETH value is used for paying the L2 tx gas fee
        uint256 l2GasFeeInEth = msg.value - _amount;

        // Bridge the minted ybETH to L2
        canonicalTxHash = bridgeMiddleware.bridge{value: l2GasFeeInEth}(
            _l2Receiver, address(ybEth), ybEthAmount, _l2GasLimit, _l2GasPerPubdataByteLimit, _refundRecipient
        );

        emit MintAndBridge(msg.sender, _l2Receiver, ybEthAmount, canonicalTxHash);
    }
}
