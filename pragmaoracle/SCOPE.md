# pragmaoracle — Immunefi scope

- Program: https://immunefi.com/bug-bounty/pragmaoracle/scope/
- Max bounty: **$10,000**
- KYC required: **yes**
- Launched 2023-11-22, program updated 2026-10-15
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $10,000 (10% of funds at risk) |
| Smart contract | High | $5,000 |

## Assets in scope (2)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://voyager.online/contract/0x02a85bd616f912537c50a49a4076db02c00b29b2cdc8a197ce92ed1837fa875b | Oracle |
| 2 | Smart contract | https://voyager.online/contract/0x024a55b928496ef83468fdb9a5430fe031ac386b8f62f5c2eb7dd20ef7237415 | PublisherRegistry |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `pragma-oracle/` | https://github.com/Astraly-Labs/pragma-oracle | main | ae86eae 2026-09-16 fix(ci): make the devnet Run scripts workflow green again (#148) | program codebase link |
| `pragma/` | https://github.com/Astraly-Labs/pragma | master | 5696c4d 2026-10-07 fix(miden): point the explorer page at the Miden 0.17 oracle and publisher (#504) | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 2** in-scope addresses have full source on disk.
- 2 have no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

**No source retrieved** (by chain): Starknet (2).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://voyager.online/contract/0x02a85bd616f912537c50a49a4076db02c00b29b2cdc8a197ce92ed1837fa875b — Oracle
- [Smart contract] https://voyager.online/contract/0x024a55b928496ef83468fdb9a5430fe031ac386b8f62f5c2eb7dd20ef7237415 — PublisherRegistry

## Impacts in scope

**Smart contract — Critical**
- Permanent freezing of funds
- Manipulation of governance voting result deviating from voted outcome and resulting in a direct change from intended effect of original results.
- Allow unauthorized actors to manipulate/publish any data entry

**Smart contract — High**
- Temporary freezing of funds

## Rewards / payout terms

Rewards depend on the vulnerability’s impact, as defined in the Impacts in Scope table below.

- **Critical smart contract bugs:** the reward amount is % of the funds directly affected up to a maximum of $10000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of $10000 is to be rewarded in order to incentivize security researchers against withholding a critical bug report.
- **Repeatable attacks:** Only the first attack counts, even if the contract can be upgraded, paused, or disabled.
- **Proof of Concept (PoC):** Critical and High smart contract reports require a PoC that follows [Immunefi’s guidelines](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules). Reports missing a required PoC receive no reward.
- **Known issues:** Bugs identified in [this audit report](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0147-FINAL_PRAGMA.pdf) are not eligible for rewards.
- **Payment:** Pragma pays rewards directly in USDC, based on their USD value.c:["

## Program overview

Pragma is the leading Oracle on StarkNet, recognised for providing the most reliable data feeds to its ecosystem. This network relies on three types of data sources: First Party, Third Party, and On-chain data.

What sets the Pragma Oracle infrastructure apart is its entirely on-chain nature. This means that protocols using Pragma benefit from data that matches the verifiability, transparency, and security of the smart contracts they use.

Moreover, Pragma is pioneering computational feeds. These feeds merge its high-quality, real-time market data in unique ways, ensuring that everything remains on-chain and verifiable through the use of zero-knowledge computation.

Pragma is the decentralized, transparent and composable oracle network, leveraging  zero-knowledge cryptography. We partner with the biggest market makers and the most liquid exchanges who sign and timestamp their own high quality, robust data and send it directly on-chain. Our feeds are live on StarkNet mainnet, where they are powering the next generation of ambitious protocols such as zkLend, Nostra, Carmine and more. 

For more information about Pragma, please visit [pragma.build](https://www.pragma.build/)

Pragma provides rewards in USDC. For more details about the payment process, please view the Rewards by Threat Level section further below. 

__KYC Requirement__

The provision of KYC is required to receive a reward for this bug bounty program where the following information will be required to be provided:
- Twitter
- Email
- Proof of identity (picture next to the Passport/ID)

KYC information is only required on confirmation of the validity of a bug report.   


__Primacy of Impact vs Primacy of Rules__

Pragma adheres to the Primacy of Impact for the following severity levels:
- Smart Contract - Critical
- Smart Contract - High
- Smart Contract - Medium

If a category’s severity level is covered within the Primacy of Impact, it means that even if the impacted asset is not in-scope but is owned by the project, then it would be considered as in-scope of the bug bounty program as long as it involves an impact under that respective severity level. When submitting a report, just select the Primacy of Impact asset placeholder. If the team behind this project has multiple projects, those other projects are not covered under the Primacy of Impact of this program. Instead, check if those other projects have a bug bounty program on Immunefi.

All other severity levels not listed here are considered under the Primacy of Rules, which means that they are bound by the terms of the bug bounty program.

__Immunefi Standard Badge__

Pragma has satisfied the requirements for the [Immunefi Standard Badge](https://immunefisupport.zendesk.com/hc/en-us/articles/6427157117713-The-Immunefi-Standard-Badge-), which is given to projects that adhere to our best practices.63

