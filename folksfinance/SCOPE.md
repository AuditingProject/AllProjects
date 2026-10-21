# folksfinance — Immunefi scope

- Program: https://immunefi.com/bug-bounty/folksfinance/scope/
- Max bounty: **$100,000**
- KYC required: **yes**
- Launched 2022-03-31, program updated 2026-10-08
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $25,000 – $100,000 (10% of funds at risk) |
| Smart contract | High | $5,000 – $50,000 |
| Smart contract | Medium | $2,500 |
| Smart contract | Low | $1,000 |

## Assets in scope (21)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://lora.algokit.io/mainnet/application/971350278 | Pool Manager |
| 2 | Smart contract | https://lora.algokit.io/mainnet/application/971353536 | Deposits Escrow |
| 3 | Smart contract | https://lora.algokit.io/mainnet/application/971368268 | ALGO Pool |
| 4 | Smart contract | https://lora.algokit.io/mainnet/application/2611131944 | xALGO Pool |
| 5 | Smart contract | https://lora.algokit.io/mainnet/application/971372237 | USDC Pool |
| 6 | Smart contract | https://lora.algokit.io/mainnet/application/971373361 | goBTC Pool |
| 7 | Smart contract | https://lora.algokit.io/mainnet/application/1258524099 | SILVER$ Pool |
| 8 | Smart contract | https://lora.algokit.io/mainnet/application/1258515734 | GOLD$ Pool |
| 9 | Smart contract | https://lora.algokit.io/mainnet/application/971373611 | goETH Pool |
| 10 | Smart contract | https://lora.algokit.io/mainnet/application/3343137163 | FOLKS Pool (Isolated) |
| 11 | Smart contract | https://lora.algokit.io/mainnet/application/3514794123 | WBTC Pool |
| 12 | Smart contract | https://lora.algokit.io/mainnet/application/3514795114 | WETH POOL |
| 13 | Smart contract | https://lora.algokit.io/mainnet/application/3184317016 | ALGO Pool (Isolated) |
| 14 | Smart contract | https://lora.algokit.io/mainnet/application/3184324594 | USDC Pool (Isolated) |
| 15 | Smart contract | https://lora.algokit.io/mainnet/application/3184325123 | TINY Pool (Isolated) |
| 16 | Smart contract | https://lora.algokit.io/mainnet/application/971388781 | General Loan Type |
| 17 | Smart contract | https://lora.algokit.io/mainnet/application/971389489 | ALGO Efficiency Loan Type |
| 18 | Smart contract | https://lora.algokit.io/mainnet/application/3184333108 | Algorand Ecosystem Loan Type |
| 19 | Smart contract | https://lora.algokit.io/mainnet/application/971333964 | Oracle Adapter |
| 20 | Smart contract | https://lora.algokit.io/mainnet/application/1040271396 | Oracle |
| 21 | Smart contract | https://lora.algokit.io/mainnet/application/1134695678 | xALGO |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `algo-liquid-staking-contracts` | https://github.com/Folks-Finance/algo-liquid-staking-contracts | main | 67467b8 | resolved from the `github.com/Folks-Finance` org, reached via the `https://github.com/Folks-Finance/audits` link in the program's "Rewards / payout terms" text |

### How these repos were matched

- `algo-liquid-staking-contracts` — Evidence: the program's rewards text publishes `https://github.com/Folks-Finance/audits`, establishing `github.com/Folks-Finance` as the project's own GitHub org; `gh api orgs/Folks-Finance/repos` lists this repo ("The smart contracts for the Folks Finance ALGO Liquid Staking Protocol"). Verification: in-scope asset 21 is "xALGO" = Algorand application **1134695678**; the same org's `Folks-Finance/algorand-js-sdk`, file `src/xalgo/constants/mainnet-constants.ts`, declares `consensusAppId: 1134695678`, and the source of that consensus application is `contracts/xalgo/consensus_v3.py` (plus `consensus_state_v3.py`) in this repo.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 21** in-scope addresses have full source on disk.
- 21 are on a chain this collection cannot fetch source for.

**No source retrieved** (by chain): Algorand (21).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

