// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.21;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import "./interfaces/IAirdrop.sol";

/// @title Airdrop contract
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
/// @notice Airdrops tokens according to <address,amount> pair used to create merkle root
contract Airdrop is IAirdrop, Ownable2Step, Initializable, UUPSUpgradeable {
    using SafeERC20 for IERC20;
    /// @dev See {IAirdrop-token}
    address public immutable override token;
    /// @dev See {IAirdrop-timestamp}
    mapping(uint256 => uint256) public override timestamp;
    /// @dev See {IAirdrop-merkleRoot}
    mapping(uint256 => bytes32) public override merkleRoot;
    /// @dev See {IAirdrop-isClaimed}
    mapping(address => mapping(uint256 => mapping(uint256 => bool))) public override isClaimed;
    /// @dev See {IAirdrop-totalClaimedByEpoch}
    mapping(uint256 => uint256) public override totalClaimedByEpoch;
    /// @dev See {IAirdrop-totalClaimed}
    uint256 public override totalClaimed;
    /// @dev See {IAirdrop-isPaused}
    bool public override isPaused;

    /// @dev Initializes the contract by setting `token` and `merkleRoot`.
    constructor(address token_) Ownable() {
        token = token_;
        isPaused = true;
        _disableInitializers(); // disable initialization when not using as an upgradeable contract
    }

    /// @dev See {IAirdrop-initialize}
    function initialize()
        public
        virtual
        override
        initializer
    {
        _transferOwnership(msg.sender);
        isPaused = true;
    }

    /// @dev See {IAirdrop-claim}
    function claim(uint256 amount, uint256 epoch, bytes32[] calldata proof)
        public
        virtual
        override
    {
        address account = msg.sender;
        uint256 _timestamp = timestamp[epoch];
        bytes32 _merkleRoot = merkleRoot[epoch];
        if (_merkleRoot == bytes32(0)) revert MerkleRootNotSet();
        if (isPaused) revert Paused();
        if (isClaimed[account][amount][epoch]) revert AlreadyClaimed();
        if (_timestamp >= block.timestamp) revert InvalidTimestamp();

        // Verify the merkle proof.
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(account, amount))));
        if (!MerkleProof.verify(proof, _merkleRoot, leaf)) revert InvalidProof();

        // Mark it claimed and send the token.
        isClaimed[account][amount][epoch] = true;
        IERC20(token).safeTransfer(account, amount);

        totalClaimedByEpoch[epoch] += amount;
        totalClaimed += amount;

        emit Claimed(account, amount, epoch, totalClaimedByEpoch[epoch], totalClaimed);
    }

    /// @dev Do not accept any Ether
    receive() external payable {
        revert();
    }

    //***Admin Functions***//

    /// @dev See {IAirdrop-updateRoot}
    function updateRoot(uint256 epoch, bytes32 merkleRoot_, uint256 timestamp_)
        external
        virtual
        override
        onlyOwner
    {
        merkleRoot[epoch] = merkleRoot_;
        timestamp[epoch] = timestamp_;

        emit RootUpdated(epoch, merkleRoot_, timestamp_, totalClaimedByEpoch[epoch], totalClaimed);
    }

    /// @dev See {IAirdrop-withdraw}
    function withdraw(address token_, uint256 amount_, address receiver_)
        external
        virtual
        override
        onlyOwner
    {
        IERC20(token_).safeTransfer(receiver_, amount_);
    }

    /// @dev See {IAirdrop-pause}
    function pause(bool isPaused_)
        external
        virtual
        override
        onlyOwner
    {
        isPaused = isPaused_;

        emit PauseStatus(isPaused_, totalClaimed);
    }

    /// @dev See {UUPSUpgradeable-_authorizeUpgrade}
    function _authorizeUpgrade(address) internal virtual override onlyOwner {}
}