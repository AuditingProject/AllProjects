// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

interface IYBUSD is IERC20Metadata {
    function deposit(uint256 _amount) external returns (uint256);
    function swapAndDeposit(uint128 j, uint256 dx, uint256 min_dy) external returns (uint256);
}