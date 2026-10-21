# nexusmutual — Immunefi scope

- Program: https://immunefi.com/bug-bounty/nexusmutual/scope/
- Max bounty: **$25,000**
- KYC required: **no**
- Launched 2021-02-23, program updated 2025-11-14
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $5,000 – $25,000 (10% of funds at risk) |
| Smart contract | High | $3,000 – $10,000 |
| Smart contract | Medium | $1,000 – $3,000 |

## Assets in scope (3)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://github.com/NexusMutual/smart-contracts/tree/master | Master candidate Branch - excluding /contracts/modules/assessment and /contracts/modules/governance |
| 2 | Smart contract | https://www.immunefi.com | Primacy of Impact |
| 3 | Smart contract | https://github.com/NexusMutual/smart-contracts/tree/release-candidate | Release candidate Branch - excluding /contracts/modules/assessment and /contracts/modules/governance |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `smart-contracts/` | https://github.com/NexusMutual/smart-contracts | origin/master | 67f53120 2026-04-16 chore(release): v3.4.0 [skip ci] | in-scope asset |

⚠️ `smart-contracts/` is referenced at more than one ref: origin/master, origin/release-candidate. It is checked out at `origin/master`.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://www.immunefi.com — Primacy of Impact

## Impacts in scope

**Smart contract — Critical**
- Manipulation of governance voting, resulting in deviation from voted outcome - must bypass Advisory Board privileges that could otherwise mitigate the situation
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield

**Smart contract — Medium**
- Temporary freezing of funds
- Smart contract unable to operate due to lack of token funds

## Notes on impacts

Only the following impacts are accepted within this bug bounty program. All other impacts are not considered as in-scope, even if they affect something in the assets in scope table.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/). 

For critical smart contract bugs, the reward amount is __10%__ of the funds directly affected up to a maximum of __USD 25 000__.  The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. A minimum reward of __USD 5 000__ is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

__Repeatable Attack Limitations__

  - If the smart contract where the vulnerability exists can be upgraded/paused/killed, only the initial attacks within the first hour will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading, pausing, or in some cases, killing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk. 

  - For critical repeatable attacks on smart contracts that can not be upgraded/paused/killed, the project will consider the cumulative impact of the repeatable attacks for a reward. This is because the project cannot prevent the attacker from repeatedly exploiting the vulnerability until all funds are drained and/or other irreversible damage is done. Therefore, this warrants a reward equivalent to 10% of funds at risk, capped at the maximum critical reward. 

__Reward Calculation for High Level Reports__

  - High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are considered at the full amount of funds at risk, capped at the maximum high reward. This is to incentivize security researchers to uncover and responsibly disclose vulnerabilities that may have not have significant monetary value today, but could still be damaging to the project if it goes unaddressed.   

  - In the event of temporary freezing, the reward increases at a multiplier of two from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. This is because as the duration of the freezing lenghents, the potential for greater damage and subsequent reputational harm intensifies. Thus, by increasing the reward proportionally with the frozen duration, the project ensures stronger incentives for bug disclosure of this nature.

__Reward Payment Terms__

Payouts are handled by __Nexus Mutual__ directly and are denominated in __USD__. However, payouts are done in __USDC__.

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

Nexus Mutual is a cutting-edge decentralized insurance alternative that operates on the Ethereum blockchain. It serves as a groundbreaking community-led protocol that offers transparent and flexible options for its members to buy cover, underwrite risk, assess claims, and build risk management businesses.

With a primary focus on securing smart contracts and protecting against economic attacks, Nexus Mutual provides safeguards for both the capital pool and user funds. This ensures that members have peace of mind and confidence in the platform's security measures, as well as accessibility and user action security.

For more information about Nexus Mutual, please visit [nexusmutual.io](http://nexusmutual.io) 

Nexus Mutual provides rewards in __USDC__, denominated in __USD__. For more details about the payment process, please view the Rewards by Threat Level section further below. 


__Primacy of Impact vs Primacy of Rules__

Nexus Mutual adheres to the Primacy of Impact for the following impacts:

  - Smart Contract – Critical
    - Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
   - Permanent freezing of funds
   - Protocol insolvency

  - Smart Contract – High
    - Theft of unclaimed yield
    - Permanent freezing of unclaimed yield
    - Temporary freezing of funds

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. For more information, please see [Best Practices: Primacy of Impact](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact) 

When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms set within this program.

__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the [Immunefi PoC Guidelines and Rules](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules).


__Previous Audits__

All Nexus Mutual security audits can be accessed on: [https://docs.nexusmutual.io/overview/resources/audits-and-security](https://docs.nexusmutual.io/overview/resources/audits-and-security). Any unfixed vulnerability mentioned in these reports are not eligible for a reward.


__Immunefi Standard Badge__

By adhering to Immunefi’s best practice recommendations, Nexus Mutual has satisfied the requirements for the [Immunefi Standard Badge](https://immunefisupport.zendesk.com/hc/en-us/articles/6427157117713-The-Immunefi-Standard-Badge-).63:Tb15,

