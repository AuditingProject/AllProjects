// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IZkCro is IERC20 {
    function stake(address receiver, uint256 amount) external returns (uint256);
}
