# staderforeth — Immunefi scope

- Program: https://immunefi.com/bug-bounty/staderforeth/scope/
- Max bounty: **$1,000,000**
- KYC required: **no**
- Launched 2023-07-08, program updated 2025-01-01
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $100,000 – $1,000,000 (10% of funds at risk) |
| Smart contract | High | $100,000 |
| Smart contract | Medium | $20,000 |

## Assets in scope (22)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0x4ABEF2263d5A5ED582FC9A9789a41D85b68d69DB | StaderConfig |
| 2 | Smart contract | https://etherscan.io/address/0x03ABEEC03BF39ac5A5C8886cF3496326d8164E1E | VaultFactory |
| 3 | Smart contract | https://etherscan.io/address/0x85A22763f94D703d2ee39E9374616ae4C1612569 | Auction |
| 4 | Smart contract | https://etherscan.io/address/0xA35b1B31Ce002FBF2058D22F30f95D405200A15b | ETHx Token |
| 5 | Smart contract | https://etherscan.io/address/0x84ffDC9De310144D889540A49052F6d1AdB2C335 | OperatorRewardCollector |
| 6 | Smart contract | https://etherscan.io/address/0x84645f1B80475992Df2C65c28bE6688d15dc6ED6 | Penalty |
| 7 | Smart contract | https://etherscan.io/address/0xaf42d795A6D279e9DCc19DC0eE1cE3ecd4ecf5dD | PermissionedNodeRegistry |
| 8 | Smart contract | https://etherscan.io/address/0x09134C643A6B95D342BdAf081Fa473338F066572 | PermissionedPool |
| 9 | Smart contract | https://etherscan.io/address/0x4f4Bfa0861F62309934a5551E0B2541Ee82fdcF1 | PermissionlessNodeRegistry |
| 10 | Smart contract | https://etherscan.io/address/0xd1a72Bd052e0d65B7c26D3dd97A98B74AcbBb6c5 | PermissionlessPool |
| 11 | Smart contract | https://etherscan.io/address/0x62e0b431990Ea128fe685E764FB04e7d604603B0 | PoolSelector |
| 12 | Smart contract | https://etherscan.io/address/0xeDA89ed8F89D786D816F8E14CF8d2F90c6BF763f | PoolUtils |
| 13 | Smart contract | https://etherscan.io/address/0x7Af4730cc8EbAd1a050dcad5c03c33D2793EE91f | SDCollateral |
| 14 | Smart contract | https://etherscan.io/address/0x9d4C3166c59412CEdBe7d901f5fDe41903a1d6Fc | Permissioned Socializing Pool |
| 15 | Smart contract | https://etherscan.io/address/0x1DE458031bFbe5689deD5A8b9ed57e1E79EaB2A4 | Permissionless Socializing Pool |
| 16 | Smart contract | https://etherscan.io/address/0xbe3781CE437Cc3fC8c8167913B4d462347D11F20 | StaderInsuranceFund |
| 17 | Smart contract | https://etherscan.io/address/0xF64bAe65f6f2a5277571143A24FaaFDFC0C2a737 | StaderOracle |
| 18 | Smart contract | https://etherscan.io/address/0xcf5EA1b38380f6aF39068375516Daf40Ed70D299 | Stader Stake Pool Manager |
| 19 | Smart contract | https://etherscan.io/address/0x9F0491B32DBce587c50c4C43AB303b06478193A7 | User Withdrawal Manager |
| 20 | Smart contract | https://etherscan.io/address/0x97c92752DD8a8947cE453d3e35D2cad5857367af | NodeELRewardVault |
| 21 | Smart contract | https://etherscan.io/address/0x3073cC90aD39E0C30bb0d4c70F981FbD00f3458f | validatorWithdrawalVault |
| 22 | Smart contract | https://immunefi.com | Primacy of Impact |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `ethx/` | https://github.com/stader-labs/ethx | origin/mainnet_V0 | 1cf1efe 2024-04-18 Bump debug and eth-gas-reporter (#231) | program codebase link |

In-scope paths inside `ethx/` (1):

- `contracts`

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **21 of 21** in-scope addresses have full source on disk.

