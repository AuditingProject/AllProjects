# orca — Immunefi scope

- Program: https://immunefi.com/bug-bounty/orca/scope/
- Max bounty: **$500,000**
- KYC required: **no**
- Launched 2022-05-19, program updated 2026-08-18
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | up to $500,000 (10% of funds at risk) |
| Smart contract | High | $50,000 |
| Smart contract | Medium | $10,000 |

## Assets in scope (2)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://solscan.io/account/StaKE6XNKVVhG8Qu9hDJBqCW3eRe7MDGLz17nJZetLT | xORCA |
| 2 | Smart contract | https://solscan.io/account/whirLbMiicVdio4qvUfM5KAg6Ct8VwpYzGff3uctyCc | Orca Whirlpools |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `xorca/` | https://github.com/orca-so/xorca | main | 05fe66b 2026-07-22 change license email (#42) | program codebase link |
| `whirlpools/` | https://github.com/orca-so/whirlpools | main | cc683ec9 2026-10-12 add 2026-01-14 audit reports (#1414) | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 2** in-scope addresses have full source on disk.
- 1 metadata-only (no source published; the record holds the contract name or the verified-build repo and commit).
- 1 has no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

**Metadata-only records**

- `whirLbMiicVdio` Orca Whirlpools — name unavailable (via osec-verify)

**No source retrieved** (by chain): Solana (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://solscan.io/account/StaKE6XNKVVhG8Qu9hDJBqCW3eRe7MDGLz17nJZetLT — xORCA
- [Smart contract] https://solscan.io/account/whirLbMiicVdio4qvUfM5KAg6Ct8VwpYzGff3uctyCc — Orca Whirlpools

## Impacts in scope

**Smart contract — Critical**
- Bugs that freeze user funds or drain the contract's holdings or involve theft of funds without user signatures
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds

**Smart contract — High**
- Bugs that could temporarily freeze user funds or incorrectly assign value to user funds
- Temporary freezing of unclaimed yield for any amount of time
- Theft of unclaimed yield

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Block stuffing for profit
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

- Best practice critiques

## Notes on assets

However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

If any Critical/High severity impact can be caused to any other asset managed by Orca that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported.

All bug reports must come with a PoC with an end-effect impacting an asset-in-scope in order to be considered for a reward. Explanations and statements are not accepted as PoC and code is required.

Rewards for critical smart contract vulnerabilities can be further capped at 10% of economic damage, with the main consideration being the funds affected in addition to PR and brand considerations, at the discretion of the team. However, there is a minimum reward of __USD 100 000__ for Critical smart contract bug reports. 

Payouts are handled by the __Orca__ team directly and are denominated in USD. Payouts of up to __USD 250 000__ are done in __ORCA__ or __USDC__ (SPL Version) at the discretion of the team. Payouts above __USD 250 000__ will be done in __ORCA__ and will be vested monthly over a 12-month period.

## Program overview

Orca is one of the first general-purpose AMMs launched on Solana. Users can swap assets, provide liquidity, and earn yield through an easy-to-use interface. Orca has created custom smart contracts for its concentrated liquidity product, [Whirlpools](https://www.orca.so/whirlpools). In traditional AMM liquidity pools, a user provides liquidity across the entire continuous price curve. With Whirlpools, each user can specify the price range where they will provide liquidity.

For more information on Orca, please visit [https://orca.so/](https://orca.so/) or [Orca’s Twitter](https://twitter.com/orca_so).

