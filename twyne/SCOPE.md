# twyne — Immunefi scope

- Program: https://immunefi.com/bug-bounty/twyne/scope/
- Max bounty: **$50,000**
- KYC required: **no**
- Launched 2026-01-16, program updated 2026-10-12
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $10,000 – $50,000 (10% of funds at risk) |
| Smart contract | High | $3,000 – $10,000 |

## Assets in scope (17)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0x7613D202Af490c3d1cE1873b0a7022a34E89815f | eWSTETH Intermediate Credit Vault |
| 2 | Smart contract | https://etherscan.io/address/0x75029a47f28550C93Ad5A3BbD2d9b5315204B561 | aWSTETH Intermediate Credit Vault |
| 3 | Smart contract | https://etherscan.io/address/0x87b8081A3ace680f35125F469526Ac10f5418Ca7 | eWETH Intermediate Credit Vault |
| 4 | Smart contract | https://etherscan.io/address/0xB5Eb1d005e389Bef38161691E2083b4d86FF647a | Intermediate Vault Factory |
| 5 | Smart contract | https://etherscan.io/address/0xb001f039D76bA48E577A17c04b6940DB37aF8648 | Euler Oracle Router |
| 6 | Smart contract | https://etherscan.io/address/0x0acd3A3c8Ab6a5F7b5A594C88DFa28999dA858aC | Vault Manager |
| 7 | Smart contract | https://etherscan.io/address/0xa1517cCe0bE75700A8838EA1cEE0dc383cd3A332 | Collateral Vault Factory |
| 8 | Smart contract | https://immunefi.com/ | Primacy of Impact |
| 9 | Smart contract | https://etherscan.io/address/0xFaBA8f777996C0C28fe9e6554D84cB30ca3e1881 | awstETH Wrapper |
| 10 | Smart contract | https://etherscan.io/address/0x868a21426852A775395d4b90De23B3e3E662bd78 | Aave V3 Teleport Operator |
| 11 | Smart contract | https://etherscan.io/address/0x451949bde57aBe2F5DBD4758Cd50C6DCfC093A4C | Aave V3 Leverage Operator |
| 12 | Smart contract | https://etherscan.io/address/0x229fE10bC00bBE99Ac99703647D4f74F31605e91 | Aave V3 Deleverage Operator |
| 13 | Smart contract | https://etherscan.io/address/0xef39D6493884C4C84D38a4bFF879Ce16CEdE702a | Twyne EVC |
| 14 | Smart contract | https://etherscan.io/address/0x79CF33e623555E899d4EE122b9BfA0214fa5A4A1 | aPT22Oct2026 Intermediate Credit Vault |
| 15 | Smart contract | https://etherscan.io/address/0x0aF56aFBDDCb140323445BD7211Ba90E54e5FD1C | aPT22Oct2026 Wrapper |
| 16 | Smart contract | https://etherscan.io/address/0xd07e1dd26f415fed3e8c490623a80ab55cf7bdbb | Euler Leverage Operator |
| 17 | Smart contract | https://etherscan.io/address/0xb7a7Cf5EB16C124562857632F8f86Ed627e6cc35 | Aave V3 Leverage Operator |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `twyne-contracts-v1/` | https://github.com/0xTwyne/twyne-contracts-v1 | main | beb4bf1 2026-09-09 morpho integration (#46) | program codebase link |
| `aave-v3-aToken-wrapper/` | https://github.com/0xTwyne/aave-v3-aToken-wrapper | main | 797be33 2026-06-17 add admin and pause guardian (#9) | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **14 of 16** in-scope addresses have full source on disk.
- 2 have no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