Sources: blockscout:eth.blockscout.com (20), sourcify (1).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x4ABEF2263d5A` | StaderConfig | `TransparentUpgradeableProxy` | `deployed-source/0x4ABEF2263d5A__StaderConfig/` |
| `0x03ABEEC03BF3` | VaultFactory | `TransparentUpgradeableProxy` | `deployed-source/0x03ABEEC03BF3__VaultFactory/` |
| `0x85A22763f94D` | Auction | `TransparentUpgradeableProxy` | `deployed-source/0x85A22763f94D__Auction/` |
| `0xA35b1B31Ce00` | ETHx Token | `TransparentUpgradeableProxy` | `deployed-source/0xA35b1B31Ce00__ETHx_Token/` |
| `0x84ffDC9De310` | OperatorRewardCollector | `TransparentUpgradeableProxy` | `deployed-source/0x84ffDC9De310__OperatorRewardCollector/` |
| `0x84645f1B8047` | Penalty | `TransparentUpgradeableProxy` | `deployed-source/0x84645f1B8047__Penalty/` |
| `0xaf42d795A6D2` | PermissionedNodeRegistry | `TransparentUpgradeableProxy` | `deployed-source/0xaf42d795A6D2__PermissionedNodeRegistry/` |
| `0x09134C643A6B` | PermissionedPool | `TransparentUpgradeableProxy` | `deployed-source/0x09134C643A6B__PermissionedPool/` |
| `0x4f4Bfa0861F6` | PermissionlessNodeRegistry | `TransparentUpgradeableProxy` | `deployed-source/0x4f4Bfa0861F6__PermissionlessNodeRegistry/` |
| `0xd1a72Bd052e0` | PermissionlessPool | `TransparentUpgradeableProxy` | `deployed-source/0xd1a72Bd052e0__PermissionlessPool/` |
| `0x62e0b431990E` | PoolSelector | `TransparentUpgradeableProxy` | `deployed-source/0x62e0b431990E__PoolSelector/` |
| `0xeDA89ed8F89D` | PoolUtils | `TransparentUpgradeableProxy` | `deployed-source/0xeDA89ed8F89D__PoolUtils/` |
| `0x7Af4730cc8Eb` | SDCollateral | `TransparentUpgradeableProxy` | `deployed-source/0x7Af4730cc8Eb__SDCollateral/` |
| `0x9d4C3166c594` | Permissioned Socializing Pool | `TransparentUpgradeableProxy` | `deployed-source/0x9d4C3166c594__Permissioned_Socializing_Pool/` |
| `0x1DE458031bFb` | Permissionless Socializing Pool | `TransparentUpgradeableProxy` | `deployed-source/0x1DE458031bFb__Permissionless_Socializing_Pool/` |
| `0xbe3781CE437C` | StaderInsuranceFund | `TransparentUpgradeableProxy` | `deployed-source/0xbe3781CE437C__StaderInsuranceFund/` |
| `0xF64bAe65f6f2` | StaderOracle | `TransparentUpgradeableProxy` | `deployed-source/0xF64bAe65f6f2__StaderOracle/` |
| `0xcf5EA1b38380` | Stader Stake Pool Manager | `TransparentUpgradeableProxy` | `deployed-source/0xcf5EA1b38380__Stader_Stake_Pool_Manager/` |
| `0x9F0491B32DBc` | User Withdrawal Manager | `TransparentUpgradeableProxy` | `deployed-source/0x9F0491B32DBc__User_Withdrawal_Manager/` |
| `0x97c92752DD8a` | NodeELRewardVault | `NodeELRewardVault` | `deployed-source/0x97c92752DD8a__NodeELRewardVault/` |
| `0x3073cC90aD39` | validatorWithdrawalVault | `contracts/ValidatorWithdrawalVault.sol:ValidatorWithdrawalVault` | `deployed-source/0x3073cC90aD39__validatorWithdrawalVault/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0x4ABEF2263d5A5ED582FC9A9789a41D85b68d69DB — StaderConfig
- [Smart contract] https://etherscan.io/address/0x03ABEEC03BF39ac5A5C8886cF3496326d8164E1E — VaultFactory
- [Smart contract] https://etherscan.io/address/0x85A22763f94D703d2ee39E9374616ae4C1612569 — Auction
- [Smart contract] https://etherscan.io/address/0xA35b1B31Ce002FBF2058D22F30f95D405200A15b — ETHx Token
- [Smart contract] https://etherscan.io/address/0x84ffDC9De310144D889540A49052F6d1AdB2C335 — OperatorRewardCollector
- [Smart contract] https://etherscan.io/address/0x84645f1B80475992Df2C65c28bE6688d15dc6ED6 — Penalty
- [Smart contract] https://etherscan.io/address/0xaf42d795A6D279e9DCc19DC0eE1cE3ecd4ecf5dD — PermissionedNodeRegistry
- [Smart contract] https://etherscan.io/address/0x09134C643A6B95D342BdAf081Fa473338F066572 — PermissionedPool
- [Smart contract] https://etherscan.io/address/0x4f4Bfa0861F62309934a5551E0B2541Ee82fdcF1 — PermissionlessNodeRegistry
- [Smart contract] https://etherscan.io/address/0xd1a72Bd052e0d65B7c26D3dd97A98B74AcbBb6c5 — PermissionlessPool
- [Smart contract] https://etherscan.io/address/0x62e0b431990Ea128fe685E764FB04e7d604603B0 — PoolSelector
- [Smart contract] https://etherscan.io/address/0xeDA89ed8F89D786D816F8E14CF8d2F90c6BF763f — PoolUtils
- [Smart contract] https://etherscan.io/address/0x7Af4730cc8EbAd1a050dcad5c03c33D2793EE91f — SDCollateral
- [Smart contract] https://etherscan.io/address/0x9d4C3166c59412CEdBe7d901f5fDe41903a1d6Fc — Permissioned Socializing Pool
- [Smart contract] https://etherscan.io/address/0x1DE458031bFbe5689deD5A8b9ed57e1E79EaB2A4 — Permissionless Socializing Pool
- [Smart contract] https://etherscan.io/address/0xbe3781CE437Cc3fC8c8167913B4d462347D11F20 — StaderInsuranceFund
- [Smart contract] https://etherscan.io/address/0xF64bAe65f6f2a5277571143A24FaaFDFC0C2a737 — StaderOracle
- [Smart contract] https://etherscan.io/address/0xcf5EA1b38380f6aF39068375516Daf40Ed70D299 — Stader Stake Pool Manager
- [Smart contract] https://etherscan.io/address/0x9F0491B32DBce587c50c4C43AB303b06478193A7 — User Withdrawal Manager
- [Smart contract] https://etherscan.io/address/0x97c92752DD8a8947cE453d3e35D2cad5857367af — NodeELRewardVault
- [Smart contract] https://etherscan.io/address/0x3073cC90aD39E0C30bb0d4c70F981FbD00f3458f — validatorWithdrawalVault

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user deposited funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of staked funds
- Miner-extractable value (MEV)

