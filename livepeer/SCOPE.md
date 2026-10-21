# livepeer — Immunefi scope

- Program: https://immunefi.com/bug-bounty/livepeer/scope/
- Max bounty: **$40,000**
- KYC required: **yes**
- Launched 2022-02-25, program updated 2026-09-10
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | up to $40,000 (10% of funds at risk) |
| Smart contract | High | up to $15,000 |
| Smart contract | Medium | $2,500 |
| Smart contract | Low | $1,000 |

## Assets in scope (23)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://arbiscan.io/address/0xD9dEd6f9959176F0A04dcf88a0d2306178A736a6#code | Governor |
| 2 | Smart contract | https://arbiscan.io/address/0xD8E8328501E9645d16Cf49539efC04f734606ee4#code | Controller |
| 3 | Smart contract | https://arbiscan.io/address/0x289ba1701C2F088cf0faf8B3705246331cB8A839#code | LivepeerToken |
| 4 | Smart contract | https://arbiscan.io/address/0xc20DE37170B45774e6CD3d2304017fc962f27252 | Minter |
| 5 | Smart contract | https://arbiscan.io/address/0x35Bcf3c30594191d53231E4FF333E8A770453e40#code | Bonding Manager (Proxy) |
| 6 | Smart contract | https://arbiscan.io/address/0xa8bB618B1520E284046F3dFc448851A1Ff26e41B#code | TicketBroker (Proxy) |
| 7 | Smart contract | https://arbiscan.io/address/0xdd6f56DcC28D3F5f27084381fE8Df634985cc39f#code | RoundsManager (Proxy) |
| 8 | Smart contract | https://arbiscan.io/address/0xC92d3A360b8f9e083bA64DE15d95Cf8180897431#code | ServiceRegistry (Proxy) |
| 9 | Smart contract | https://arbiscan.io/address/0xC45f6918F7Bcac7aBc8fe05302b3cDF39776cdeb#code | SortedDoublyLL (Library) |
| 10 | Smart contract | https://arbiscan.io/address/0x8bb50806D60c492c0004DAD5D9627DAA2d9732E6#code | PollCreator |
| 11 | Smart contract | https://arbiscan.io/address/0x10736ffaCe687658F88a46D042631d182C7757f7#code | MerkleSnapshot |
| 12 | Smart contract | https://arbiscan.io/address/0xfdb06109032AD3671a8f14f5f2E78f4B9E81b567#code | DelegatorPool (Implementation + clones) |
| 13 | Smart contract | https://arbiscan.io/address/0xd78b6bD09cd28A83cFb21aFa0DA95c685A6bb0B1#code | L2LPTDataCache |
| 14 | Smart contract | https://arbiscan.io/address/0x6D2457a4ad276000A615295f7A80F79E48CcD318#code | L2LPTGateway |
| 15 | Smart contract | https://arbiscan.io/address/0x148D5b6B4df9530c7C76A810bd1Cdf69EC4c2085#code | L2Migrator (Proxy) |
| 16 | Smart contract | https://etherscan.io/address/0x6A23F4940BD5BA117Da261f98aae51A8BFfa210A#code | L1Escrow |
| 17 | Smart contract | https://etherscan.io/address/0x1d24838b35A9c138Ac157A852e19e948aD6323D7#code | L1LPTDataCache |
| 18 | Smart contract | https://etherscan.io/address/0x6142f1C8bBF02E6A6bd074E8d564c9A5420a0676#code | L1LPTGateway |
| 19 | Smart contract | https://etherscan.io/address/0x8dDDB96CF36AC8860f1DE5C7c4698fd499FAB405#code | BridgeMinter |
| 20 | Smart contract | https://arbiscan.io/address/0x0B9C254837E72Ebe9Fe04960C43B69782E68169A | BondingVotes (Proxy) |
| 21 | Smart contract | https://arbiscan.io/address/0xf82C1FF415F1fCf582554fDba790E27019c8E8C4 | Treasury |
| 22 | Smart contract | https://arbiscan.io/address/0xcFE4E2879B786C3aa075813F0E364bb5acCb6aa0 | LivepeerGovernor (Proxy) |
| 23 | Smart contract | https://etherscan.io/address/0x2a69191B43c9DB47C927bD7287F9C93838d07759#code | L1Migrator |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `arbitrum-lpt-bridge/` | https://github.com/livepeer/arbitrum-lpt-bridge | main | f17ebc5 2026-07-07 docs: clarify _newDelegate is ignored for pool-backed delegates (#100) | program codebase link |
| `protocol/` | https://github.com/livepeer/protocol | origin/confluence | 962107f 2023-09-08 deployments: Upgrade TicketBroker on arbitrumMainnet | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **23 of 23** in-scope addresses have full source on disk.

