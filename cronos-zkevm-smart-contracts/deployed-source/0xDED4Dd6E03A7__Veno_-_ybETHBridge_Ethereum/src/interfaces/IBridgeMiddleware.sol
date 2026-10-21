// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

interface IBridgeMiddleware {
    function bridgehub() external view returns (address);
    function bridge(
        address _l2Receiver,
        address _token,
        uint256 _amount,
        uint256 _l2GasLimit,
        uint256 _l2GasPerPubdataByteLimit,
        address _refundRecipient
    ) external payable returns (bytes32 canonicalTxHash);
}