**Coverage after this pass:** asset 21 (`application/1134695678` — xALGO, the ALGO liquid-staking consensus app) is now covered by the cloned `algo-liquid-staking-contracts`. The other **20** assets (Pool Manager, Deposits Escrow, all 13 Pool apps including "xALGO Pool" app 2611131944, the 3 Loan Type apps, Oracle Adapter and Oracle) remain **unidentified**: the Folks Finance Algorand v2 lending-pool contracts are not published as source. Checked: all 17 repos in `github.com/Folks-Finance` (only `algorand-smart-contract-library`, a PuyaPy helper library, `algo-liquid-staking-contracts`, `algorand-ntt-contracts`, `xchain-contracts` (EVM cross-chain lending hub, different deployment) and SDK/front-end repos exist — no lending-pool/pool-manager contracts repo); `program-data.json` has `programCodebases: null` and no other GitHub link; and GitHub code search for the in-scope app IDs (e.g. `971350278 org:Folks-Finance`) returns only `algorand-js-sdk/src/lend/constants/mainnet-constants.ts`, an address constants file in an SDK, not contract source.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://lora.algokit.io/mainnet/application/971350278 — Pool Manager
- [Smart contract] https://lora.algokit.io/mainnet/application/971353536 — Deposits Escrow
- [Smart contract] https://lora.algokit.io/mainnet/application/971368268 — ALGO Pool
- [Smart contract] https://lora.algokit.io/mainnet/application/2611131944 — xALGO Pool
- [Smart contract] https://lora.algokit.io/mainnet/application/971372237 — USDC Pool
- [Smart contract] https://lora.algokit.io/mainnet/application/971373361 — goBTC Pool
- [Smart contract] https://lora.algokit.io/mainnet/application/1258524099 — SILVER$ Pool
- [Smart contract] https://lora.algokit.io/mainnet/application/1258515734 — GOLD$ Pool
- [Smart contract] https://lora.algokit.io/mainnet/application/971373611 — goETH Pool
- [Smart contract] https://lora.algokit.io/mainnet/application/3343137163 — FOLKS Pool (Isolated)
- [Smart contract] https://lora.algokit.io/mainnet/application/3514794123 — WBTC Pool
- [Smart contract] https://lora.algokit.io/mainnet/application/3514795114 — WETH POOL
- [Smart contract] https://lora.algokit.io/mainnet/application/3184317016 — ALGO Pool (Isolated)
- [Smart contract] https://lora.algokit.io/mainnet/application/3184324594 — USDC Pool (Isolated)
- [Smart contract] https://lora.algokit.io/mainnet/application/3184325123 — TINY Pool (Isolated)
- [Smart contract] https://lora.algokit.io/mainnet/application/971388781 — General Loan Type
- [Smart contract] https://lora.algokit.io/mainnet/application/971389489 — ALGO Efficiency Loan Type
- [Smart contract] https://lora.algokit.io/mainnet/application/3184333108 — Algorand Ecosystem Loan Type
- [Smart contract] https://lora.algokit.io/mainnet/application/971333964 — Oracle Adapter
- [Smart contract] https://lora.algokit.io/mainnet/application/1040271396 — Oracle
- [Smart contract] https://lora.algokit.io/mainnet/application/1134695678 — xALGO

## Known issues (1) — not eligible

- An attacker sends some fAsset, whose pool's collateral cap is zero, to a loan such that it prevents the loan from being closed out. Other similar examples such as when an escrow has opted into a different asset prior to being used (https://lora.algokit.io/mainnet/application/971388781)

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds for at least 48 hours

**Smart contract — Low**
- Contract fails to deliver promised returns, but doesn't lose value

**Smart contract — Medium**
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol) - excludes freezing of funds
- Protocol unable to operate due to lack of token funds
- Temporary freezing of funds for at least 24 hours

## Out of scope (from the program page)

The following vulnerabilities are excluded from the rewards for this bug bounty program:

- Attacks that the reporter has already exploited themselves, leading to damage
- Attacks requiring access to leaked keys/credentials
- Attacks requiring access to privileged addresses (governance, strategist)

__Smart Contracts and Blockchain__

- Any smart contracts or logic related to incentives
- Incorrect data supplied by third party oracles and market manipulation
    - Not to exclude oracle manipulation/flash loan attacks
- Impacts relying on the depegging of an external token where the attacker does not directly cause the depegging from a bug in the in-scope contracts
- Basic economic governance attacks (e.g. 51% attack)
- Lack of liquidity
- Best practice critiques
- Sybil attacks
- Centralization risks

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported. 

Smart Contract bug reports require a PoC and a suggestion for a fix to be eligible for a reward. Explanations and statements are not accepted as PoC and code is required.

High and Critical smart contract vulnerabilities are capped at 10% of economic damage, primarily taking into consideration funds at risk, but also PR and branding aspects, at the discretion of the team. However, there is a minimum reward of __USD 50 000__ for Critical and __USD 10 000__ for High. 

All vulnerabilities marked in the following Github repository [https://github.com/Folks-Finance/audits](https://github.com/Folks-Finance/audits) are ineligible for a reward

Bug reports related solely to external incentives distributed on top of the protocol are downgraded in severity by one level. 

Bug reports covering previously-discovered bugs are not eligible for any reward through the bug bounty program. If a bug report covers a known issue, it may be rejected together with proof of the issue being known before escalation of the bug report via Immunefi.

__KYC__ shall be completed for bug bounty hunters submitting a vulnerability report and requesting a reward for Critical and High Smart Contracts vulnerabilities. The basic information needed is full name, residential address, and passport details (DOB, issuing country and passport number). Based on the basic information submitted, Folks Finance team may request further information at its sole discretion for compliance with applicable
Laws.

Additionally, all levels of bug bounty hunters submitting a vulnerability report and requesting a reward need to submit certification that 
- (i) they are not acting, directly or indirectly, for or on behalf of any person, group entity, or nation named by any Executive Order or the United States Treasury Department as a terrorist, “Specially Designated National and Blocked Person,” or other banned or blocked person, entity, nation, or transaction pursuant to any law, order, rule or regulation that is
enforced or administered by the Office of Foreign Assets Control; and  
- (ii) they are not engaging in, instigating or facilitating this transaction, directly or indirectly, on behalf of any such person, group,
entity, or nation. They also need to submit an attestation that all information provided is true, correct, up-to-date and not misleading. The collection of this information will be done by the Folks Finance team.

Payouts are handled by the __Folks Finance__ team directly and are denominated in USD. However, payouts are done in __USDC__.c:["

## Program overview

Folks Finance is a community-driven DeFi protocol offering a variety of tools for digital asset management

For more information about Folks Finance, please visit [https://folks.finance/](https://folks.finance/). 

This bounty program will expire on 31.12.2026

