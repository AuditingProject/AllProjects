# immutable — Immunefi scope

- Program: https://immunefi.com/bug-bounty/immutable/scope/
- Max bounty: **$1,000,000**
- KYC required: **yes**
- Launched 2025-06-10, program updated 2026-01-29
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $50,000 – $1,000,000 (10% of funds at risk) |
| Smart contract | High | $5,000 – $20,000 |
| Smart contract | Medium | $1,000 |

## Assets in scope (10)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0xBa5E35E26Ae59c7aea6F029B68c6460De2d13eB6 | L1 Ethereum Mainnet Chain ID 1 - Bridge Proxy |
| 2 | Smart contract | https://etherscan.io/address/0x177EaFe0f1F3359375B1728dae0530a75C83E154 | L1 Ethereum Mainnet Chain ID 1 - Bridge Implementation |
| 3 | Smart contract | https://etherscan.io/address/0x4f49b53928a71e553bb1b0f66a5bcb54fd4e8932 | L1 Ethereum Mainnet Chain ID 1 - Adapter Proxy |
| 4 | Smart contract | https://etherscan.io/address/0xE2E91C1Ae2873720C3b975a8034e887A35323345 | L1 Ethereum Mainnet Chain ID 1 - Adapter Implementation |
| 5 | Smart contract | https://explorer.immutable.com/address/0xBa5E35E26Ae59c7aea6F029B68c6460De2d13eB6 | L2 zkEVM Chain ID 13371 - Bridge Proxy |
| 6 | Smart contract | https://explorer.immutable.com/address/0xb4c3597e6b090A2f6117780cEd103FB16B071A84 | L2 zkEVM Chain ID 13371 - Bridge Implementation |
| 7 | Smart contract | https://explorer.immutable.com/address/0x4f49B53928A71E553bB1B0F66a5BcB54Fd4E8932 | L2 zkEVM Chain ID 13371 - Adapter Proxy |
| 8 | Smart contract | https://explorer.immutable.com/address/0x1d49c44dc4BbDE68D8D51a9C5732f3a24e48EFA6 | L2 zkEVM Chain ID 13371 - Adapter Implementation |
| 9 | Smart contract | https://explorer.immutable.com/address/0x8804A8aA1F18f23aE8A456dD73806FdA3219FaD1 | L2 zkEVM Chain ID 13371 - ChildERC20 Token Template |
| 10 | Smart contract | https://immunefi.com/ | Primacy of Impact |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `zkevm-bridge-contracts/` | https://github.com/immutable/zkevm-bridge-contracts | main | 288d4f97 2026-05-22 Harden CI workflows and actions (#115) | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **9 of 9** in-scope addresses have full source on disk.

