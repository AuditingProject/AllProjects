# velvet-capital-v2 — Immunefi scope

- Program: https://immunefi.com/bug-bounty/velvet-capital-v2/scope/
- Max bounty: **$10,000**
- KYC required: **yes**
- Launched 2024-09-05, program updated 2026-01-29
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | High | $3,000 – $5,000 |
| Smart contract | Medium | $1,000 |
| Smart contract | Critical | $7,000 – $10,000 (10% of funds at risk) |

## Assets in scope (14)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://basescan.org/address/0x6e3e0fe13dae2c42cca7ae2e849b0976e2e63e05 | DepositBatch |
| 2 | Smart contract | https://basescan.org/address/0xe4e23120a38c4348d7e22ab23976fa0c4bf6e2ed | DepositManager |
| 3 | Smart contract | https://basescan.org/address/0xaead7d9202f3efb73657ca031f645c6b46cfe177 | WithdrawBatch |
| 4 | Smart contract | https://basescan.org/address/0xa9452eaf5aa440790e6ca90e38c10b40fb611e59 | WithdrawManager |
| 5 | Smart contract | https://basescan.org/address/0x6ec2a3a88a72943d2e87ed05cdf25914983ab7f6 | EnsoHandler |
| 6 | Smart contract | https://basescan.org/address/0x3475dd4b852baf51279a463f0e5f38e5aed2e784 | BasePortfolioAddress |
| 7 | Smart contract | https://basescan.org/address/0x4f69982392ba29e98c62b07482be190301d12ca7 | BaseTokenExclusionManagerAddress |
| 8 | Smart contract | https://basescan.org/address/0x0827cf431c2f2a4f12584fddb6f01ab0e26ccbe0 | BaseRebalancingAddress |
| 9 | Smart contract | https://basescan.org/address/0x17e14a8bc2380096f9e9eafea47fe1015502a09d | BaseAssetManagementConfigAddress |
| 10 | Smart contract | https://basescan.org/address/0xc05d2e4bbe442172c649faa1fdc503e627062bd3 | FeeModuleImplementationAddress |
| 11 | Smart contract | https://basescan.org/address/0xf93659fb357899e092813bc3a2959ceDb3282a7f | PortfolioFactory |
| 12 | Smart contract | https://basescan.org/address/0x0490A477e4fc96392bDf1e2846E3230A1263a5D2 | ProtocolConfig |
| 13 | Smart contract | https://basescan.org/address/0x608e93ad410f3e3288dfc1a60446925a0fcf967e | PriceOracle |
| 14 | Smart contract | https://immunefi.com/ | Primacy of Impact |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| velvet-core | https://github.com/Velvet-Capital/velvet-core | main (default) | bd2b8a1d474014a7aebd4a9f4ea6917d76a4400b | resolved from program-data.json `programCodebases` → https://github.com/Velvet-Capital (org), repo located with `gh api orgs/Velvet-Capital/repos` |

### How these repos were matched

- `velvet-core` — Evidence: the program's own "Velvet Codebase" link (`programCodebases`) is `github.com/Velvet-Capital`; within that org, `velvet-core` is described as "Core smart contracts of Velvet Capital" and is the repo whose layout matches this (Base / Portfolio-generation) deployment. Verification: Sourcify reports the verified on-chain names of in-scope assets `0x6e3e...3e05` → `contracts/bundle/DepositBatch.sol:DepositBatch` and `0x6ec2...b7f6` → `contracts/handler/ExternalSwapHandler/EnsoHandler.sol:EnsoHandler`; both paths exist verbatim in this repo. Every other in-scope asset description also resolves to a source file here: `DepositManager`, `WithdrawBatch`, `WithdrawManager` (`contracts/bundle/`), `PortfolioFactory` (`contracts/PortfolioFactory.sol`), `ProtocolConfig` (`contracts/config/protocol/`), `PriceOracle` (`contracts/oracle/`), and the implementation addresses `BasePortfolioAddress` → `contracts/core/Portfolio.sol`, `BaseTokenExclusionManagerAddress` → `contracts/core/management/TokenExclusionManager.sol`, `BaseRebalancingAddress` → `contracts/rebalance/Rebalancing.sol`, `BaseAssetManagementConfigAddress` → `contracts/config/assetManagement/AssetManagementConfig.sol`, `FeeModuleImplementationAddress` → `contracts/fee/FeeModule.sol`. (`Velvet-Capital/Velvet-v4` in the same org has the same file layout plus later "ExternalPositions" contracts that are not in this scope, so it was not cloned.)

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **11 of 13** in-scope addresses have full source on disk.
- 2 have no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

