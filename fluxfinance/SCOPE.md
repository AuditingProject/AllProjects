# fluxfinance — Immunefi scope

- Program: https://immunefi.com/bug-bounty/fluxfinance/scope/
- Max bounty: **$550,000**
- KYC required: **no**
- Launched 2023-02-08, program updated 2026-02-23
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $25,000 – $550,000 (10% of funds at risk) |
| Smart contract | High | $25,000 |
| Smart contract | Medium | $10,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (9)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0x95Af143a021DF745bc78e845b54591C53a8B3A51 | Unitroller |
| 2 | Smart contract | https://etherscan.io/address/0x1dD7950c266fB1be96180a8FDb0591F70200E018 | fOUSG |
| 3 | Smart contract | https://etherscan.io/address/0x465a5a630482f3abD6d3b84B39B29b07214d19e5 | fUSDC |
| 4 | Smart contract | https://etherscan.io/address/0xe2bA8693cE7474900A045757fe0efCa900F6530b | fDAI |
| 5 | Smart contract | https://etherscan.io/address/0x1C9A2d6b33B4826757273D47ebEe0e2DddcD978B | fFRAX |
| 6 | Smart contract | https://etherscan.io/address/0x81994b9607e06ab3d5cF3AffF9a67374f05F27d7 | fUSDT |
| 7 | Smart contract | https://etherscan.io/address/0xba9b10f90b0ef26711373a0d8b6e7741866a7ef2 | OndoPriceOracle V2 |
| 8 | Smart contract | https://etherscan.io/address/0x336505EC1BcC1A020EeDe459f57581725D23465A | GovernorBravoDelegator |
| 9 | Smart contract | https://etherscan.io/address/0x2c5898da4DF1d45EAb2B7B192a361C3b9EB18d9c | Timelock |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `contracts/` | https://github.com/flux-finance/contracts | main | 05bba79 2023-02-07 Flux contracts: | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **9 of 9** in-scope addresses have full source on disk.

Sources: blockscout:eth.blockscout.com (9).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x95Af143a021D` | Unitroller | `Unitroller` | `deployed-source/0x95Af143a021D__Unitroller/` |
| `0x1dD7950c266f` | fOUSG | `CErc20DelegatorKYC` | `deployed-source/0x1dD7950c266f__fOUSG/` |
| `0x465a5a630482` | fUSDC | `CErc20DelegatorKYC` | `deployed-source/0x465a5a630482__fUSDC/` |
| `0xe2bA8693cE74` | fDAI | `CErc20DelegatorKYC` | `deployed-source/0xe2bA8693cE74__fDAI/` |
| `0x1C9A2d6b33B4` | fFRAX | `CErc20DelegatorKYC` | `deployed-source/0x1C9A2d6b33B4__fFRAX/` |
| `0x81994b9607e0` | fUSDT | `CErc20DelegatorKYC` | `deployed-source/0x81994b9607e0__fUSDT/` |
| `0xba9b10f90b0e` | OndoPriceOracle V2 | `OndoPriceOracleV2` | `deployed-source/0xba9b10f90b0e__OndoPriceOracle_V2/` |
| `0x336505EC1BcC` | GovernorBravoDelegator | `GovernorBravoDelegator` | `deployed-source/0x336505EC1BcC__GovernorBravoDelegator/` |
| `0x2c5898da4DF1` | Timelock | `Timelock` | `deployed-source/0x2c5898da4DF1__Timelock/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0x95Af143a021DF745bc78e845b54591C53a8B3A51 — Unitroller
- [Smart contract] https://etherscan.io/address/0x1dD7950c266fB1be96180a8FDb0591F70200E018 — fOUSG
- [Smart contract] https://etherscan.io/address/0x465a5a630482f3abD6d3b84B39B29b07214d19e5 — fUSDC
- [Smart contract] https://etherscan.io/address/0xe2bA8693cE7474900A045757fe0efCa900F6530b — fDAI
- [Smart contract] https://etherscan.io/address/0x1C9A2d6b33B4826757273D47ebEe0e2DddcD978B — fFRAX
- [Smart contract] https://etherscan.io/address/0x81994b9607e06ab3d5cF3AffF9a67374f05F27d7 — fUSDT
- [Smart contract] https://etherscan.io/address/0xba9b10f90b0ef26711373a0d8b6e7741866a7ef2 — OndoPriceOracle V2
- [Smart contract] https://etherscan.io/address/0x336505EC1BcC1A020EeDe459f57581725D23465A — GovernorBravoDelegator
- [Smart contract] https://etherscan.io/address/0x2c5898da4DF1d45EAb2B7B192a361C3b9EB18d9c — Timelock

