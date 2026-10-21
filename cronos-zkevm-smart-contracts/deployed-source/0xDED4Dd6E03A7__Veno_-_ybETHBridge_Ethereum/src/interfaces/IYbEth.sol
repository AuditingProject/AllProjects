// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IYbEth is IERC20Metadata {
    function stake(address receiver) external payable returns (uint256);
    function token2UnbondRequest(uint256 tokenId)
        external
        view
        returns (
            uint128 unlockStartTime,
            uint128 unlockEndTime,
            uint256 shareAmount,
            uint256 exchangeRate,
            uint256 batchNo
        );
    function EXCHANGE_RATE_DECIMAL() external view returns (uint8);
}
