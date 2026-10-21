# antefinance — Immunefi scope

- Program: https://immunefi.com/bug-bounty/antefinance/scope/
- Max bounty: **$25,000**
- KYC required: **yes**
- Launched 2022-01-05, program updated 2024-12-02
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $25,000 |
| Smart contract | High | $5,000 |
| Smart contract | Medium | $2,500 |
| Smart contract | Low | $500 |

## Assets in scope (7)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0xa03492a9a663f04c51684a3c172fc9c4d7e02edc | Ante Pool Factory |
| 2 | Smart contract | https://etherscan.io/address/0xE48f6A36f3712E389ce666BCEcD88BA60c30aE50 | Ante Pool |
| 3 | Smart contract | https://etherscan.io/address/0x5f3555Febf9bF4930ad581dB008f8b0F6239C6Fc | Ante Pool |
| 4 | Smart contract | https://etherscan.io/address/0xFc2Bd420ae071a812Ea238C5916198024E00fE33 | Ante Pool |
| 5 | Smart contract | https://etherscan.io/address/0x28b549845B6fE1939783ba0bDb3ba1a598da0394 | Ante Pool |
| 6 | Smart contract | https://etherscan.io/address/0x6e1000a6088Eb3dD1493492626E556F6d9A17BD1 | Ante Pool |
| 7 | Smart contract | https://etherscan.io/address/0x22075f4cD76299822Eb8D1546f5DcF775c90AA87 | Ante Pool |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `ante-v0-core/` | https://github.com/antefinance/ante-v0-core | origin/v0.5 | 2781ec3 2022-11-22 add ToB audit report + fix report | program codebase link |

In-scope paths inside `ante-v0-core/` (1):

- `contracts/AntePool.sol`

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **7 of 7** in-scope addresses have full source on disk.

Sources: sourcify (7).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xa03492a9a663` | Ante Pool Factory | `contracts/AntePoolFactory.sol:AntePoolFactory` | `deployed-source/0xa03492a9a663__Ante_Pool_Factory/` |
| `0xE48f6A36f371` | Ante Pool | `contracts/AntePool.sol:AntePool` | `deployed-source/0xE48f6A36f371__Ante_Pool/` |
| `0x5f3555Febf9b` | Ante Pool | `contracts/AntePool.sol:AntePool` | `deployed-source/0x5f3555Febf9b__Ante_Pool/` |
| `0xFc2Bd420ae07` | Ante Pool | `contracts/AntePool.sol:AntePool` | `deployed-source/0xFc2Bd420ae07__Ante_Pool/` |
| `0x28b549845B6f` | Ante Pool | `contracts/AntePool.sol:AntePool` | `deployed-source/0x28b549845B6f__Ante_Pool/` |
| `0x6e1000a6088E` | Ante Pool | `contracts/AntePool.sol:AntePool` | `deployed-source/0x6e1000a6088E__Ante_Pool/` |
| `0x22075f4cD762` | Ante Pool | `contracts/AntePool.sol:AntePool` | `deployed-source/0x22075f4cD762__Ante_Pool/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0xa03492a9a663f04c51684a3c172fc9c4d7e02edc — Ante Pool Factory
- [Smart contract] https://etherscan.io/address/0xE48f6A36f3712E389ce666BCEcD88BA60c30aE50 — Ante Pool
- [Smart contract] https://etherscan.io/address/0x5f3555Febf9bF4930ad581dB008f8b0F6239C6Fc — Ante Pool
- [Smart contract] https://etherscan.io/address/0xFc2Bd420ae071a812Ea238C5916198024E00fE33 — Ante Pool
- [Smart contract] https://etherscan.io/address/0x28b549845B6fE1939783ba0bDb3ba1a598da0394 — Ante Pool
- [Smart contract] https://etherscan.io/address/0x6e1000a6088Eb3dD1493492626E556F6d9A17BD1 — Ante Pool
- [Smart contract] https://etherscan.io/address/0x22075f4cD76299822Eb8D1546f5DcF775c90AA87 — Ante Pool

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Insolvency
- Loss of funds in Ante Pool that is not triggered by a valid withdrawal of funds by the user who deposited or settlement (in the case of a failed Ante Test)
- Inability for stakers or challengers to withdraw funds from the pool (except in the case of a failed Ante Test)
- AntePool triggers test failure workflow when underlying AnteTest did not revert or fail

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Incorrect payment to stakers from challenger decay mechanism (aside from inaccuracy described above)
- Incorrect loss of funds from challengers due to challenger decay mechanism  (aside from inaccuracy described above)
- Incorrect payout to challengers on settlement following a failed Ante Test
- Withdrawal of staked funds by stakers without waiting for 24 hr window to pass following initialization of unstake

**Smart contract — Low**
- Smart contract fails to deliver promised returns, but doesn’t lose value

**Smart contract — Medium**
- Smart contract unable to operate due to lack of funds
- Block stuffing for profit
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

- Best practice critiquesAttacks that are already known or outlined in any audits, https://github.com/antefinance/ante-v05-core/tree/v0.5/audit

## Notes on assets

However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

## Rewards / payout terms

$63

## Program overview

Ante Finance enables blockchain protocols and developers to create incentivized, real-time, and autonomous guarantees for any smart contract system on any blockchain. Ante envisions becoming the global Schelling point for decentralized trust.

For more information about Ante, please visit [https://www.ante.finance/](https://www.ante.finance/). 

This bug bounty program is focused on their smart contracts and is focused on preventing:

  - Theft or freezing of user funds aside from normal functioning of AntePool contract
  - Incorrect calculation of rewards for stakers/challengers beyond error bounds described in technical doc
  - Incorrect calculation of decay payments beyond error bounds described in technical doc
  - False positive triggering of test failure on AntePool even if underlying test did not fail or revert

