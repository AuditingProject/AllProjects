# beets — Immunefi scope

- Program: https://immunefi.com/bug-bounty/beets/scope/
- Max bounty: **$200,000**
- KYC required: **no**
- Launched 2022-09-16, program updated 2025-02-18
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $20,000 – $200,000 (10% of funds at risk) |
| Smart contract | High | $5,000 – $20,000 |

## Assets in scope (3)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://sonicscan.org/address/0xe5da20f15420ad15de0fa650600afc998bbe3955#code | Beets Staked Sonic |
| 2 | Smart contract | https://sonicscan.org/address/0x2d0e0814e62d80056181f5cd932274405966e4f0#code | Beets Token |
| 3 | Smart contract | https://sonicscan.org/address/0x5f9a5CD0B77155AC1814EF6Cd9D82dA53d05E386#code | Beets Token Migrator |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| sonic-staking | https://github.com/beethovenxfi/sonic-staking | main | 877087b5c3cbeb6830cc0aa1c2b4c5d958fc60b2 | resolved from program text link (audits link to beethovenxfi/sonic-staking) |
| beets-contracts | https://github.com/beethovenxfi/beets-contracts | main | e5290eff157a0f721bb4d5b7a79c319dd779eef2 | resolved from program text link (github.com/beethovenxfi org) |

### How these repos were matched

- `sonic-staking` — the program's "Rewards / payout terms" links the audits at `github.com/beethovenxfi/sonic-staking/tree/main/audits`. Verified: repo contains `src/SonicStaking.sol` (contract `SonicStaking`), matching asset 1 "Beets Staked Sonic".
- `beets-contracts` — the program's "Notes on assets" states all Beets contracts are at `github.com/beethovenxfi`; `beets-contracts` was found by listing that org's repos (`gh api orgs/beethovenxfi/repos`). Verified: Sourcify reports the on-chain name of asset 2 (0x2d0e…e4f0, Sonic chain 146) as `src/token/Beets.sol:Beets`, which is exactly the path/contract in this repo; `src/token/SonicBeetsMigrator.sol` matches asset 3 "Beets Token Migrator".

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **1 of 3** in-scope addresses have full source on disk.
- 2 have no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

Sources: sourcify (1).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x2d0e0814e62d` | Beets Token | `src/token/Beets.sol:Beets` | `deployed-source/0x2d0e0814e62d__Beets_Token/` |

**No source retrieved** (by chain): Sonic (2).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Coverage: assets 1 (Beets Staked Sonic), 2 (Beets Token) and 3 (Beets Token Migrator) are now all covered by the cloned repos above (`sonic-staking` and `beets-contracts`). No in-scope asset remains unidentified.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://sonicscan.org/address/0xe5da20f15420ad15de0fa650600afc998bbe3955#code — Beets Staked Sonic
- [Smart contract] https://sonicscan.org/address/0x2d0e0814e62d80056181f5cd932274405966e4f0#code — Beets Token
- [Smart contract] https://sonicscan.org/address/0x5f9a5CD0B77155AC1814EF6Cd9D82dA53d05E386#code — Beets Token Migrator

## Impacts in scope

**Smart contract — Critical**
- Direct theft of >10% of user funds, other than unclaimed yield, in excess of gas costs or swap fees
- Permanent freezing of >10% of total funds in excess of gas costs or swap fees

**Smart contract — High**
- Theft of >10% of total unclaimed yield
- Permanent freezing of >10% of total unclaimed yield
- Direct theft of >5% of user funds, other than unclaimed yield, in excess of gas costs or swap fees
- Permanent freezing of >5% of total funds in excess of gas costs or swap fees

## Out of scope (from the program page)

- Best practice critiques

## Notes on assets

All smart contracts of Beets can be found at [https://github.com/beethovenxfi](https://github.com/beethovenxfi). However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

If an impact can be caused to any other asset managed by Beets that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported.

All High and Critical Smart Contract bug reports require a PoC and a suggestion for a fix to be eligible for a reward. Explanations and statements are not accepted as PoC and code is required.

Critical smart contract vulnerabilities are capped at 10% of economic damage, primarily taking into consideration funds at risk. However, there is a minimum reward of __USD 20 000__. 

High severity smart contract vulnerabilities are also further capped at 10% of economic damage,  primarily taking into consideration funds at risk. However, there is a minimum reward of __USD 5 000__.

All vulnerabilities marked in the [audits](https://github.com/beethovenxfi/sonic-staking/tree/main/audits) are not eligible for a reward.

Payouts are handled by the __Beets DAO__ directly and are denominated in USD. However, payouts are done in __USDC and BEETS__.

## Program overview

The Flagship LST Hub on Sonic. From seamless staking to earning real yield on LST-focused liquidity pools, Beets is the ultimate destination for your liquid-staked tokens.
For more information about Beets, please visit [https://beets.fi/](https://beets.fi/).  

Please note that BeetsX is a friendly fork of [Balancer V2 and V3](https://balancer.fi/). All balancer core contracts are covered by their [bug bounty program](https://immunefi.com/bug-bounty/balancer/information/)

