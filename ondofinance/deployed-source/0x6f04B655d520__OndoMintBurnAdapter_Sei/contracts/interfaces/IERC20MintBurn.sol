// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

interface IERC20MintBurn {
  function mint(address receiver, uint256 amount) external;

  function burn(uint256 amount) external;
}
