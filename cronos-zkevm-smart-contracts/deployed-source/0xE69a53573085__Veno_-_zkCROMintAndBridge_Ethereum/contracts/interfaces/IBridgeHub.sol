// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IL1SharedBridge} from "./IL1SharedBridge.sol";

// Copy from https://github.com/matter-labs/era-contracts/blob/d89e406cd20c6d6e9052ba2321334b71ef53c54e/l1-contracts/contracts/bridgehub/IBridgehub.sol
// and remove some functions
struct L2TransactionRequestDirect {
    uint256 chainId;
    uint256 mintValue;
    address l2Contract;
    uint256 l2Value;
    bytes l2Calldata;
    uint256 l2GasLimit;
    uint256 l2GasPerPubdataByteLimit;
    bytes[] factoryDeps;
    address refundRecipient;
}

interface IBridgehub {
    function sharedBridge() external view returns (IL1SharedBridge);

    function requestL2TransactionDirect(
        L2TransactionRequestDirect calldata _request
    ) external payable returns (bytes32 canonicalTxHash);
}
