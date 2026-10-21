// SPDX-License-Identifier: BUSL-1.1
/*

      ▄▄█████████▄
   ╓██▀└ ,╓▄▄▄, '▀██▄
  ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,
 ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,
██  ██ ╒█▀'   ╙█▌ ╙█▌ ██     ▐██      ███  █████,  ██  ██▌    └██▌  ██▌     └██▌
██ ▐█▌ ██      ╟█  █▌ ╟█     ██▌      ▐██  ██ └███ ██  ██▌     ╟██ j██       ╟██
╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
 ██ "██, ╙▀▀███████████⌐      ╙████████▀   ██     ╙██  ███████▀▀     ╙███████▀`
  ██▄ ╙▀██▄▄▄▄▄,,,                ¬─                                    '─¬
   ╙▀██▄ '╙╙╙▀▀▀▀▀▀▀▀
      ╙▀▀██████R⌐

 */
pragma solidity 0.8.24;

import "contracts/globalMarkets/tokenManager/IGMTokenManager.sol";
import "contracts/xManager/interfaces/IOndoIDRegistry.sol";
import "contracts/limit-order/IGMTokenLimitOrder.sol";

/**
 * @title  LimitOrderStorage
 * @author Ondo Finance
 * @notice EIP-7201 namespaced storage layout for the GMTokenLimitOrder contract.
 */
library LimitOrderStorage {
  struct Layout {
    IGMTokenManager gmTokenManager;
    IOndoIDRegistry ondoIDRegistry;
    IGMTokenLimitOrder.LimitOrder[] orders;
    uint256 maxOrderDuration;
    bool paused;
  }

  // ─────────────────────────────────────────────────────────────────────────────
  // Storage
  // ─────────────────────────────────────────────────────────────────────────────

  string internal constant STORAGE_ID = "ondo.limit.order.storage";
  bytes32 internal constant STORAGE_POSITION =
    keccak256(
      abi.encode(uint256(keccak256(abi.encodePacked(STORAGE_ID))) - 1)
    ) & ~bytes32(uint256(0xff));

  function layout() internal pure returns (Layout storage s) {
    bytes32 position = STORAGE_POSITION;
    assembly {
      s.slot := position
    }
  }
}
