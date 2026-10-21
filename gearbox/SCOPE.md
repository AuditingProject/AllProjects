# gearbox — Immunefi scope

- Program: https://immunefi.com/bug-bounty/gearbox/scope/
- Max bounty: **$150,000**
- KYC required: **yes**
- Launched 2022-02-08, program updated 2026-06-29
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward | Primacy |
|---|---|---|---|
| Smart contract | Critical | $6,000 – $150,000 (10% of funds at risk) | Primacy of Impact |
| Smart contract | High | $3,000 – $6,000 | Primacy of Impact |
| Smart contract | Medium | $1,000 – $3,000 | — |
| Smart contract | Low | $1,000 – $1,000 | — |

## Assets in scope (2)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://wwwimmunefi.com | Primacy of Impact |
| 2 | Smart contract | https://github.com/Gearbox-protocol/security/blob/main/bug-bounty/v3_1-scope.md | The list of repositories containing all relevant contracts, as well as sources for discovering active deployments. |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `security/` | https://github.com/Gearbox-protocol/security | origin/main | 3a8af44 2026-06-10 fix: update docs link | in-scope asset |
| `permissionless/` | https://github.com/Gearbox-protocol/permissionless | master | b1b5e5b 2026-07-21 | resolved from the in-scope scope file |
| `core-v3/` | https://github.com/Gearbox-protocol/core-v3 | main | a53223a5 2026-09-28 | resolved from the in-scope scope file |
| `oracles-v3/` | https://github.com/Gearbox-protocol/oracles-v3 | main | 287739a 2026-01-16 | resolved from the in-scope scope file |
| `integrations-v3/` | https://github.com/Gearbox-protocol/integrations-v3 | main | fefe3ae 2026-09-28 | resolved from the in-scope scope file |
| `bots-v3/` | https://github.com/Gearbox-protocol/bots-v3 | main | ebec19d 2025-12-15 | resolved from the in-scope scope file |
| `periphery-v3/` | https://github.com/Gearbox-protocol/periphery-v3 | main | 2a63cf2 2026-05-13 | resolved from the in-scope scope file |


### How these repos were matched

Asset #2 is not a codebase itself: it is `security/bug-bounty/v3_1-scope.md`, which Gearbox uses to enumerate the real in-scope repositories. That file names all six repos above, and states that only their `main`/`master` branch is in scope. Each is cloned at that branch.

Per that file, the in-scope paths are:

- `permissionless/contracts/`, `core-v3/contracts/`, `oracles-v3/contracts/`, `integrations-v3/contracts/` — everything **except** `contracts/test/`
- `bots-v3/contracts/bots`
- `periphery-v3/contracts/emergency`, `contracts/kyc`, `contracts/migration` — excluding any contract with `*Previewer` in its name

Contracts that are not yet deployed are in scope too ("we care about security of the whole codebase"). Deployed contracts have `version` between `3_10` and `3_20` exclusive; discover them via AddressProviderV3 `0xF7f0a609BfAb9a0A98786951ef10e5FE26cC1E38` or the Bytecode Repository portal.

In-scope paths inside `security/` (1):

- `bug-bounty/v3_1-scope.md`

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://wwwimmunefi.com — Primacy of Impact

## Impacts in scope

**Smart contract — Critical**
- Permanent freezing of funds
- Protocol insolvency
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Governance voting manipulation that would result in loss of funds
- Miner-extractable value (MEV)

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds

**Smart contract — Low**
- Contract fails to deliver promised returns, but doesn't lose value

**Smart contract — Medium**
- Block stuffing for profit
- Smart contract unable to operate due to lack of token funds
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Notes on assets

If you have found a bug that you think is within the security interests of the protocol but is outside of the scope (e.g., the contract is not yet deployed), please notify the team anyway. You can decide ad-hoc together with them in such cases. 1/1 payouts have been done before based on this.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/). 

__Reward Calculation for Critical Level Reports__

- Critical smart contract vulnerabilities are capped at 10% of economic damage, primarily taking into consideration funds at risk, but also PR and branding aspects, at the discretion of the team.
For Critical vulnerabilities affecting assets with no funds currently at risk (for example, integrations not yet launched or systems with no active exposure), rewards will be calculated using the minimum Critical reward amount. 

