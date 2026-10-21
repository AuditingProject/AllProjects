// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IYBUSD} from "./interface/IYBUSD.sol";
import {IBridgeMiddleware} from "./interface/IBridgeMiddleware.sol";

interface ITetherToken {
    function approve(address _spender, uint256 _value) external;
}

contract YBUSDBridge is Ownable, Pausable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    error ZERO_ADDRESS();
    error ZERO_AMOUNT();
    error INVALID_TOKEN_ID();
    error INSUFFICIENT_BALANCE();

    // @dev Emitted when MintAndBridge L1 tx success. This doesn't mean that the conterpart L2 tx will success
    //  `canonicalTxHash` is the L2 tx hash, which can be used to check if the L2 tx is processed successfully.
    event MintAndBridge(
        address indexed sender,
        address indexed l2Recevier,
        uint256 amount,
        bytes32 canonicalTxHash
    );

    IERC20 public dai;
    IERC20 public usdt;
    IERC20 public usdc;
    IYBUSD public ybUSD;
    IBridgeMiddleware public bridgeMiddleware;

    /// @param _ybUSD ybUSD address
    /// @param _bridgeMiddleware bridgeMiddleware address
    constructor(
        address _dai,
        address _usdc,
        address _usdt,
        address _ybUSD,
        address _bridgeMiddleware
    ) Ownable(msg.sender) {
        if (
            _dai == address(0) ||
            _usdc == address(0) ||
            _usdt == address(0) ||
            _ybUSD == address(0) ||
            _bridgeMiddleware == address(0)
        ) {
            revert ZERO_ADDRESS();
        }

        dai = IERC20(_dai);
        usdc = IERC20(_usdc);
        usdt = IERC20(_usdt);
        ybUSD = IYBUSD(_ybUSD);
        bridgeMiddleware = IBridgeMiddleware(_bridgeMiddleware);
        dai.approve(address(ybUSD), type(uint256).max);
        ITetherToken(_usdt).approve(address(ybUSD), type(uint256).max);
        usdc.approve(address(ybUSD), type(uint256).max);
        // Approve the bridgeMiddleware to transfer ybUSD from this contract
        ybUSD.approve(address(bridgeMiddleware), type(uint256).max);
    }

    /// @dev Pause the contract
    function pause() external onlyOwner {
        dai.approve(address(ybUSD), 0);
        ITetherToken(address(usdt)).approve(address(ybUSD), 0);
        usdc.approve(address(ybUSD), 0);
        ybUSD.approve(address(bridgeMiddleware), 0);
        return _pause();
    }

    /// @dev Unpause the contract
    function unpause() external onlyOwner {
        dai.approve(address(ybUSD), type(uint256).max);
        ITetherToken(address(usdt)).approve(address(ybUSD), type(uint256).max);
        usdc.approve(address(ybUSD), type(uint256).max);
        ybUSD.approve(address(bridgeMiddleware), type(uint256).max);
        return _unpause();
    }

    /// Deposit DAI/USDC/USDT to mint ybUSD and bridge them to L2 within the same transaction
    ///
    /// @param _l2Receiver The receiver that will receive the minted tokens on L2
    /// @param _amount The amount of DAI/(USDC/USDT swapped to DAI) to deposit into the ybUSD contract
    /// @param _stableCoinType 0 = DAI, 1 = USDC, 2 = USDT
    /// @param _minAmountAccepted minimum Amount user like to accept when swapping USDC/USDT to DAI
    /// @param _l2GasLimit The estimated gas limit of the L2 tx
    /// @param _refundRecipient who can retreive if the L1 to L2 transfer failed
    /// @return canonicalTxHash The canonical L2 tx hash, which can be used to track the L2 tx status.
    function mintAndBridge(
        address _l2Receiver,
        uint256 _amount,
        uint128 _stableCoinType,
        uint256 _minAmountAccepted,
        uint256 _l2GasLimit,
        uint256 _l2GasPerPubdataByteLimit,
        address _refundRecipient
    )
        external
        payable
        whenNotPaused
        nonReentrant
        returns (bytes32 canonicalTxHash)
    {
        uint256 ybUSDAmount;
        if (_l2Receiver == address(0) || _refundRecipient == address(0)) {
            revert ZERO_ADDRESS();
        }
        if (
            _amount == 0 || _l2GasLimit == 0 || _l2GasPerPubdataByteLimit == 0
        ) {
            revert ZERO_AMOUNT();
        }
        if (_stableCoinType == 0) {
            if (dai.balanceOf(msg.sender) < _amount)
                revert INSUFFICIENT_BALANCE();
            dai.safeTransferFrom(msg.sender, address(this), _amount);
            ybUSDAmount = ybUSD.deposit(_amount);
        } else if (_stableCoinType == 1 || _stableCoinType == 2) {
            if (_minAmountAccepted == 0) {
                revert ZERO_AMOUNT();
            }
            if (_stableCoinType == 1) {
                if (usdc.balanceOf(msg.sender) < _amount)
                    revert INSUFFICIENT_BALANCE();
                usdc.safeTransferFrom(msg.sender, address(this), _amount);
            } else if (_stableCoinType == 2) {
                if (usdt.balanceOf(msg.sender) < _amount)
                    revert INSUFFICIENT_BALANCE();
                usdt.safeTransferFrom(msg.sender, address(this), _amount);
            }

            ybUSDAmount = ybUSD.swapAndDeposit(
                _stableCoinType,
                _amount,
                _minAmountAccepted
            );
        } else {
            revert INVALID_TOKEN_ID();
        }
        // Bridge the minted ybUSD to L2
        canonicalTxHash = bridgeMiddleware.bridge{value: msg.value}(
            _l2Receiver,
            address(ybUSD),
            ybUSDAmount,
            _l2GasLimit,
            _l2GasPerPubdataByteLimit,
            _refundRecipient
        );

        emit MintAndBridge(
            msg.sender,
            _l2Receiver,
            ybUSDAmount,
            canonicalTxHash
        );
    }
}
