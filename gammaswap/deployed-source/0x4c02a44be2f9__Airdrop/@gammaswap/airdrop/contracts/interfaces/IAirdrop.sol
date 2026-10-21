// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.21;

/// @title Interface for Airdrop contract
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
interface IAirdrop {

    error AlreadyClaimed();
    error InvalidProof();
    error InvalidTimestamp();
    error MerkleRootNotSet();
    error Paused();

    /// @dev This event is triggered whenever a call to claim() succeeds.
    event Claimed(address indexed account, uint256 amount, uint256 indexed epoch, uint256 totalClaimedByEpoch, uint256 totalClaimed);
    /// @dev This event is triggered when merkle root gets updated for an epoch
    event RootUpdated(uint256 indexed epoch, bytes32 merkleRoot, uint256 timestamp, uint256 totalClaimedByEpoch, uint256 totalClaimed);
    /// @dev This event is triggered when airdrop is paused
    event PauseStatus(bool isPaused, uint256 totalClaimed);

    /// @dev Initialize contract with merkleRoot when used as an upgradeable contract
    function initialize() external;

    /// @return address of the token distributed by this contract.
    function token() external view returns (address);

    /// @dev Returns the merkle root of the merkle tree containing account balances available to claim.
    /// @param epoch - epoch number of merkle root
    /// @return merkle root for epoch
    function merkleRoot(uint256 epoch) external view returns (bytes32);

    /// @dev Returns the timestamp mapped to the epoch.
    /// @notice Claims can happen at or after this timestamp
    /// @param epoch - epoch number for timestamp
    /// @return timestamp mapped to the epoch
    function timestamp(uint256 epoch) external view returns (uint256);

    /// @dev Returns true if the address has been marked claimed.
    /// @param account - address to check
    /// @param amount - amount address is set up to claim at epoch
    /// @param epoch - epoch address is set up to claim amount
    /// @return true if address has already claimed, false otherwise
    function isClaimed(address account, uint256 amount, uint256 epoch) external view returns (bool);

    /// @dev Claim the given amount of the token to the given address. Reverts if the inputs are invalid.
    /// @notice only claims for msg.sender
    /// @param amount - amount to claim
    /// @param epoch - epoch claim is for
    /// @param proof - merkle proof to validate claim
    function claim(uint256 amount, uint256 epoch, bytes32[] calldata proof) external;

    /// @dev Update merkle root hash. Should require authentication
    /// @param _epoch - epoch to set merkle root for
    /// @param _merkleRoot - merkle root for epoch
    /// @param _timestamp - timestamp after which epoch is activated
    function updateRoot(uint256 _epoch, bytes32 _merkleRoot, uint256 _timestamp) external;

    /// @dev Withdraw tokens deposited into the contract. Should require authentication
    /// @param token_ - address of token to withdraw
    /// @param amount_ - amount of token to withdraw
    /// @param receiver_ - recipient of token amount withdrawn
    function withdraw(address token_, uint256 amount_, address receiver_) external;

    /// @dev Returns how much has already been claimed by epoch
    /// @param epoch - epoch number total claims is for
    /// @return total amount of airdrop claimed for epoch
    function totalClaimedByEpoch(uint256 epoch) external view returns (uint256);

    /// @dev Returns how much has already been claimed by all epochs
    /// @return total claimed from all epochs
    function totalClaimed() external view returns (uint256);

    /// @dev Pause or unpause airdrop. If paused, no one can claim. Should require authentication
    /// @param isPaused - set to true to prevent anyone from claiming
    function pause(bool isPaused) external;

    /// @dev Check if airdrop is paused
    /// @return true if airdrop is paused, false otherwise
    function isPaused() external view returns (bool);
}