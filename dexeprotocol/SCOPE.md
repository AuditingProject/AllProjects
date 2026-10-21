# dexeprotocol — Immunefi scope

- Program: https://immunefi.com/bug-bounty/dexeprotocol/scope/
- Max bounty: **$500,000**
- KYC required: **yes**
- Launched 2024-01-23, program updated 2024-11-13
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | High | $5,000 – $10,000 |
| Smart contract | Medium | $1,000 |
| Smart contract | Critical | $10,000 – $500,000 (10% of funds at risk) |

## Assets in scope (11)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://bscscan.com/address/0xB562127efDC97B417B3116efF2C23A29857C0F0B | DeXe DAO |
| 2 | Smart contract | https://bscscan.com/address/0x46B46629B674b4C0b48B111DEeB0eAfd9F84A1c0 | ContractsRegistry |
| 3 | Smart contract | https://bscscan.com/address/0x427a1214f12117b1AD48C817c203c5CF3Eb7E7C4 | UserRegistry |
| 4 | Smart contract | https://bscscan.com/address/0xaB9d2a2347D5fF5B760C0226C52d5C673b8D9e44 | CoreProperties |
| 5 | Smart contract | https://bscscan.com/address/0xc7730074736c10ed0d3F928A10Ee4162DA9a7983 | PriceFeed |
| 6 | Smart contract | https://bscscan.com/address/0x892B3292cF80CB298b7fA20D04EF4732640db404 | ERC721Expert |
| 7 | Smart contract | https://bscscan.com/address/0x85f86ef7E72e86BdEAb5F65e2B76A2c551f22109 | PoolFactory |
| 8 | Smart contract | https://bscscan.com/address/0xFEB26AAB75638440B3CEFe8B10de6118972f9C6B | PoolRegistry |
| 9 | Smart contract | https://bscscan.com/address/0x41260f637a993ce714Ece1ee9875F489e483e9b3 | SphereXEngine |
| 10 | Smart contract | https://bscscan.com/address/0x4fa2092E32934Dd3823E58C79ceD0e410a5B0D4b | PoolSphereXEngine |
| 11 | Smart contract | https://www.immunefi.com | Primacy of Impacts |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| DeXe-Protocol | https://github.com/dexe-network/DeXe-Protocol | master | f09a3ba98c2e44c5c026667bb1a1495db74f6ee3 | resolved from program text link (audit links under dexe-network/DeXe-Protocol) |

### How these repos were matched

- `DeXe-Protocol` — the program text links the audit reports at `github.com/dexe-network/DeXe-Protocol/blob/master/audits/…` (Ambisafe, Certik, Cyfrin, Hacken), so the repo is published by the project itself. Verified by contract-name correspondence with the in-scope assets: `contracts/core/ContractsRegistry.sol` (asset 2), `contracts/user/UserRegistry.sol` (asset 3), `contracts/core/CoreProperties.sol` (asset 4), `contracts/core/PriceFeed.sol` (asset 5), `contracts/gov/ERC721/experts/ERC721Expert.sol` (asset 6), `contracts/factory/PoolFactory.sol` (asset 7), `contracts/factory/PoolRegistry.sol` (asset 8), and `contracts/gov/GovPool.sol` (asset 1, DeXe DAO).

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **9 of 10** in-scope addresses have full source on disk.
- 1 has no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

