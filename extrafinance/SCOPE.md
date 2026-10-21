# extrafinance — Immunefi scope

- Program: https://immunefi.com/bug-bounty/extrafinance/scope/
- Max bounty: **$100,000**
- KYC required: **no**
- Launched 2023-09-08, program updated 2026-09-16
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $15,000 – $100,000 (10% of funds at risk) |
| Smart contract | High | $3,000 – $15,000 |
| Smart contract | Medium | $1,000 – $3,000 |

## Assets in scope (9)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://optimistic.etherscan.io/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055 | VeloPositionManage (LYF) |
| 2 | Smart contract | https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd | LendingPool (LYF) |
| 3 | Smart contract | https://optimistic.etherscan.io/token/0x2dad3a13ef0c6366220f989157009e501e7938f8 | EXTRA (LYF) |
| 4 | Smart contract | https://optimistic.etherscan.io/address/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466 | VeToken (LYF) |
| 5 | Smart contract | https://immunefi.com | Primacy of Impact |
| 6 | Smart contract | https://optimistic.etherscan.io/address/0x345D2827f36621b02B783f7D5004B4a2fec00186#code | Pool_Proxy (Lending Market) |
| 7 | Smart contract | https://optimistic.etherscan.io/address/0x0353b6221b23b8320202320ca450eeb9fb0de9e5#code | Pool_Impl (Lending Market) |
| 8 | Smart contract | https://optimistic.etherscan.io/address/0x2B275176804dd01b6a90d61bDa3c80E3A470662E#code | A_Token (Lending Market) |
| 9 | Smart contract | https://optimistic.etherscan.io/address/0xC0C88d2752C58263c2b7F4Ac6ecBedC78eDD5d5E#code | Debt_Token (Lending Market) |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| extra-contracts | https://github.com/ExtraFi/extra-contracts | main | a66e925d78ee5c990eb2bafa5009cebcbeafe42d | resolved from audit report linked on docs.extrafi.io |
| xlend-contracts | https://github.com/ExtraFi/xlend-contracts | main | 9c0c5aaac7c87f733884e3316a394e209b23241f | resolved from the ExtraFi GitHub account established by that audit report |

### How these repos were matched

- `extra-contracts` — the Immunefi program text only links third-party audit PDFs (PeckShield, BlockSec). Extra Finance's own docs page `docs.extrafi.io/extra_finance/audits-and-security` additionally links the Sherlock audit report PDF, and that report names the audited repository and the team's fix PRs as `github.com/ExtraFi/extra-contracts` (`.../pull/1`, `.../pull/2`, and a pinned commit `db1e3e2…`). Verified by contract-name correspondence: `contracts/VeloPositionManager.sol` matches asset 1 "VeloPositionManage (LYF)" and `contracts/lendingpool/LendingPool.sol` matches asset 2 "LendingPool (LYF)" (whose on-chain build, per Sourcify, links the library `contracts/libraries/logic/ReserveLogic.sol:ReserveLogic` — the same path as in this repo).
- `xlend-contracts` — found by listing the repos of the same `ExtraFi` GitHub account that the Sherlock report identifies as Extra Finance's own. Verified by contract-name correspondence with the "Lending Market" assets: `contracts/core-v3/protocol/pool/Pool.sol` (assets 6/7 Pool_Proxy / Pool_Impl), `contracts/core-v3/protocol/tokenization/AToken.sol` (asset 8 A_Token) and `contracts/core-v3/protocol/tokenization/VariableDebtToken.sol` (asset 9 Debt_Token).

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **8 of 8** in-scope addresses have full source on disk.