__Repeatable Attack Limitations__

  - If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading or pausing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk. 

  - For critical repeatable attacks on smart contracts that cannot be upgraded or paused, the project will consider the cumulative impact of the repeatable attacks for a reward. This is because the project cannot prevent the attacker from repeatedly exploiting the vulnerability until all funds are drained and/or other irreversible damage is done. Therefore, this warrants a reward equivalent to 10% of funds at risk, capped at the maximum critical reward. 

__Reward Calculation for High Level Reports__

  - High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are rewarded within a range of __USD 3 000__ to __USD 6 000__ depending on the funds at risk, capped at the maximum high reward.  

  - In the event of temporary freezing, the reward doubles from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. This is because as the duration of the freezing lengthens, the potential for greater damage and subsequent reputational harm intensifies. Thus, by increasing the reward proportionally with the frozen duration, the project ensures stronger incentives for bug disclosure of this nature.

__Reward Payment Terms__

Payouts are handled by the __Gearbox__ team directly and are denominated in __USD__. However, payments are done in __USDC__

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

Gearbox is a generalized leverage protocol: it allows you to take leverage in one place and then use it across various DeFi protocols and platforms in a composable way. The protocol has two sides to it: passive liquidity providers who earn higher APY by providing liquidity; and active traders, farmers, or even other protocols who can borrow those assets to trade or farm with even x10 leverage.

The core vision is to become a backend composable leverage protocol that all kinds of users have but don’t even need to interact directly with any interface.

For more information about Gearbox, please visit: [https://docs.gearbox.finance/ ](https://docs.gearbox.finance/)

Dev docs are available at [https://dev.gearbox.fi/](https://dev.gearbox.fi/) 

To see the dApp, please visit: [https://app.gearbox.fi/](https://app.gearbox.fi/). 

Gearbox provides rewards denominated in __USD__, however payouts are done in __USDC__. For more details about the payment process, please view the Rewards by Threat Level section further below. 


__Primacy of Impact vs Primacy of Rules__

Gearbox adheres to the Primacy of Impact for the following impacts:

  - Smart Contract: Critical
  - Smart Contract: High

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. For more information, please see [Best Practices: Primacy of Impact ](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact)

When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact for this program. Instead, check if those other projects have a bug bounty program on Immunefi.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms and conditions set within this program.

__Primacy of Impact vs Primacy of Rules__

Gearbox adheres to the Primacy of Rules, which means that the whole bug bounty program is run strictly under the terms and conditions stated within this page. 

__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the [Immunefi PoC Guidelines and Rules](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules). A suggestion for a fix is preferred but not compulsory for Low and Medium Smart Contract bug reports. Explanations and statements are not accepted as PoC and code is required. 

__Public Disclosure of Known Issues__

Bug reports covering previously-discovered bugs (listed below) are not eligible for a reward within this program. This includes known issues that the project is aware of but has consciously decided not to “fix”, necessary code changes, or any implemented operational mitigating procedures that can lessen potential risk. 

  - [https://github.com/Gearbox-protocol/core-v2/issues](https://github.com/Gearbox-protocol/core-v2/issues)
  - [https://github.com/Gearbox-protocol/core-v3/issues](https://github.com/Gearbox-protocol/core-v3/issues)
  - [https://github.com/Gearbox-protocol/integrations-v3/issues](https://github.com/Gearbox-protocol/integrations-v3/issues)
  - [https://github.com/Gearbox-protocol/oracles-v3/issues](https://github.com/Gearbox-protocol/oracles-v3/issues)
  - [https://github.com/Gearbox-protocol/bots-v3/issues](https://github.com/Gearbox-protocol/bots-v3/issues)
  - [https://github.com/Gearbox-protocol/gearbox-contracts/issues](https://github.com/Gearbox-protocol/gearbox-contracts/issues)
  - [https://github.com/Gearbox-protocol/integrations-v2/issues](https://github.com/Gearbox-protocol/integrations-v2/issues)
  - [https://github.com/Gearbox-protocol/governance/issues](https://github.com/Gearbox-protocol/governance/issues)
  - [https://github.com/Gearbox-protocol/security/tree/main/disclosures](https://github.com/Gearbox-protocol/security/tree/main/disclosure)


__Immunefi Standard Badge__

By adhering to Immunefi’s best practice recommendations, Gearbox has satisfied the requirements for the [Immunefi Standard Badge](https://immunefisupport.zendesk.com/hc/en-us/articles/15006865432209).65:Ta78,Re

