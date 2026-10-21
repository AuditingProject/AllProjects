# gmtrade — Immunefi scope

- Program: https://immunefi.com/bug-bounty/gmtrade/scope/
- Max bounty: **$100,000**
- KYC required: **no**
- Launched 2026-07-06, program updated 2026-09-16
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $15,000 – $100,000 (10% of funds at risk) |
| Smart contract | High | $5,000 – $15,000 |
| Smart contract | Medium | $1,000 – $5,000 |

## Assets in scope (6)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://github.com/gmsol-labs/gmx-solana/tree/main/programs/store | Store |
| 2 | Smart contract | https://github.com/gmsol-labs/gmx-solana/tree/main/programs/treasury | Treasury |
| 3 | Smart contract | https://github.com/gmsol-labs/gmx-solana/tree/main/programs/liquidity-provider | Liquidity-provider |
| 4 | Smart contract | https://explorer.solana.com/address/Gmso1uvJnLbawvw7yezdfCDcPydwW2s2iqG3w6MDucLo/verified-build | Store |
| 5 | Smart contract | https://explorer.solana.com/address/LPMWczEVgXyQ3979XaqqEttanCXmYGvtJqPVtw1PvC8/verified-build | Liquidity Provider |
| 6 | Smart contract | https://explorer.solana.com/address/GTuvYD5SxkTq4FLG6JV1FQ5dkczr1AfgDcBHaFsBdtBg/verified-build | Treasury |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `gmx-solana/` | https://github.com/gmsol-labs/gmx-solana | origin/main | d6d4dc7f 2026-10-19 feat(store): let GT owners manage delegate and allowance (#480) | in-scope asset |

In-scope paths inside `gmx-solana/` (3):

- `programs/store`
- `programs/treasury`
- `programs/liquidity-provider`

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 3** in-scope addresses have full source on disk.
- 3 are on a chain this collection cannot fetch source for.

**No source retrieved** (by chain): Solana (3).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://explorer.solana.com/address/Gmso1uvJnLbawvw7yezdfCDcPydwW2s2iqG3w6MDucLo/verified-build — Store
- [Smart contract] https://explorer.solana.com/address/LPMWczEVgXyQ3979XaqqEttanCXmYGvtJqPVtw1PvC8/verified-build — Liquidity Provider
- [Smart contract] https://explorer.solana.com/address/GTuvYD5SxkTq4FLG6JV1FQ5dkczr1AfgDcBHaFsBdtBg/verified-build — Treasury

## Known issues (1) — not eligible

- Smart Contract Known Issues (https://github.com/gmsol-labs/gmx-solana/blob/main/README.md#known-issues)

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds

**Smart contract — Medium**
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Unbounded gas consumption

## Out of scope (from the program page)

Known Issues
Bug reports covering previously-discovered bugs (listed below) are not eligible for a reward within this program. This includes known issues that the project is aware of but has consciously decided not to “fix”, necessary code changes, or any implemented operational mitigating procedures that can lessen potential risk. Every issue opened in the repo, closed PRs, previous contests and audits are out of scope.

All issues submitted by wardens to the GMTrade bounty will be added to this repo once they have been reviewed by the sponsors. These are considered known issues and are out-of-scope for bounty rewards.

https://github.com/gmsol-labs/gmx-solana/blob/main/README.md#known-issues


Previous Audits
Any previously reported vulnerabilities mentioned in past audit reports are not eligible for a reward.

GMTrade previous audits can be found below:

https://github.com/gmsol-labs/gmx-solana-audits


Specific Types of Issues
• Informational findings.
• Design choices or expected design behaviors related to protocol.
• Issues that are ultimately user errors and can easily be caught in the frontend. For example, transfers to the System Program.
• Rounding errors.
• Relatively high gas consumption.
• Attacks requiring access to Timelock or Oracles.
• Risk of loss due to decline in pool asset prices.
• Price manipulation on third-party exchanges.
• Exploits based on delayed or extreme price feed updates.
• Attacks that are not economically feasible.
• Vulnerabilities related to hosting providers.


Trusted Roles
• Program upgrade authorities responsible for deploying and upgrading program code.
• The administrators with control over the default store account authority, typically protected by multisig and timelock mechanisms.
• Any program-defined privileged roles granted or managed by the administrators.
• Keeper accounts responsible for critical operations or maintaining service availability.63:T785,The GMTrade system primari

## Rewards / payout terms

**Maximum Payout Cap (Treasury-based). The total payout for any single valid report shall not exceed 10% of the protocol Treasury balance at the time the report is submitted. Where the standard calculation (including "% of funds at risk" for Critical) yields more, this cap controls. Minimum rewards remain payable. **

** Treasury balance is publicly verifiable on-chain at 4tf9zEjvj2BUR9ZaAr53sQdULDWGGpJTr2zngSrmjtN6.**

## Program overview

The GMTrade system primarily consists of on-chain programs and off-chain keepers, along with price and risk oracles. User market operations are generally executed in two steps: first, users submit on-chain transactions to create market operation requests; then, keepers monitor the network, submit the necessary price updates, and finalize the verification and execution of these requests via additional on-chain transactions. Protocol security is ensured by oracle-provided data and on-chain program logic that validates both user requests and keeper actions, supplemented by mechanisms such as price impacts (to mitigate price manipulation risk and maintain pool and open interest balance) and adaptive funding fees (to ensure long-term balance in open interest).

The core market operations include:

Deposits and withdrawals to market pools: Liquidity providers (LPs) contribute liquidity to a market pool by depositing long or short tokens and receive market tokens representing their share of the pool. LPs can redeem market tokens at any time to withdraw their proportional share of assets.

Opening and closing perpetual positions: Traders post collateral to open positions against the market pool's index. When closing a position, profits are withdrawn from the market pool based on index price movement, while losses are deducted from the trader's collateral. The deducted collateral is then deposited into the market pools to cover counterparty profits and maintain liquidity.

Swapping assets: Traders can swap long tokens for short tokens (or vice versa) within the market pools.

LPs primarily earn revenue from order fees and borrowing fees paid by traders when opening or closing positions, or when swapping assets. Traders can also earn by helping maintain market balance, receiving positive price impacts and funding fees paid by the side that increases the imbalance in open interest or the liquidity pool.