Sources: sourcify (9).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x46B46629B674` | ContractsRegistry | `src/evm/quoters/protocols/ntt/NttQuoterProxy.sol:NttQuoterProxy` | `deployed-source/0x46B46629B674__ContractsRegistry/` |
| `0x427a1214f121` | UserRegistry | `contracts/proxy/ProtectedTransparentProxy.sol:ProtectedTransparentProxy` | `deployed-source/0x427a1214f121__UserRegistry/` |
| `0xaB9d2a2347D5` | CoreProperties | `contracts/proxy/ProtectedTransparentProxy.sol:ProtectedTransparentProxy` | `deployed-source/0xaB9d2a2347D5__CoreProperties/` |
| `0xc7730074736c` | PriceFeed | `contracts/proxy/ProtectedTransparentProxy.sol:ProtectedTransparentProxy` | `deployed-source/0xc7730074736c__PriceFeed/` |
| `0x892B3292cF80` | ERC721Expert | `contracts/proxy/ProtectedTransparentProxy.sol:ProtectedTransparentProxy` | `deployed-source/0x892B3292cF80__ERC721Expert/` |
| `0x85f86ef7E72e` | PoolFactory | `contracts/proxy/ProtectedTransparentProxy.sol:ProtectedTransparentProxy` | `deployed-source/0x85f86ef7E72e__PoolFactory/` |
| `0xFEB26AAB7563` | PoolRegistry | `contracts/proxy/ProtectedTransparentProxy.sol:ProtectedTransparentProxy` | `deployed-source/0xFEB26AAB7563__PoolRegistry/` |
| `0x41260f637a99` | SphereXEngine | `@spherex-xyz/engine-contracts/src/SphereXEngine.sol:SphereXEngine` | `deployed-source/0x41260f637a99__SphereXEngine/` |
| `0x4fa2092E3293` | PoolSphereXEngine | `src/SphereXEngine.sol:SphereXEngine` | `deployed-source/0x4fa2092E3293__PoolSphereXEngine/` |

**No source retrieved** (by chain): BNB Chain (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Coverage: assets 1–8 (DeXe DAO, ContractsRegistry, UserRegistry, CoreProperties, PriceFeed, ERC721Expert, PoolFactory, PoolRegistry) are covered by the cloned `DeXe-Protocol` repo. Still unidentified: assets 9 and 10 (SphereXEngine, PoolSphereXEngine) — these are third-party SphereX protection contracts, not part of the DeXe source tree, and no DeXe-published repo contains them; asset 11 is a Primacy-of-Impacts placeholder, not a contract.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://bscscan.com/address/0xB562127efDC97B417B3116efF2C23A29857C0F0B — DeXe DAO
- [Smart contract] https://bscscan.com/address/0x46B46629B674b4C0b48B111DEeB0eAfd9F84A1c0 — ContractsRegistry
- [Smart contract] https://bscscan.com/address/0x427a1214f12117b1AD48C817c203c5CF3Eb7E7C4 — UserRegistry
- [Smart contract] https://bscscan.com/address/0xaB9d2a2347D5fF5B760C0226C52d5C673b8D9e44 — CoreProperties
- [Smart contract] https://bscscan.com/address/0xc7730074736c10ed0d3F928A10Ee4162DA9a7983 — PriceFeed
- [Smart contract] https://bscscan.com/address/0x892B3292cF80CB298b7fA20D04EF4732640db404 — ERC721Expert
- [Smart contract] https://bscscan.com/address/0x85f86ef7E72e86BdEAb5F65e2B76A2c551f22109 — PoolFactory
- [Smart contract] https://bscscan.com/address/0xFEB26AAB75638440B3CEFe8B10de6118972f9C6B — PoolRegistry
- [Smart contract] https://bscscan.com/address/0x41260f637a993ce714Ece1ee9875F489e483e9b3 — SphereXEngine
- [Smart contract] https://bscscan.com/address/0x4fa2092E32934Dd3823E58C79ceD0e410a5B0D4b — PoolSphereXEngine
- [Smart contract] https://www.immunefi.com — Primacy of Impacts

## Impacts in scope

**Smart contract — Critical**
- Manipulation of governance voting result deviating from voted outcome and resulting in a direct change from intended effect of original results
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Direct theft of any user NFTs, whether at-rest or in-motion, other than unclaimed royalties
- Permanent freezing of funds
- Permanent freezing of NFTs
- Unauthorized minting of NFTs
- Unintended alteration of what the NFT represents (e.g. token URI, payload, artistic content)
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Theft of unclaimed royalties
- Permanent freezing of unclaimed yield
- Permanent freezing of unclaimed royalties
- Temporary freezing of funds
- Temporary freezing of NFTs

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)

## Notes on assets

How DEXE Protocol works: [https://whitepaper.dexe.network/](https://whitepaper.dexe.network/)

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/). 

__Reward Calculation for Critical Level Reports__

For critical smart contract bugs, the reward amount is __10%__ of the funds directly affected up to a maximum of __USD 500 000__. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of __USD 10 000__ is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

__Repeatable Attack Limitations__

  - If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attacks within the first hour will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading or pausing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk. 

  - For critical repeatable attacks on smart contracts that cannot be upgraded or paused, the project will consider the cumulative impact of the repeatable attacks for a reward. This is because the project cannot prevent the attacker from repeatedly exploiting the vulnerability until all funds are drained and/or other irreversible damage is done. Therefore, this warrants a reward equivalent to __10%__ of funds at risk, capped at the maximum critical reward. 

__Reward Calculation for High Level Reports__

  - High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are rewarded within a range of __USD 5 000 to USD 10 000__ depending on the funds at risk, capped at the maximum high reward. 

  - In the event of temporary freezing, the reward doubles from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. This is because as the duration of the freezing lengthens, the potential for greater damage and subsequent reputational harm intensifies. Thus, by increasing the reward proportionally with the frozen duration, the project ensures stronger incentives for bug disclosure of this nature.

__Reward Payment Terms__

Payouts are handled by the __DeXe Protocol__ team directly and are denominated in __USD__. All medium rewards will be paid out in __USDC__. All high rewards will be paid out in $DeXe. All critical rewards will be paid out in $DeXe with a 6-month linear vesting schedule.

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

DeXe Protocol is an innovative infrastructure of 50+ smart contracts for building and governing effective DAOs.

For more information about DeXe Protocol, please visit [dexe.network](https://dexe.network/)

DeXe Protocol provides rewards in __USDC__, denominated in __USD__. For more details about the payment process, please view the Rewards by Threat Level section further below. 

__KYC Requirement__ 

DeXe Protocol will be requesting KYC information in order to pay for successful bug submissions. The following information will be required:
  - Full name 
  - Date of birth
  - Proof of address (either a redacted bank statement with address or a recent utility bill)
  - Copy of Passport or other Government issued ID


__Primacy of Impact vs Primacy of Rules__

DeXe Protocol adheres to the Primacy of Impact for the following impacts:

  - Smart Contracts: Critical
  - Smart Contracts: High
  - Smart Contracts: Medium

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. For more information, please see Best Practices: Primacy of Impact 
When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact for this program. Instead, check if those other projects have a bug bounty program on Immunefi.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms and conditions set within this program.

__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the Immunefi PoC Guidelines and Rules.

__Known Issue Assurance__

DeXe Protocol commits to providing Known Issue Assurance to bug submissions through their program. This means that DeXe Protocol will either disclose known issues publicly, or at the very least, privately via a self-reported bug submission. 

In a potential scenario of a mediation, this allows for a more objective and streamlined process, in order to prove that an issue is known. Otherwise, assuming the bug report is valid, it would result in the report being considered as in-scope, and due a reward.

__Previous Audits__

DeXe Protocol’s completed audit reports can be found in the following links:

  - [https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/README.md](https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/README.md)
  - [https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/ambisafe-2023-07-18.pdf](https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/ambisafe-2023-07-18.pdf)
  - [https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/ambisafe-2023-11-10.pdf](https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/ambisafe-2023-11-10.pdf)
  - [https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/certik-2023-05-04.pdf](https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/certik-2023-05-04.pdf)
  - [https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/cyfrin-2023-11-10.pdf](https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/cyfrin-2023-11-10.pdf)
  - [https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/hacken-2023-05-22.pdf](https://github.com/dexe-network/DeXe-Protocol/blob/master/audits/hacken-2023-05-22.pdf)

__Immunefi Standard Badge__

By adhering to Immunefi’s best practice recommendations, DeXe Protocol has satisfied the requirements for the [Immunefi Standard Badge](https://immunefisupport.zendesk.com/hc/en-us/articles/15006865432209).63:Taf