Sources: blockscout:explorer.optimism.io (8).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xf9cfb8a62f50` | VeloPositionManage (LYF) | `VeloPositionManager` | `deployed-source/0xf9cfb8a62f50__VeloPositionManage_LYF/` |
| `0xbb505c54d71e` | LendingPool (LYF) | `LendingPool` | `deployed-source/0xbb505c54d71e__LendingPool_LYF/` |
| `0x2dad3a13ef0c` | EXTRA (LYF) | `EXTRA` | `deployed-source/0x2dad3a13ef0c__EXTRA_LYF/` |
| `0xe0bec4f45aef` | VeToken (LYF) | `VeToken` | `deployed-source/0xe0bec4f45aef__VeToken_LYF/` |
| `0x345D2827f366` | Pool_Proxy (Lending Market) | `InitializableImmutableAdminUpgradeabilityProxy` | `deployed-source/0x345D2827f366__Pool_Proxy_Lending_Market/` |
| `0x0353b6221b23` | Pool_Impl (Lending Market) | `Pool` | `deployed-source/0x0353b6221b23__Pool_Impl_Lending_Market/` |
| `0x2B275176804d` | A_Token (Lending Market) | `AToken` | `deployed-source/0x2B275176804d__A_Token_Lending_Market/` |
| `0xC0C88d2752C5` | Debt_Token (Lending Market) | `VariableDebtToken` | `deployed-source/0xC0C88d2752C5__Debt_Token_Lending_Market/` |

## In-scope assets with no repo to clone

Coverage: assets 1 and 2 (VeloPositionManage, LendingPool) are covered by `extra-contracts`; assets 6–9 (Pool_Proxy, Pool_Impl, A_Token, Debt_Token) are covered by `xlend-contracts`. Still unidentified: asset 3 (EXTRA token, a LayerZero OFT deployment with no source file in either repo) and asset 4 (VeToken — only the `contracts/interfaces/IveToken.sol` interface is published, not the implementation); asset 5 is a Primacy-of-Impact placeholder, not a contract.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://optimistic.etherscan.io/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055 — VeloPositionManage (LYF)
- [Smart contract] https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd — LendingPool (LYF)
- [Smart contract] https://optimistic.etherscan.io/token/0x2dad3a13ef0c6366220f989157009e501e7938f8 — EXTRA (LYF)
- [Smart contract] https://optimistic.etherscan.io/address/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466 — VeToken (LYF)
- [Smart contract] https://optimistic.etherscan.io/address/0x345D2827f36621b02B783f7D5004B4a2fec00186#code — Pool_Proxy (Lending Market)
- [Smart contract] https://optimistic.etherscan.io/address/0x0353b6221b23b8320202320ca450eeb9fb0de9e5#code — Pool_Impl (Lending Market)
- [Smart contract] https://optimistic.etherscan.io/address/0x2B275176804dd01b6a90d61bDa3c80E3A470662E#code — A_Token (Lending Market)
- [Smart contract] https://optimistic.etherscan.io/address/0xC0C88d2752C58263c2b7F4Ac6ecBedC78eDD5d5E#code — Debt_Token (Lending Market)

## Known issues (4) — not eligible

- The LendingPool contains a known first-depositor share-inflation pattern when a reserve is empty. The original attack path is mitigated by atomically minting and permanently locking initial shares when each reserve is initialized. (https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd)
- Debt Repayment Failure Due to Rounding Errors. Accumulated rounding differences between pool-level and individual position debt calculations can cause reserve.totalBorrows to fall below debtPosition.borrowed. This can prevent full repayment of the affected position. (https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd)
- reserve.lastUpdateTimestamp is not updated when the pool has no outstanding borrows. As a result, interest on the first borrow is calculated from the reserve’s initialization time rather than the borrowing time, causing the first borrower’s debt to be overstated. (https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd)
- LendingPool.repay() increases credit by the supplied repayment amount rather than the actual debt repaid. This can result in excess credit when the repayment amount exceeds the outstanding debt. Access to this function is restricted to whitelisted vault contracts. (https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd)

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds

**Smart contract — Medium**
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)

## Rewards / payout terms

Rewards are distributed according to the impact the vulnerability could otherwise cause based on the Impacts in Scope table further below. 

__Reward Calculation for Critical Level Reports__

For critical Smart Contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 100 000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 15 000 is to be rewarded in order to incentivize security researchers against withholding a bug report.  

__Repeatable Attack Limitations__

In cases of repeatable attacks for smart contract bugs, only the first attack will be counted, regardless of whether the smart contract is upgradable, pausable, or killable.

__Previous Audits__

Extra Finance has provided these completed audit review reports for reference. Any unfixed vulnerability mentioned in these reports are not eligible for a reward.
__LYF:__

- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf)
- [https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf ](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf) 

__Lending Market:__

- [https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf)


__Proof of Concept (PoC) Requirements__

A PoC is required for the following severity levels:
- Smart Contract - Critical
- Smart Contract - High
- Smart Contract - Medium

All PoCs submitted must comply with the Immunefi-wide [PoC Guidelines and Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules) Bug report submissions without a PoC when a PoC is required will not be provided with a reward.

__Reward Payment Terms__

As part of the bug bounty matching program, Optimism will contribute __52,500__ OP tokens to match the rewards offered by Extra Finance. This means that for every reward paid out by Extra Finance to a security researcher, Optimism will provide an additional, matching reward, in OP tokens. The total reward pool for this program is __52,500__ OP tokens.

Payouts are handled by the Extra Finance team directly and are denominated in USD. However, payments are done in USDC.

## Program overview

Extra Finance is a professional leveraged yield farming (LYF) protocol:

__Leveraged Yield Farming (LYF):__

By offering up to 7x leverage, Extra Finance enables users to farm a diverse range of farming pools with customized farming strategies. Extra Finance also functions as a lending protocol, users can deposit funds to earn lending interest.

The Optimism Foundation is excited to announce its latest bug bounty matching program, specifically designed for Extra Finance. In collaboration with Immunefi, the Optimism Foundation aims to encourage and incentivize security researchers to find and responsibly disclose vulnerabilities. This will contribute to a safer ecosystem for all Optimism participants involved and showcase the foundation's commitment to security. 

To participate, security researchers should focus on identifying critical and high Extra Finance-specific vulnerabilities that could potentially impact the wider Optimism ecosystem. Optimism will match any rewards offered by Extra Finance, contributing a total of 52,500 OP tokens.

For more information about Extra Finance, please visit [https://extrafi.io/](https://extrafi.io/) 

Extra Finance provides rewards in USDC. For more details about the payment process, please view the Rewards by Threat Level section further below. 

__Lending Market:__

Extrafi Xlend is a smart lending protocol offering features such as multi-accounts and liquidation-free borrowing. Its integrated smart accounts unlock advanced on-chain lending and borrowing strategies.

__Primacy of Impact vs Primacy of Rules__

Extra Finance adheres to the Primacy of Impact for the following severity levels:
- Smart Contract - Critical
- Smart Contract - High
- Smart Contract - Medium

If a category’s severity level is covered within the Primacy of Impact, it means that even if the impacted asset is not in-scope but is owned by the project, then it would be considered as in-scope of the bug bounty program as long as it involves an impact under that respective severity level. When submitting a report, just select the Primacy of Impact asset placeholder. If the team behind this project has multiple projects, those other projects are not covered under the Primacy of Impact of this program. Instead, check if those other projects have a bug bounty program on Immunefi.

Testnet and mock files are not covered under the Primacy of Impact.

All other severity levels not listed here are considered under the Primacy of Rules, which means that they are bound by the terms of the bug bounty program.


__Immunefi Standard Badge__

Extra Finance has satisfied the requirements for the [Immunefi Standard Badge](https://immunefisupport.zendesk.com/hc/en-us/articles/6427157117713-The-Immunefi-Standard-Badge-), which is given to projects that adhere to our best practices.63

