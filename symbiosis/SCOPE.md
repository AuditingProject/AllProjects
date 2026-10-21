# symbiosis — Immunefi scope

- Program: https://immunefi.com/bug-bounty/symbiosis/scope/
- Max bounty: **$100,000**
- KYC required: **no**
- Launched 2022-08-18, program updated 2026-10-01
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $100,000 (10% of funds at risk) |

## Assets in scope (4)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0xfCEF2Fe72413b65d3F393d278A714caD87512bcd#code | MetaRouterGateway |
| 2 | Smart contract | https://bscscan.com/address/0x5c97D726bf5130AE15408cE32bc764e458320D2f#code | MetaRouterGateway |
| 3 | Smart contract | https://snowtrace.io/address/0x4cfA66497Fa84D739a0f785FBcEe9196f1C64e4a#code | MetaRouterGateway |
| 4 | Smart contract | https://polygonscan.com/address/0xAb83653fd41511D638b69229afBf998Eb9B0F30c#code | MetaRouterGateway |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| core-contracts | https://github.com/symbiosis-finance/core-contracts | main (default) | 3932a6266d156d47e69f3a5ab6f194cfc6708797 | resolved from program-data.json `programCodebases` → https://github.com/symbiosis-finance (org), repo located with `gh api orgs/symbiosis-finance/repos` |

### How these repos were matched

- `core-contracts` — Evidence: the program's own "Symbiosis Codebase" link (`programCodebases`, also the org that hosts the audits repo cited in the rewards text) is `github.com/symbiosis-finance`; `core-contracts` is the only Solidity contracts repo in that org. Verification: Sourcify reports the verified on-chain name for in-scope assets 1 (Ethereum `0xfCEF...2bcd`) and 2 (BSC `0x5c97...0D2f`) as `contracts/synth-core/metarouter/MetaRouterGateway.sol:MetaRouterGateway` — the identical path and contract name exist in this repo at `contracts/synth-core/metarouter/MetaRouterGateway.sol`, matching the `MetaRouterGateway` description of all four in-scope assets.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **4 of 4** in-scope addresses have full source on disk.

Sources: sourcify (2), blockscout:eth.blockscout.com (1), routescan (1).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xfCEF2Fe72413` | MetaRouterGateway | `MetaRouterGateway` | `deployed-source/0xfCEF2Fe72413__MetaRouterGateway/` |
| `0x5c97D726bf51` | MetaRouterGateway | `contracts/synth-core/metarouter/MetaRouterGateway.sol:MetaRouterGateway` | `deployed-source/0x5c97D726bf51__MetaRouterGateway/` |
| `0x4cfA66497Fa8` | MetaRouterGateway | `MetaRouterGateway` | `deployed-source/0x4cfA66497Fa8__MetaRouterGateway/` |
| `0xAb83653fd415` | MetaRouterGateway | `contracts/synth-core/metarouter/MetaRouterGateway.sol:MetaRouterGateway` | `deployed-source/0xAb83653fd415__MetaRouterGateway/` |

## In-scope assets with no repo to clone

**Coverage:** all four in-scope assets (the `MetaRouterGateway` deployments on Ethereum, BSC, Avalanche and Polygon) are now covered by the cloned `core-contracts` repo (`contracts/synth-core/metarouter/MetaRouterGateway.sol`). None remain unidentified.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0xfCEF2Fe72413b65d3F393d278A714caD87512bcd#code — MetaRouterGateway
- [Smart contract] https://bscscan.com/address/0x5c97D726bf5130AE15408cE32bc764e458320D2f#code — MetaRouterGateway
- [Smart contract] https://snowtrace.io/address/0x4cfA66497Fa84D739a0f785FBcEe9196f1C64e4a#code — MetaRouterGateway
- [Smart contract] https://polygonscan.com/address/0xAb83653fd41511D638b69229afBf998Eb9B0F30c#code — MetaRouterGateway

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds (ERC-20 tokens), whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds (ERC-20 tokens)

## Out of scope (from the program page)

- Best practice critiques

## Notes on assets

Only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported. 

All Critical severity bug reports must come with a PoC with an end-effect impacting an asset-in-scope in order to be considered for a reward. Explanations and statements are not accepted as PoC and code is required. In addition, all Critical severity bug reports must also come with a suggestion for a fix to be considered for a reward. 

All known issues previously highlighted in the following audit reports are considered out of scope: 
  - [https://github.com/symbiosis-finance/audits](https://github.com/symbiosis-finance/audits) 

Payouts are handled by the __Symbiosis__ team directly and are denominated in USD. However, payouts are done in __USDT__(ERC20), __USDT__(BEP20), __USDC__(ERC20) or __USDC__(Polygon), at the discretion of the bug report submitter.

## Program overview

Symbiosis stands out as a platform that utilizes cross-chain swaps without a need to perform numerous transactions. It additionally aggregates liquidity from various Automated Market Makers (AMM) and Decentralized Exchanges (DEX) across multiple EVM and non-EVM chains.

Symbiosis leverages a decentralized Relayers Network - an off-chain ecosystem of relayer node runners that verify and transfer information across blockchains. Relayers network nodes ensure the smooth and secure data transfer and enhance the platform’s security and resilience against central points of failure. Relayers Network nodes have to stake SIS to participate in consensus and process swaps.

For more information about Symbiosis, please visit [https://symbiosis.finance](https://symbiosis.finance/).