Sources: sourcify (18), blockscout:eth.blockscout.com (5).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xD9dEd6f99591` | Governor | `contracts/governance/Governor.sol:Governor` | `deployed-source/0xD9dEd6f99591__Governor/` |
| `0xD8E8328501E9` | Controller | `contracts/Controller.sol:Controller` | `deployed-source/0xD8E8328501E9__Controller/` |
| `0x289ba1701C2F` | LivepeerToken | `contracts/L2/token/LivepeerToken.sol:LivepeerToken` | `deployed-source/0x289ba1701C2F__LivepeerToken/` |
| `0xc20DE37170B4` | Minter | `contracts/token/Minter.sol:Minter` | `deployed-source/0xc20DE37170B4__Minter/` |
| `0x35Bcf3c30594` | Bonding Manager (Proxy) | `contracts/ManagerProxy.sol:ManagerProxy` | `deployed-source/0x35Bcf3c30594__Bonding_Manager_Proxy/` |
| `0xa8bB618B1520` | TicketBroker (Proxy) | `contracts/ManagerProxy.sol:ManagerProxy` | `deployed-source/0xa8bB618B1520__TicketBroker_Proxy/` |
| `0xdd6f56DcC28D` | RoundsManager (Proxy) | `contracts/ManagerProxy.sol:ManagerProxy` | `deployed-source/0xdd6f56DcC28D__RoundsManager_Proxy/` |
| `0xC92d3A360b8f` | ServiceRegistry (Proxy) | `contracts/ManagerProxy.sol:ManagerProxy` | `deployed-source/0xC92d3A360b8f__ServiceRegistry_Proxy/` |
| `0xC45f6918F7Bc` | SortedDoublyLL (Library) | `contracts/libraries/SortedDoublyLL.sol:SortedDoublyLL` | `deployed-source/0xC45f6918F7Bc__SortedDoublyLL_Library/` |
| `0x8bb50806D60c` | PollCreator | `contracts/polling/PollCreator.sol:PollCreator` | `deployed-source/0x8bb50806D60c__PollCreator/` |
| `0x10736ffaCe68` | MerkleSnapshot | `contracts/snapshots/MerkleSnapshot.sol:MerkleSnapshot` | `deployed-source/0x10736ffaCe68__MerkleSnapshot/` |
| `0xfdb06109032A` | DelegatorPool (Implementation + clones) | `contracts/L2/pool/DelegatorPool.sol:DelegatorPool` | `deployed-source/0xfdb06109032A__DelegatorPool_Implementation_clones/` |
| `0xd78b6bD09cd2` | L2LPTDataCache | `contracts/L2/gateway/L2LPTDataCache.sol:L2LPTDataCache` | `deployed-source/0xd78b6bD09cd2__L2LPTDataCache/` |
| `0x6D2457a4ad27` | L2LPTGateway | `contracts/L2/gateway/L2LPTGateway.sol:L2LPTGateway` | `deployed-source/0x6D2457a4ad27__L2LPTGateway/` |
| `0x148D5b6B4df9` | L2Migrator (Proxy) | `contracts/proxy/ManagerProxy.sol:ManagerProxy` | `deployed-source/0x148D5b6B4df9__L2Migrator_Proxy/` |
| `0x6A23F4940BD5` | L1Escrow | `L1Escrow` | `deployed-source/0x6A23F4940BD5__L1Escrow/` |
| `0x1d24838b35A9` | L1LPTDataCache | `L1LPTDataCache` | `deployed-source/0x1d24838b35A9__L1LPTDataCache/` |
| `0x6142f1C8bBF0` | L1LPTGateway | `L1LPTGateway` | `deployed-source/0x6142f1C8bBF0__L1LPTGateway/` |
| `0x8dDDB96CF36A` | BridgeMinter | `BridgeMinter` | `deployed-source/0x8dDDB96CF36A__BridgeMinter/` |
| `0x0B9C254837E7` | BondingVotes (Proxy) | `contracts/ManagerProxy.sol:ManagerProxy` | `deployed-source/0x0B9C254837E7__BondingVotes_Proxy/` |
| `0xf82C1FF415F1` | Treasury | `contracts/treasury/Treasury.sol:Treasury` | `deployed-source/0xf82C1FF415F1__Treasury/` |
| `0xcFE4E2879B78` | LivepeerGovernor (Proxy) | `contracts/ManagerProxy.sol:ManagerProxy` | `deployed-source/0xcFE4E2879B78__LivepeerGovernor_Proxy/` |
| `0x2a69191B43c9` | L1Migrator | `L1Migrator` | `deployed-source/0x2a69191B43c9__L1Migrator/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://arbiscan.io/address/0xD9dEd6f9959176F0A04dcf88a0d2306178A736a6#code — Governor
- [Smart contract] https://arbiscan.io/address/0xD8E8328501E9645d16Cf49539efC04f734606ee4#code — Controller
- [Smart contract] https://arbiscan.io/address/0x289ba1701C2F088cf0faf8B3705246331cB8A839#code — LivepeerToken
- [Smart contract] https://arbiscan.io/address/0xc20DE37170B45774e6CD3d2304017fc962f27252 — Minter
- [Smart contract] https://arbiscan.io/address/0x35Bcf3c30594191d53231E4FF333E8A770453e40#code — Bonding Manager (Proxy)
- [Smart contract] https://arbiscan.io/address/0xa8bB618B1520E284046F3dFc448851A1Ff26e41B#code — TicketBroker (Proxy)
- [Smart contract] https://arbiscan.io/address/0xdd6f56DcC28D3F5f27084381fE8Df634985cc39f#code — RoundsManager (Proxy)
- [Smart contract] https://arbiscan.io/address/0xC92d3A360b8f9e083bA64DE15d95Cf8180897431#code — ServiceRegistry (Proxy)
- [Smart contract] https://arbiscan.io/address/0xC45f6918F7Bcac7aBc8fe05302b3cDF39776cdeb#code — SortedDoublyLL (Library)
- [Smart contract] https://arbiscan.io/address/0x8bb50806D60c492c0004DAD5D9627DAA2d9732E6#code — PollCreator
- [Smart contract] https://arbiscan.io/address/0x10736ffaCe687658F88a46D042631d182C7757f7#code — MerkleSnapshot
- [Smart contract] https://arbiscan.io/address/0xfdb06109032AD3671a8f14f5f2E78f4B9E81b567#code — DelegatorPool (Implementation + clones)
- [Smart contract] https://arbiscan.io/address/0xd78b6bD09cd28A83cFb21aFa0DA95c685A6bb0B1#code — L2LPTDataCache
- [Smart contract] https://arbiscan.io/address/0x6D2457a4ad276000A615295f7A80F79E48CcD318#code — L2LPTGateway
- [Smart contract] https://arbiscan.io/address/0x148D5b6B4df9530c7C76A810bd1Cdf69EC4c2085#code — L2Migrator (Proxy)
- [Smart contract] https://etherscan.io/address/0x6A23F4940BD5BA117Da261f98aae51A8BFfa210A#code — L1Escrow
- [Smart contract] https://etherscan.io/address/0x1d24838b35A9c138Ac157A852e19e948aD6323D7#code — L1LPTDataCache
- [Smart contract] https://etherscan.io/address/0x6142f1C8bBF02E6A6bd074E8d564c9A5420a0676#code — L1LPTGateway
- [Smart contract] https://etherscan.io/address/0x8dDDB96CF36AC8860f1DE5C7c4698fd499FAB405#code — BridgeMinter
- [Smart contract] https://arbiscan.io/address/0x0B9C254837E72Ebe9Fe04960C43B69782E68169A — BondingVotes (Proxy)
- [Smart contract] https://arbiscan.io/address/0xf82C1FF415F1fCf582554fDba790E27019c8E8C4 — Treasury
- [Smart contract] https://arbiscan.io/address/0xcFE4E2879B786C3aa075813F0E364bb5acCb6aa0 — LivepeerGovernor (Proxy)
- [Smart contract] https://etherscan.io/address/0x2a69191B43c9DB47C927bD7287F9C93838d07759#code — L1Migrator

