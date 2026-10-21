# marinade — Immunefi scope

- Program: https://immunefi.com/bug-bounty/marinade/scope/
- Max bounty: **$250,000**
- KYC required: **no**
- Launched 2021-12-01, program updated 2024-11-12
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | High | up to $15,000 |
| Smart contract | Critical | up to $250,000 (10% of funds at risk) |

## Assets in scope (1)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://github.com/marinade-finance/liquid-staking-program | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `liquid-staking-program/` | https://github.com/marinade-finance/liquid-staking-program | main | f67f238 2026-10-14 [trivial] prepare-upgrade.sh: use marinade-finance multisig UI (#104) | in-scope asset |

## Known issues (1) — not eligible

- Deactive delinquent handled only after commit 3e7c090 (https://github.com/marinade-finance/liquid-staking-program/pull/84)

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds excluding DOS attacks

## Out of scope (from the program page)

- Best practice critiques

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps and smart contracts/blockchains, encompassing everything from consequence of exploitation to privilege required to likelihood of a successful exploit. 

All smart contract bug reports must come with a PoC in order to be considered for a reward.

Critical vulnerabilities are further capped at 10% of economic damage, with the main consideration being the funds affected in addition to PR and brand considerations, at the discretion of the team. However, there is a minimum of __USD 50 000__ for Critical bug reports.

Payouts are handled by the __Marinade Finance__ team directly and are denominated in USD. However, payouts are done in __mSOL__ and __MNDE__.

## Program overview

Marinade.Finance is the first non-custodial liquid staking protocol built on Solana. You can stake your SOL tokens with Marinade and receive "marinated SOL" tokens (mSOL) that you can use in decentralized finance (DeFi).

The price of mSOL goes up relative to SOL each epoch, with rewards being accrued into the underlying staked SOL. Marinade stakes in 400+ validators that are selected automatically by an open-source fair formula based on performance, commission and decentralization.

Marinade includes mSOL->SOL swap, so you can “Unstake Now!” and receive your SOL immediately with a small fee. You can also directly exchange between mSOL and SOL on secondary markets at the current rate. Finally, you can unstake your SOL with zero-fee by waiting 4-6 days for the Solana cool-down period (delayed-unstake). 

As of November 2021, Marinade’s TVL is around 1.5b USD

For more information about Marinade Finance, please visit [https://marinade.finance/](https://marinade.finance/) and [https://docs.marinade.finance](https://docs.marinade.finance) 

This bug bounty program is focused on their smart contracts and is focused on preventing:

  - Loss of user funds staked (principal) by freezing or theft
  - Loss of governance funds
  - Theft of unclaimed yield
  - Freezing of unclaimed yield
  - Temporary freezing of funds
  - Unable to call smart contractc:["$"