Sources: sourcify (11).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x6e3e0fe13dae` | DepositBatch | `contracts/bundle/DepositBatch.sol:DepositBatch` | `deployed-source/0x6e3e0fe13dae__DepositBatch/` |
| `0xe4e23120a38c` | DepositManager | `contracts/bundle/DepositManager.sol:DepositManager` | `deployed-source/0xe4e23120a38c__DepositManager/` |
| `0xaead7d9202f3` | WithdrawBatch | `contracts/bundle/WithdrawBatch.sol:WithdrawBatch` | `deployed-source/0xaead7d9202f3__WithdrawBatch/` |
| `0xa9452eaf5aa4` | WithdrawManager | `contracts/bundle/WithdrawManager.sol:WithdrawManager` | `deployed-source/0xa9452eaf5aa4__WithdrawManager/` |
| `0x6ec2a3a88a72` | EnsoHandler | `contracts/handler/ExternalSwapHandler/EnsoHandler.sol:EnsoHandler` | `deployed-source/0x6ec2a3a88a72__EnsoHandler/` |
| `0x3475dd4b852b` | BasePortfolioAddress | `contracts/core/Portfolio.sol:Portfolio` | `deployed-source/0x3475dd4b852b__BasePortfolioAddress/` |
| `0x4f69982392ba` | BaseTokenExclusionManagerAddress | `contracts/core/management/TokenExclusionManager.sol:TokenExclusionManager` | `deployed-source/0x4f69982392ba__BaseTokenExclusionManagerAddress/` |
| `0x0827cf431c2f` | BaseRebalancingAddress | `contracts/rebalance/Rebalancing.sol:Rebalancing` | `deployed-source/0x0827cf431c2f__BaseRebalancingAddress/` |
| `0x17e14a8bc238` | BaseAssetManagementConfigAddress | `contracts/config/assetManagement/AssetManagementConfig.sol:AssetManagementConfig` | `deployed-source/0x17e14a8bc238__BaseAssetManagementConfigAddress/` |
| `0xc05d2e4bbe44` | FeeModuleImplementationAddress | `contracts/fee/FeeModule.sol:FeeModule` | `deployed-source/0xc05d2e4bbe44__FeeModuleImplementationAddress/` |
| `0x608e93ad410f` | PriceOracle | `contracts/oracle/PriceOracleL2.sol:PriceOracleL2` | `deployed-source/0x608e93ad410f__PriceOracle/` |

**No source retrieved** (by chain): Base (2).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

**Coverage:** all 13 in-scope smart-contract assets are now covered by the cloned `velvet-core` repo (mapping in the note above). The only remaining entry without source is the `https://immunefi.com/` "Primacy of Impact" placeholder, which is not a contract.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://basescan.org/address/0x6e3e0fe13dae2c42cca7ae2e849b0976e2e63e05 — DepositBatch
- [Smart contract] https://basescan.org/address/0xe4e23120a38c4348d7e22ab23976fa0c4bf6e2ed — DepositManager
- [Smart contract] https://basescan.org/address/0xaead7d9202f3efb73657ca031f645c6b46cfe177 — WithdrawBatch
- [Smart contract] https://basescan.org/address/0xa9452eaf5aa440790e6ca90e38c10b40fb611e59 — WithdrawManager
- [Smart contract] https://basescan.org/address/0x6ec2a3a88a72943d2e87ed05cdf25914983ab7f6 — EnsoHandler
- [Smart contract] https://basescan.org/address/0x3475dd4b852baf51279a463f0e5f38e5aed2e784 — BasePortfolioAddress
- [Smart contract] https://basescan.org/address/0x4f69982392ba29e98c62b07482be190301d12ca7 — BaseTokenExclusionManagerAddress
- [Smart contract] https://basescan.org/address/0x0827cf431c2f2a4f12584fddb6f01ab0e26ccbe0 — BaseRebalancingAddress
- [Smart contract] https://basescan.org/address/0x17e14a8bc2380096f9e9eafea47fe1015502a09d — BaseAssetManagementConfigAddress
- [Smart contract] https://basescan.org/address/0xc05d2e4bbe442172c649faa1fdc503e627062bd3 — FeeModuleImplementationAddress
- [Smart contract] https://basescan.org/address/0xf93659fb357899e092813bc3a2959ceDb3282a7f — PortfolioFactory
- [Smart contract] https://basescan.org/address/0x0490A477e4fc96392bDf1e2846E3230A1263a5D2 — ProtocolConfig
- [Smart contract] https://basescan.org/address/0x608e93ad410f3e3288dfc1a60446925a0fcf967e — PriceOracle

