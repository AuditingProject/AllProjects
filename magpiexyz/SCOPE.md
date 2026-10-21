# magpiexyz — Immunefi scope

- Program: https://immunefi.com/bug-bounty/magpiexyz/scope/
- Max bounty: **$50,000**
- KYC required: **no**
- Launched 2023-02-09, program updated 2026-10-15
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | up to $50,000 (10% of funds at risk) |
| Smart contract | High | up to $10,000 |
| Smart contract | Medium | $4,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (2)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://bscscan.com/address/0xb68F5247f31fe28FDe0b0F7543F635a4d6EDbD7F | Main Pool USDC Deposit Helper |
| 2 | Smart contract | https://immunefi.com | Primacy of Impact |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `contracts/` | https://github.com/magpiexyz/contracts | main | bd42696 2023-06-05 add WatchPug audit for Penpie | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **1 of 1** in-scope addresses have full source on disk.

Sources: sourcify (1).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xb68F5247f31f` | Main Pool USDC Deposit Helper | `contracts/wombat/WombatPoolHelper.sol:WombatPoolHelper` | `deployed-source/0xb68F5247f31f__Main_Pool_USDC_Deposit_Helper/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://bscscan.com/address/0xb68F5247f31fe28FDe0b0F7543F635a4d6EDbD7F — Main Pool USDC Deposit Helper

## Impacts in scope

**Smart contract — Critical**
- Any governance voting result manipulation
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Temporary freezing of funds for at least 24 hours
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield

**Smart contract — Low**
- Smart contract fails to deliver promised returns, but doesn’t lose value

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds (vulnerabilities purely relying on the project neglecting to top up funds in their smart contracts are out of scope)
- Block stuffing for profit
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

- Best practice critiques

## Notes on assets

However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

If an Critical and High impact can be caused to any other asset managed by MagpieXYZ that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the  [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported. 

All Critical Smart Contract bug reports must come with a PoC with an end-effect impacting an asset-in-scope in order to be considered for a reward. Explanations and statements are not accepted as PoC and code is required.  In addition, all Critical severity bug reports must come with a suggestion for a fix in order to be considered for a reward. 

Rewards for critical smart contract vulnerabilities are further capped at 10% of economic damage, with the main consideration being the funds affected in addition to PR and brand considerations, at the discretion of the team. However, there is a minimum reward of __USD 50 000__ for Critical smart contract bug reports. 

Rewards for high smart contract vulnerabilities are further capped at 20% of economic damage, with the main consideration being the funds affected in addition to PR and brand considerations, at the discretion of the team. However, there is a minimum reward of __USD 5 000__ for High smart contract bug reports.

Known issues highlighted in the following audit reports are considered out of scope: 
- [https://docs.magpiexyz.io/security/audit-reports](https://docs.magpiexyz.io/security/audit-reports)

Payouts are handled by the __MagpieXYZ__ team directly and are denominated in USD. However, payouts are done in __USDC__ and __BUSD__.

## Program overview

Magpie is a BNB Chain native yield boosting platform that maximizes governance benefits for veTokenomics based protocols. Incubated by Wombat Exchange, Magpie is focused on locking WOM tokens to own governance rights and boosted yield benefits as liquidity provider on Wombat. 

The platform offers users the opportunity to deposit their Stablecoins, BNB and Liquid BNB in single-sided boosted pools to earn high APR % while it allows Wombat Exchange voters to cost-effectively acquire voting power and earn passive income at the same time through the MGP token.

Magpie offers WOM holders the chance to earn high APR by converting their tokens into mWOM. mWOM refers to "Magpie WOM". mWOM can be staked on Magpie to earn boosted passive income.

When users convert their WOM tokens, they get mWOM that allows them to earn high rewards while Magpie locks all the converted WOM as veWOM on Wombat Exchange. That's how Magpie accumulates veWOM. veWOM entitles Magpie to boosted WOM rewards and governance benefits on Wombat Exchange. That's why Magpie can offer users sustainable boosted passive income.

For more information about MagpieXYZ, please visit [https://www.magpiexyz.io/ ](https://www.magpiexyz.io/)

