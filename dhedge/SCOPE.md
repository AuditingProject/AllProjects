# dhedge — Immunefi scope

- Program: https://immunefi.com/bug-bounty/dhedge/scope/
- Max bounty: **$50,000**
- KYC required: **no**
- Launched 2021-11-09, program updated 2026-09-23
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $1,000 – $50,000 (0.1% of funds at risk) |

## Assets in scope (7)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://polygonscan.com/address/0xfdc7b8bFe0DD3513Cc669bB8d601Cb83e2F69cB0 | PoolFactory and linked contracts |
| 2 | Smart contract | https://optimistic.etherscan.io/address/0x5e61a079A178f0E5784107a4963baAe0c5a680c6 | PoolFactory and linked contracts |
| 3 | Smart contract | https://etherscan.io/address/0x96D33bCF84DdE326014248E2896F79bbb9c13D6d | PoolFactory and linked contracts |
| 4 | Smart contract | https://basescan.org/address/0x49Afe3abCf66CF09Fab86cb1139D8811C8afe56F | PoolFactory and linked contracts |
| 5 | Smart contract | https://arbiscan.io/address/0xffFb5fB14606EB3a548C113026355020dDF27535 | PoolFactory and linked contracts |
| 6 | Smart contract | https://dhedge.org/ | Primacy of Impact |
| 7 | Smart contract | https://hyperevmscan.io/address/0x615037C2Df6FA97634c5aD2d8144708b9dd3B176 | PoolFactory and linked contracts |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `V2-Public/` | https://github.com/dhedge/V2-Public | master | f09febf 2026-09-14 Update public repository 10 | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **5 of 7** in-scope addresses have full source on disk.
- 1 has no verified source available from Sourcify, the chain's Blockscout instance or Routescan.
- 1 is on a chain this collection cannot fetch source for.

Sources: sourcify (5).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xfdc7b8bFe0DD` | PoolFactory and linked contracts | `TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0xfdc7b8bFe0DD__PoolFactory_and_linked_contracts/` |
| `0x5e61a079A178` | PoolFactory and linked contracts | `TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0x5e61a079A178__PoolFactory_and_linked_contracts/` |
| `0x96D33bCF84Dd` | PoolFactory and linked contracts | `@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0x96D33bCF84Dd__PoolFactory_and_linked_contracts/` |
| `0x49Afe3abCf66` | PoolFactory and linked contracts | `@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0x49Afe3abCf66__PoolFactory_and_linked_contracts/` |
| `0xffFb5fB14606` | PoolFactory and linked contracts | `@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0xffFb5fB14606__PoolFactory_and_linked_contracts/` |

**No source retrieved** (by chain): hyperevmscan.io (1), dhedge.org (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://polygonscan.com/address/0xfdc7b8bFe0DD3513Cc669bB8d601Cb83e2F69cB0 — PoolFactory and linked contracts
- [Smart contract] https://optimistic.etherscan.io/address/0x5e61a079A178f0E5784107a4963baAe0c5a680c6 — PoolFactory and linked contracts
- [Smart contract] https://etherscan.io/address/0x96D33bCF84DdE326014248E2896F79bbb9c13D6d — PoolFactory and linked contracts
- [Smart contract] https://basescan.org/address/0x49Afe3abCf66CF09Fab86cb1139D8811C8afe56F — PoolFactory and linked contracts
- [Smart contract] https://arbiscan.io/address/0xffFb5fB14606EB3a548C113026355020dDF27535 — PoolFactory and linked contracts
- [Smart contract] https://dhedge.org/ — Primacy of Impact
- [Smart contract] https://hyperevmscan.io/address/0x615037C2Df6FA97634c5aD2d8144708b9dd3B176 — PoolFactory and linked contracts

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds

## Out of scope (from the program page)

- Attacks by privileged manager accounts which relate to poor trading practices or slippage. 
  - Best practice critiques

## Notes on assets

Deployed contracts that are currently linked to the PoolFactory are considered in scope. Linked contracts include, but not limited to: vault implementation contracts (PoolLogic, PoolManagerLogic), numerous contract/asset guards (3rd party integrations related code) and price aggregator contracts used for assets pricing.

## Notes on impacts

dHEDGE vaults are trust minimized, meaning that the vault manager may not follow a set strategy, or may make bad trades, including trades with poor slippage. A complete loss of funds is possible via poor risk-management strategies by the manager. These types of losses are not in scope for the bounty.

## Rewards / payout terms

If a vulnerability is found in integration-related contracts (such as contract guards or asset guards), the funds at risk should be calculated per chain, based on which deployments actually include the affected integration.

In the dHEDGE system, managers/traders are generally not considered trusted, and issues exploitable by a manager/trader are typically treated as putting user funds at risk. However, this assumption does not apply to vaults managed directly by the protocol team. Vaults operated by dHEDGE itself or by incubated protocols under its operational control (e.g., Toros, mStable) should be considered trusted. Therefore, if a vulnerability is exploitable only by a permissioned manager/trader, the funds at risk should exclude vaults under direct team management.

If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading or pausing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk.

## Program overview

dHEDGE is a one-stop location for managing investment activities on the blockchain where you can put your capital to work in different strategies based on a transparent track record. Multi-chain, non-custodial, decentralized asset management integrated with multiple protocols; allowing for trades, providing liquidity and yield farming.

For more information about dHEDGE, please visit [https://app.dhedge.org/](https://app.dhedge.org/).   

This bug bounty program is focused on their smart contracts and is focused on preventing:

  - Loss of user funds by freezing or theft
  - Loss of governance funds
  - Theft of unclaimed yield
  - Freezing of unclaimed yield
  - Deposit and withdrawal bugs
  - Protocol integration bugs