## Impacts in scope

**Smart contract — Critical**
- Manipulation of governance voting result deviating from voted outcome and resulting in a direct change from intended effect of original results
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Theft of unclaimed royalties
- Temporary freezing of funds for more than 24 hours

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Block stuffing
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft Gas

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the[ Immunefi Vulnerability Severity Classification System V2.3. ](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/)

__Reward Calculation for Critical Level Reports__

For critical smart contract bugs, the reward amount is __10%__ of the funds directly affected up to a maximum of __USD 51 000__. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of __USD 10 000__ is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

__Repeatable Attack Limitations__

If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attacks within the first hour will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading or pausing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk. 

For critical repeatable attacks on smart contracts that cannot be upgraded or paused, the project will consider the cumulative impact of the repeatable attacks for a reward. This is because the project cannot prevent the attacker from repeatedly exploiting the vulnerability until all funds are drained and/or other irreversible damage is done. Therefore, this warrants a reward equivalent to 10% of funds at risk, capped at the maximum critical reward. 

__Reward Calculation for High Level Reports__

High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are considered at the full amount of funds at risk, capped at the maximum high reward. This is to incentivize security researchers to uncover and responsibly disclose vulnerabilities that may have not have significant monetary value today, but could still be damaging to the project if it goes unaddressed.   

__Reward Payment Terms__

Payouts are handled by the __Velvet__ team directly and are denominated in __USD__. However, payments are done in __USDC__

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

Velvet.Capital is a DeFi Asset Management protocol that helps launch & manage on-chain funds and structured products. Users can launch their own tokenized fund or access existing ones created by world-class managers and influencers.

For more information about Velvet, please visit [https://www.velvet.capital/](https://www.velvet.capital/)

Velvet provides rewards in __USDC__, denominated in __USD__. For more details about the payment process, please view the Rewards by Threat Level section further below. 

__Primacy of Impact vs Primacy of Rules__

Velvet adheres to the Primacy of Impact for the following impacts:
- Smart Contract - Critical
- Smart Contract - High
- Smart Contract - Medium

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. For more information, please see[ Best Practices: Primacy of Impact ](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact)

When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact for this program. Instead, check if those other projects have a bug bounty program on Immunefi.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms and conditions set within this program.

__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the [Immunefi PoC Guidelines and Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules)

__Previous Audits__

Velvet’s completed audit reports can be found at [https://github.com/Velvet-Capital/audits.](https://github.com/Velvet-Capital/audits) Any unfixed vulnerabilities  mentioned in these reports are not eligible for a reward.

__Immunefi Standard Badge__

By adhering to Immunefi’s best practice recommendations, Velvet has satisfied the requirements for the [Immunefi Standard Badge.](https://immunefisupport.zendesk.com/hc/en-us/articles/15006865432209)63:T93