Sources: blockscout:eth.blockscout.com (10), sourcify (4).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x7613D202Af49` | eWSTETH Intermediate Credit Vault | `BeaconProxy` | `deployed-source/0x7613D202Af49__eWSTETH_Intermediate_Credit_Vault/` |
| `0x75029a47f285` | aWSTETH Intermediate Credit Vault | `BeaconProxy` | `deployed-source/0x75029a47f285__aWSTETH_Intermediate_Credit_Vault/` |
| `0x87b8081A3ace` | eWETH Intermediate Credit Vault | `BeaconProxy` | `deployed-source/0x87b8081A3ace__eWETH_Intermediate_Credit_Vault/` |
| `0xB5Eb1d005e38` | Intermediate Vault Factory | `GenericFactory` | `deployed-source/0xB5Eb1d005e38__Intermediate_Vault_Factory/` |
| `0xb001f039D76b` | Euler Oracle Router | `EulerRouter` | `deployed-source/0xb001f039D76b__Euler_Oracle_Router/` |
| `0x0acd3A3c8Ab6` | Vault Manager | `ERC1967Proxy` | `deployed-source/0x0acd3A3c8Ab6__Vault_Manager/` |
| `0xa1517cCe0bE7` | Collateral Vault Factory | `lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0xa1517cCe0bE7__Collateral_Vault_Factory/` |
| `0xFaBA8f777996` | awstETH Wrapper | `ERC1967Proxy` | `deployed-source/0xFaBA8f777996__awstETH_Wrapper/` |
| `0x868a21426852` | Aave V3 Teleport Operator | `src/operators/AaveV3TeleportOperator.sol:AaveV3TeleportOperator` | `deployed-source/0x868a21426852__Aave_V3_Teleport_Operator/` |
| `0x451949bde57a` | Aave V3 Leverage Operator | `src/operators/AaveV3LeverageOperator.sol:AaveV3LeverageOperator` | `deployed-source/0x451949bde57a__Aave_V3_Leverage_Operator/` |
| `0x229fE10bC00b` | Aave V3 Deleverage Operator | `src/operators/AaveV3DeleverageOperator.sol:AaveV3DeleverageOperator` | `deployed-source/0x229fE10bC00b__Aave_V3_Deleverage_Operator/` |
| `0xef39D6493884` | Twyne EVC | `EthereumVaultConnector` | `deployed-source/0xef39D6493884__Twyne_EVC/` |
| `0x79CF33e62355` | aPT22Oct2026 Intermediate Credit Vault | `BeaconProxy` | `deployed-source/0x79CF33e62355__aPT22Oct2026_Intermediate_Credit_Vault/` |
| `0x0aF56aFBDDCb` | aPT22Oct2026 Wrapper | `ERC1967Proxy` | `deployed-source/0x0aF56aFBDDCb__aPT22Oct2026_Wrapper/` |

**No source retrieved** (by chain): Ethereum (2).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0x7613D202Af490c3d1cE1873b0a7022a34E89815f — eWSTETH Intermediate Credit Vault
- [Smart contract] https://etherscan.io/address/0x75029a47f28550C93Ad5A3BbD2d9b5315204B561 — aWSTETH Intermediate Credit Vault
- [Smart contract] https://etherscan.io/address/0x87b8081A3ace680f35125F469526Ac10f5418Ca7 — eWETH Intermediate Credit Vault
- [Smart contract] https://etherscan.io/address/0xB5Eb1d005e389Bef38161691E2083b4d86FF647a — Intermediate Vault Factory
- [Smart contract] https://etherscan.io/address/0xb001f039D76bA48E577A17c04b6940DB37aF8648 — Euler Oracle Router
- [Smart contract] https://etherscan.io/address/0x0acd3A3c8Ab6a5F7b5A594C88DFa28999dA858aC — Vault Manager
- [Smart contract] https://etherscan.io/address/0xa1517cCe0bE75700A8838EA1cEE0dc383cd3A332 — Collateral Vault Factory
- [Smart contract] https://etherscan.io/address/0xFaBA8f777996C0C28fe9e6554D84cB30ca3e1881 — awstETH Wrapper
- [Smart contract] https://etherscan.io/address/0x868a21426852A775395d4b90De23B3e3E662bd78 — Aave V3 Teleport Operator
- [Smart contract] https://etherscan.io/address/0x451949bde57aBe2F5DBD4758Cd50C6DCfC093A4C — Aave V3 Leverage Operator
- [Smart contract] https://etherscan.io/address/0x229fE10bC00bBE99Ac99703647D4f74F31605e91 — Aave V3 Deleverage Operator
- [Smart contract] https://etherscan.io/address/0xef39D6493884C4C84D38a4bFF879Ce16CEdE702a — Twyne EVC
- [Smart contract] https://etherscan.io/address/0x79CF33e623555E899d4EE122b9BfA0214fa5A4A1 — aPT22Oct2026 Intermediate Credit Vault
- [Smart contract] https://etherscan.io/address/0x0aF56aFBDDCb140323445BD7211Ba90E54e5FD1C — aPT22Oct2026 Wrapper
- [Smart contract] https://etherscan.io/address/0xd07e1dd26f415fed3e8c490623a80ab55cf7bdbb — Euler Leverage Operator
- [Smart contract] https://etherscan.io/address/0xb7a7Cf5EB16C124562857632F8f86Ed627e6cc35 — Aave V3 Leverage Operator

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Temporary freezing of funds (for at least 24 hours)
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield

## Out of scope (from the program page)

- Reverts in/through Operator contracts that solely prevent the execution of batched transactions shall be deemed out of scope.

## Notes on impacts

All vaults deployed using `CollateralVaultFactory` are considered in scope

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/). 

__Reward Calculation for Critical Level Reports__

For critical smart contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 50 000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD10 000 is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

__Repeatable Attack Limitations__

- If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading or pausing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk. 

- For critical repeatable attacks on smart contracts that cannot be upgraded or paused, the project will consider the cumulative impact of the repeatable attacks for a reward. This is because the project cannot prevent the attacker from repeatedly exploiting the vulnerability until all funds are drained and/or other irreversible damage is done. Therefore, this warrants a reward equivalent to 10% of funds at risk, capped at the maximum critical reward. 

__Reward Calculation for High Level Reports__

High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are rewarded within a range of USD 10 000 to USD 3 000 depending on the funds at risk, capped at the maximum high reward.  

In the event of temporary freezing, the reward doubles from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. This is because as the duration of the freezing lengthens, the potential for greater damage and subsequent reputational harm intensifies. Thus, by increasing the reward proportionally with the frozen duration, the project ensures stronger incentives for bug disclosure of this nature.

__Reward Payment Terms__

Payouts are handled by the Twyne team directly and are denominated in USD. However, payments are done in USDC on Ethereum.

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

Twyne is a modular risk layer that leverages credit-delegation to unlock new levels of capital efficiency in lending markets. Twyne empowers lending market users with the freedom to focus on their individual goals: lenders can re-lend, borrowers can re-borrow, and together they drive the emergence of new markets, ensuring capital flows to where it is needed most.

For more information about Twyne, please visit [https://twyne.xyz/](https://twyne.xyz/).

Twyne provides rewards in USDC on Ethereum, denominated in USD. For more details about the payment process, please view the Rewards by Threat Level section.

__Responsible Publication__

Twyne adheres to  **Category 2: Notice Required**. This Policy determines what information researchers are allowed to make public from their submitted bug reports. For more information about the category selected, please refer to our [Responsible Publication](https://immunefi.com/responsible-publication/) page.

__Primacy of Impact vs Primacy of Rules__

Twyne adheres to the Primacy of Impact for the following impacts:

- Smart Contract  —  Critical
- Smart Contract  —  High

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. 

For more information, please see [Best Practices: Primacy of Impact](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact) 

When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact for this program. Instead, check if those other projects have a bug bounty program on Immunefi.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.
All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms and conditions set within this program.

__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the [Immunefi PoC Guidelines and Rules](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules).

__Public Disclosure of Known Issues__

Bug reports covering previously-discovered bugs (listed below) are not eligible for a reward within this program. This includes known issues that the project is aware of but has consciously decided not to “fix”, necessary code changes, or any implemented operational mitigating procedures that can lessen potential risk. 
- Twyne inherits the assumptions of external lending markets it integrates. So security issues with Euler, for example, won’t be considered for a bounty.
- If the reserved credit amount after calling handleExternalLiquidation() is too small, debt may not be socialized and the entire batch will revert. Since these are small positions, it’s fine. Protocol can pay intermediate vault on collateral vault’s behalf.
- Issues stemming from external lending protocol changing its liquidation ltv. We’re bringing an upgrade to handle this soon.
- No slippage check on liquidate() or handleExternalLiquidation(). Liquidators need to check for slippage on their side.
- Credit reservation may fail if the intermediate vault doesn’t have enough liquidity.
- Issues related to chain re-orgs and network liveness
- Incompatibilities with ERC-4626 and ERC-20 unless they pose a direct security risk
- Issues related to censorship / frontrunning users that interact with Pyth and RedStone. We expect users to interact with the EVC or another multicall-like contract to update the price and retrieve it in a single call
- Issues stemming from sequencer downtime on L2s, including but not limited to inexistent sequencer liveness checks
- Any issue related to stuck funds for tokens that are airdropped to Twyne contracts
- Any issue related to rewards accrued to Twyne contracts, example: rewards assigned by external lending protocol or integrations
- After external liquidation and before calling `handleExternalLiquidation()`, the shares exchange rate can be higher if it creates bad debt for intermediate vault. So intermediate vault share holders have a window where they can use this fact to get more assets than they deserve.

__Previous Audits__

Twyne’s completed audit reports can be found at [https://twyne.gitbook.io/twyne/resources/security](https://twyne.gitbook.io/twyne/resources/security). Any unfixed vulnerabilities mentioned in these reports are not eligible for a reward.63:Ta2f,Rewards are di