**Smart contract — High**
- Permanent freezing of unclaimed yield
- Protocol insolvency
- Theft of unclaimed yield on a recurring basis

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Theft of gas
- Unbounded gas consumption

## Rewards / payout terms

Rewards are distributed according to the impact the vulnerability could otherwise cause based on the Impacts in Scope table further below. 

__Reward Calculation for Critical Level Reports__

For critical Smart Contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 1 000 000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 100 000 is to be rewarded in order to incentivize security researchers against withholding a bug report.   

__Repeatable Attack Limitations__

In cases of repeatable attacks for smart contract bugs, only the first attack will be counted, regardless of whether the smart contract is upgradable, pausable, or killable.

__Public Disclosure of Known Issues__

Bug reports covering previously-discovered bugs acknowledged below are not eligible for any reward through the bug bounty program. 
- SD Auction final bid price can be gamed by MEV optimization. (This is intended)
- Node Operator can avoid small portion of validator penalty by exiting at the right time. (This is limited to once per validator and cost of exiting and reactivation does not justify penalty saved)
- ER update via chainlink may return incorrect or state data as it is not implemented yet, Currently ER data is submitted by oracle members.
- Protocol will not benefit from slashing mechanism when remaining penalty bigger than minThreshold of SD 

__Previous Audits__

Stader has provided these completed audit review reports for reference. Any unfixed vulnerability mentioned in these reports are not eligible for a reward.
- [https://www.staderlabs.com/audits/ethereum/smartcontracts/ETHx_SmartContract_Audit_Report_by_Halborn_v2.pdf](https://www.staderlabs.com/audits/ethereum/smartcontracts/ETHx_SmartContract_Audit_Report_by_Halborn_v2.pdf)
- [https://www.staderlabs.com/audits/ethereum/smartcontracts/ETHx_SmartContract_audit_report_by_SigmaPrime_v2.pdf](https://www.staderlabs.com/audits/ethereum/smartcontracts/ETHx_SmartContract_audit_report_by_SigmaPrime_v2.pdf)

__Proof of Concept (PoC) Requirements__

A PoC is required for the following severity levels:
- Smart Contract - Critical
- Smart Contract - High
- Smart Contract - Medium

All PoCs submitted must comply with the Immunefi-wide [PoC Guidelines and Rules](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules). Bug report submissions without a PoC when a PoC is required will not be provided with a reward.

__Reward Payment Terms__

Payouts are handled by the Stader team directly and are denominated in USD. However, payments are done in USDC.

## Program overview

Stader is a non-custodial smart contract based staking platform that helps you conveniently discover and access staking solutions.

Stader has built liquid staking tokens on Polygon, BNB, Fantom, among others.

For more information about Stader for ETH, please visit [https://www.staderlabs.com/eth/](https://www.staderlabs.com/eth/)

Stader provides rewards in USDC. For more details about the payment process, please view the Rewards by Threat Level section further below. 


__Primacy of Impact vs Primacy of Rules__

Stader adheres to the Primacy of Impact for the following severity levels:
- Smart Contract - Critical
- Smart Contract - High

If a category’s severity level is covered within the Primacy of Impact, it means that even if the impacted asset is not in-scope but is owned by the project, then it would be considered as in-scope of the bug bounty program as long as it involves an impact under that respective severity level. When submitting a report, just select the Primacy of Impact asset placeholder. If the team behind this project has multiple projects, those other projects are not covered under the Primacy of Impact of this program. Instead, check if those other projects have a bug bounty program on Immunefi.

Testnet and mock files are not covered under the Primacy of Impact.

All other severity levels not listed here are considered under the Primacy of Rules, which means that they are bound by the terms of the bug bounty program.

__Immunefi Standard Badge__

Stader has satisfied the requirements for the [Immunefi Standard Badge](https://immunefisupport.zendesk.com/hc/en-us/articles/6427157117713-The-Immunefi-Standard-Badge-), which is given to projects that adhere to our best practices.63