Sources: blockscout:explorer.immutable.com (5), blockscout:eth.blockscout.com (4).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xBa5E35E26Ae5` | L1 Ethereum Mainnet Chain ID 1 - Bridge Proxy | `TransparentUpgradeableProxy` | `deployed-source/0xBa5E35E26Ae5__L1_Ethereum_Mainnet_Chain_ID_1_-_Bridge_/` |
| `0x177EaFe0f1F3` | L1 Ethereum Mainnet Chain ID 1 - Bridge Implementation | `RootERC20BridgeFlowRate` | `deployed-source/0x177EaFe0f1F3__L1_Ethereum_Mainnet_Chain_ID_1_-_Bridge_/` |
| `0x4f49b53928a7` | L1 Ethereum Mainnet Chain ID 1 - Adapter Proxy | `TransparentUpgradeableProxy` | `deployed-source/0x4f49b53928a7__L1_Ethereum_Mainnet_Chain_ID_1_-_Adapter/` |
| `0xE2E91C1Ae287` | L1 Ethereum Mainnet Chain ID 1 - Adapter Implementation | `RootAxelarBridgeAdaptor` | `deployed-source/0xE2E91C1Ae287__L1_Ethereum_Mainnet_Chain_ID_1_-_Adapter/` |
| `0xBa5E35E26Ae5` | L2 zkEVM Chain ID 13371 - Bridge Proxy | `TransparentUpgradeableProxy` | `deployed-source/0xBa5E35E26Ae5__L2_zkEVM_Chain_ID_13371_-_Bridge_Proxy/` |
| `0xb4c3597e6b09` | L2 zkEVM Chain ID 13371 - Bridge Implementation | `ChildERC20Bridge` | `deployed-source/0xb4c3597e6b09__L2_zkEVM_Chain_ID_13371_-_Bridge_Impleme/` |
| `0x4f49B53928A7` | L2 zkEVM Chain ID 13371 - Adapter Proxy | `TransparentUpgradeableProxy` | `deployed-source/0x4f49B53928A7__L2_zkEVM_Chain_ID_13371_-_Adapter_Proxy/` |
| `0x1d49c44dc4Bb` | L2 zkEVM Chain ID 13371 - Adapter Implementation | `ChildAxelarBridgeAdaptor` | `deployed-source/0x1d49c44dc4Bb__L2_zkEVM_Chain_ID_13371_-_Adapter_Implem/` |
| `0x8804A8aA1F18` | L2 zkEVM Chain ID 13371 - ChildERC20 Token Template | `ChildERC20` | `deployed-source/0x8804A8aA1F18__L2_zkEVM_Chain_ID_13371_-_ChildERC20_Tok/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0xBa5E35E26Ae59c7aea6F029B68c6460De2d13eB6 — L1 Ethereum Mainnet Chain ID 1 - Bridge Proxy
- [Smart contract] https://etherscan.io/address/0x177EaFe0f1F3359375B1728dae0530a75C83E154 — L1 Ethereum Mainnet Chain ID 1 - Bridge Implementation
- [Smart contract] https://etherscan.io/address/0x4f49b53928a71e553bb1b0f66a5bcb54fd4e8932 — L1 Ethereum Mainnet Chain ID 1 - Adapter Proxy
- [Smart contract] https://etherscan.io/address/0xE2E91C1Ae2873720C3b975a8034e887A35323345 — L1 Ethereum Mainnet Chain ID 1 - Adapter Implementation
- [Smart contract] https://explorer.immutable.com/address/0xBa5E35E26Ae59c7aea6F029B68c6460De2d13eB6 — L2 zkEVM Chain ID 13371 - Bridge Proxy
- [Smart contract] https://explorer.immutable.com/address/0xb4c3597e6b090A2f6117780cEd103FB16B071A84 — L2 zkEVM Chain ID 13371 - Bridge Implementation
- [Smart contract] https://explorer.immutable.com/address/0x4f49B53928A71E553bB1B0F66a5BcB54Fd4E8932 — L2 zkEVM Chain ID 13371 - Adapter Proxy
- [Smart contract] https://explorer.immutable.com/address/0x1d49c44dc4BbDE68D8D51a9C5732f3a24e48EFA6 — L2 zkEVM Chain ID 13371 - Adapter Implementation
- [Smart contract] https://explorer.immutable.com/address/0x8804A8aA1F18f23aE8A456dD73806FdA3219FaD1 — L2 zkEVM Chain ID 13371 - ChildERC20 Token Template

## Impacts in scope

**Smart contract — Critical**
- Permanent freezing of funds
- Protocol insolvency
- Direct theft of any user funds, whether at-rest or in-motion

**Smart contract — High**
- Permanent freezing of unclaimed royalties
- Temporary freezing of funds

**Smart contract — Medium**
- Unbounded gas consumption
- Griefing i.e. an attack with no direct profit motive for an attacker, but which results in notable, persistent or permanent damage to the protocol, its assets or users. This excludes transient or minor inconveniences (like a user needing to resubmit a transaction)

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/). 

__Reward Calculation for Critical Level Reports__

For critical smart contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 1,000,000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 50,000 is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

__Repeatable Attack Limitations__

- If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading or pausing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk. 
- For critical repeatable attacks on smart contracts that cannot be upgraded or paused, the project will consider the cumulative impact of the repeatable attacks for a reward. This is because the project cannot prevent the attacker from repeatedly exploiting the vulnerability until all funds are drained and/or other irreversible damage is done. Therefore, this warrants a reward equivalent to 10% of funds at risk, capped at the maximum critical reward. 

__Reward Calculation for High Level Reports__

- High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are rewarded within a range of USD 5,000 to USD 20,000 depending on the funds at risk, capped at the maximum high reward.

- In the event of temporary freezing, the reward doubles from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. This is because as the duration of the freezing lengthens, the potential for greater damage and subsequent reputational harm intensifies. Thus, by increasing the reward proportionally with the frozen duration, the project ensures stronger incentives for bug disclosure of this nature.

## Program overview

Immutable is a global leader in gaming on a mission to bring digital ownership to every player by making it safe and easy to build great web3 games through the power of immutable NFTs.

For more information about Immutable, please visit www.immutable.com.

Immutable provides rewards in USDC, denominated in USD. For more details about the payment process, please view the Rewards by Threat Level section further below.

__Primacy of Impact vs Primacy of Rules__

Immutable adheres to the Primacy of Impact for the following impacts:
- Smart Contract - Critical
- Smart Contract - High

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. 

When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact for this program. Instead, check if those other projects have a bug bounty program on Immunefi.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms and conditions set within this program.4d