## Known issues (4) — not eligible

- LivepeerGovernor allows proposals with zero opinionated votes to succeed, and proposals with 1 wei "against" / 0 "for" votes can succeed if quorum is met via "abstain" votes. (https://github.com/livepeer/protocol/issues/654)
- MixinReserve.claimableReserve() can produce per-claimant reserve caps above or below the fair R/N allocation when the live transcoder pool size and the current-round active set diverge mid-round (e.g. during resignation or activation). Overclaim is bounded by the ticket face value. No theft is possible. (https://github.com/livepeer/protocol/issues/656)
- Winning tickets can settle for less than their face value once the recipient’s reserve is exhausted. (https://github.com/livepeer/protocol/issues/663)
- Missing freshness check in L2LPTDataCache.finalizeCacheTotalSupply leads to underpaid (or overpaid) rewards in the next rounds. (https://github.com/livepeer/protocol/issues/664)

## Impacts in scope

**Smart contract — Critical**
- Insolvency
- Unintended issuance of LPT on L1
- Unexpected calls to functions that should only be called by authorized addresses (i.e. Governor)
- Direct manipulation treasury voting that manipulate the outcome of the vote resulting in drained funds from the treasury
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds

**Smart contract — High**
- Any unexpected balance inflation when transitioning between L1 and L2
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds

**Smart contract — Low**
- Smart contract has unexpected behavior but doesn’t lose value

**Smart contract — Medium**
- Unbounded gas consumption or any other gas drainage
- Manipulation of protocol governance vote or treasury voting that does not effect the result of the vote
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas

## Out of scope (from the program page)

- Best practice critiques
  - Oracle failure/manipulation
  - Consensus failure

- Client usability bugs not effecting theft of user value or keys

## Notes on assets

Only the contracts in the Assets in Scope table on the Scope tab are considered in-scope of the bug bounty program. Target (implementation) contracts are not listed because they change on upgrade. They can be looked up in the Controller contract listed in that table. Reports are evaluated against the implementation live at the time of submission.

Livepeer migrated to Arbitrum One under LIP-73, and the L1 protocol contracts on Ethereum mainnet have been paused since February 2022 and remain paused. L1 staking, round progression and ticket redemption are halted, so no exploit path can execute against these contracts.

Critical vulnerabilities in the go-livepeer client were recently added to the scope of the program. This scope also includes any direct livepeer hosted and developed dependencies within go-livepeer that lead to the direct critical exploits listed in the program.

## Notes on impacts

## Repeatable attack limitations

If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward.

The amount of funds at risk will be calculated with the impact of the first attack being at **100**% and then a reduction of **100**% from the amount of the first attack for every **24** hours the attack needs for subsequent attacks from the first attack, rounded down.

## Rewards / payout terms

$63

## Program overview

## Important Note

***The go-livepeer node client is temporarily out of scope while its asset definition and reward structure are revised. Reports submitted before the pause are unaffected and will be triaged and paid as normal. The client scope will be announced on Immunefi's Discord when it returns.***

---

Livepeer is a decentralized video streaming network built on the Ethereum blockchain. The Livepeer network already includes over 70,000 GPUs, which is enough aggregated power to encode all of the video streaming through Twitch, YouTube and Facebook combined. Through the power of open source software, the harnessing of underutilized resources like compute and bandwidth, and the use of cryptoeconomic incentives for bootstrapping and participation, there is an opportunity to deliver an infrastructure that can power video streaming applications at a highly efficient price, and infinite scale.

For more information about Livepeer, please visit [https://livepeer.org/](https://livepeer.org/).  

This bug bounty program is focused on their smart contracts and infrastructure client and is focused on preventing:

  - Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
  - Permanent freezing of funds
  - Insolvency
  - Unintended issuance of LPT on L1
  - Unexpected calls to functions that should only be called by authorized addresses (i.e. Governor)
  - Key theft
  - Unauthorized transaction signing