## Impacts in scope

**Smart contract — Critical**
- Any governance voting result manipulation
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield

**Smart contract — Low**
- Smart contract fails to deliver promised returns, but doesn't lose value

**Smart contract — Medium**
- Miner-extractable value (MEV)
- Temporary freezing of funds for at least 24 hours
- Block stuffing for profit
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption
- Smart contract unable to operate due to lack of token funds

## Out of scope (from the program page)

- Best practice critiques

## Notes on assets

In some cases, only the proxy contracts are listed as in-scope; however, current implementation and any further updates to the implementation are considered in scope. When reporting a bug, please make sure to select the relevant proxy smart contract as the target. 

However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program. 

If an impact can be caused to any other asset managed by Flux Finance that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the[  Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2/). This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported. 

All bug reports must come with a PoC with an end-effect impacting an asset-in-scope in order to be considered for a reward. Explanations and statements are not accepted as PoC and code is required. Bug reports are required to include a runnable PoC in order to prove impact. Exceptions may be made in cases where the vulnerability is objectively evident from simply mentioning the vulnerability and where it exists. However, the bug reporter may be required to provide a PoC at any point in time.

Rewards for critical smart contract vulnerabilities are further capped at 10% of economic damage, with the main consideration being the funds affected in addition to PR and brand considerations, at the discretion of the team. However, there is a minimum reward of USD 25 000 for Critical smart contract bug reports.

The following known issues are also considered out of scope of this program:
- Effects from blacklists (e.g. KYC revoked, USDC blacklist), if the effect only impacts the specific user.
- Impact of KYC or sanctions status changes on borrower liquidation
- Effects from using hypothetical use of tokens that do not follow the ERC-20 standard or include unusual behavior (e.g. transfer tax). If a token has certain functionality but that functionality is currently disabled, the effect will also be considered out of scope.
- Misuse of admin rights (e.g. malicious admin multi-sig)
- The protocol is forked from CompoundV2. The fToken contracts are forked from this [commit](https://github.com/compound-finance/compound-protocol/tree/a3214f67b73310d547e00fc578e8355911c9d376). All other contracts (Comptroller, CErc20Delegator, InterestRateModel, etc.) are forked from this [commit](https://github.com/compound-finance/compound-protocol/tree/3affca87636eecd901eb43f81a4813186393905d). Bug reports covering previously-discovered bugs are not eligible for the program. If a bug report covers a known issue, it may be rejected together with proof of the issue being known before escalation of the bug report. Previous audits of CompoundV2 can be found at: [https://docs.compound.finance/v2/security/#audits](https://docs.compound.finance/v2/security/#audits)
- Any known issues in CompoundV2 up to these commits are considered out of scope. This includes, but is not limited to:
   - First deposit bug when a market is initialized - example [video](https://youtu.be/_pO2jDgL0XE?t=157)
   - Discrepancy in borrow rate per block on-chain vs. displayed APY in the UI

Payouts are handled by the __Flux Finance__ team directly and are denominated in USD. However, payouts are done in __USDC__.  The payment will be made by Flux Finance (the entity).

## Program overview

Flux Finance is a decentralized lending protocol built by the Ondo Finance team.

The protocol is a fork of Compound V2 with additional functionality to support both permissionless (e.g. USDC) and permissioned (e.g. OUSG) tokens. Permissions are enforced on a per-asset basis. For example, a USDC lender won't have any restrictions, but a USDC borrower using OUSG as collateral will need to satisfy OUSG's permissions.

Similar to Compound, Flux enables overcollateralized lending and borrowing in a peer-to-pool (p2pool) model.

For more information about Flux Finance, please visit [https://fluxfinance.com/  ](https://fluxfinance.com/)

