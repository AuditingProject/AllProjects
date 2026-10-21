# rhinofi — Immunefi scope

- Program: https://immunefi.com/bug-bounty/rhinofi/scope/
- Max bounty: **$2,000,000**
- KYC required: **no**
- Launched 2023-06-30, program updated 2026-07-20
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $20,000 – $2,000,000 (10% of funds at risk) |
| Smart contract | High | $5,000 – $100,000 |
| Smart contract | Medium | $2,000 – $10,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (9)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://zkevm.polygonscan.com/address/0x65A4b8A0927c7FD899aed24356BF83810f7b9A3f#code | zkEVM Bridge |
| 2 | Smart contract | https://optimistic.etherscan.io/address/0x0bCa65bf4b4c8803d2f0B49353ed57CAAF3d66Dc | Smart-Contract Optimism Bridge |
| 3 | Smart contract | https://bscscan.com/address/0xB80A582fa430645A043bB4f6135321ee01005fEf#code | BSC Bridge |
| 4 | Smart contract | https://arbiscan.io/address/0x15ca1fC728Cce7cd06151C8007e89dEe70260228#code | ARB MultiSig |
| 5 | Smart contract | https://polygonscan.com/address/0xba4eee20f434bc3908a0b18da496348657133a7e#code | MATIC Bridge |
| 6 | Smart contract | https://arbiscan.io/address/0x10417734001162ea139e8b044dfe28dbb8b28ad0#code | ARB Bridge |
| 7 | Smart contract | https://explorer.zksync.io/address/0x1fa66e2B38d0cC496ec51F81c3e05E6A6708986F#contract | zkSync Bridge |
| 8 | Smart contract | https://bscscan.com/address/0x7Af3828c0B061552AF3479806Add982eEf04f0c8#code | BSC MultiSig |
| 9 | Smart contract | https://polygonscan.com/address/0x249aAbb1d67A76404Cc1197fa37ADAf358B1E212#code | MATIC MultiSig |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `contracts_public/` | https://github.com/rhinofi/contracts_public | origin/master | 654c38c 2025-03-12 Merge pull request #24 from rhinofi/remove-deprecated | program codebase link |

In-scope paths inside `contracts_public/` (1):

- `README.md`

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **7 of 9** in-scope addresses have full source on disk.
- 2 have no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

Sources: sourcify (6), blockscout:explorer.optimism.io (1).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x0bCa65bf4b4c` | Smart-Contract Optimism Bridge | `TransparentUpgradeableProxy` | `deployed-source/0x0bCa65bf4b4c__Smart-Contract_Optimism_Bridge/` |
| `0xB80A582fa430` | BSC Bridge | `@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0xB80A582fa430__BSC_Bridge/` |
| `0x15ca1fC728Cc` | ARB MultiSig | `GnosisSafeProxy.sol:GnosisSafeProxy` | `deployed-source/0x15ca1fC728Cc__ARB_MultiSig/` |
| `0xba4eee20f434` | MATIC Bridge | `@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0xba4eee20f434__MATIC_Bridge/` |
| `0x104177340011` | ARB Bridge | `@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0x104177340011__ARB_Bridge/` |
| `0x7Af3828c0B06` | BSC MultiSig | `GnosisSafeProxy.sol:GnosisSafeProxy` | `deployed-source/0x7Af3828c0B06__BSC_MultiSig/` |
| `0x249aAbb1d67A` | MATIC MultiSig | `GnosisSafeProxy.sol:GnosisSafeProxy` | `deployed-source/0x249aAbb1d67A__MATIC_MultiSig/` |

**No source retrieved** (by chain): zkevm.polygonscan.com (1), explorer.zksync.io (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://zkevm.polygonscan.com/address/0x65A4b8A0927c7FD899aed24356BF83810f7b9A3f#code — zkEVM Bridge
- [Smart contract] https://optimistic.etherscan.io/address/0x0bCa65bf4b4c8803d2f0B49353ed57CAAF3d66Dc — Smart-Contract Optimism Bridge
- [Smart contract] https://bscscan.com/address/0xB80A582fa430645A043bB4f6135321ee01005fEf#code — BSC Bridge
- [Smart contract] https://arbiscan.io/address/0x15ca1fC728Cce7cd06151C8007e89dEe70260228#code — ARB MultiSig
- [Smart contract] https://polygonscan.com/address/0xba4eee20f434bc3908a0b18da496348657133a7e#code — MATIC Bridge
- [Smart contract] https://arbiscan.io/address/0x10417734001162ea139e8b044dfe28dbb8b28ad0#code — ARB Bridge
- [Smart contract] https://explorer.zksync.io/address/0x1fa66e2B38d0cC496ec51F81c3e05E6A6708986F#contract — zkSync Bridge
- [Smart contract] https://bscscan.com/address/0x7Af3828c0B061552AF3479806Add982eEf04f0c8#code — BSC MultiSig
- [Smart contract] https://polygonscan.com/address/0x249aAbb1d67A76404Cc1197fa37ADAf358B1E212#code — MATIC MultiSig

## Impacts in scope

**Smart contract — Critical**
- Any governance voting result manipulation that could lead to theft of funds
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield. This must be an exploit which can be applied to steal funds from any user under normal circumstances.
- Direct theft of any user NFTs, whether at-rest or in-motion, other than unclaimed royalties. This must be an exploit which can be applied to steal funds from any user under normal circumstances.
- Permanent freezing of funds
- Permanent freezing of NFTs
- Protocol insolvency

**Smart contract — High**
- Direct theft of a user funds
- Theft of unclaimed yield
- Theft of unclaimed royalties
- Permanent freezing of unclaimed yield
- Permanent freezing of unclaimed royalties

**Smart contract — Low**
- Denial of service preventing Operator interaction with smart contracts
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Block stuffing for profit
- Theft of gas

**Smart contract — Medium**
- Temporary freezing of funds for other users for at least 28 days
- Predictable or manipulable RNG that results in abuse of the principal or NFT

## Out of scope (from the program page)

- Best practice critiques
- Miner-extractable value (MEV)
- Smart contract unable to operate due to lack of token funds 
- Non-exploitable re-entrancy (no state change)
- Defects not exploitable in compiler version

## Notes on assets

However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

Though only the proxy contracts are listed as in-scope, current implementation and any further updates to the implementation contracts are considered in scope. When reporting a bug, please make sure to select the relevant proxy smart contract as the target. 

If an impact can be caused to any other asset managed by Rhino.fi that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project. This only applies to Critical impacts.

No assumption can be made of access to authorized accounts. Such assumption will nullify the report

## Notes on impacts

No assumption can be made of access to authorized accounts. Such assumption will nullify the report

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the  [Immunefi Vulnerability Severity Classification System V2.3. ](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/)This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported. 

All Smart Contract bug reports require a PoC to be eligible for a reward. Explanations and statements are not accepted as PoC and code is required.

For critical Smart Contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 2,000,000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 100,000 is to be rewarded in order to incentivize security researchers against withholding a bug report.  
All High and Medium rewards for the project bug bounty program are scaled based on an internally established team criteria, taking into account the exploitability of the bug, the impact it causes, and the likelihood of the vulnerability presenting itself, which is especially factored in with bug reports requiring multiple conditions to be met that are currently not in-place. However, there is a minimum reward for each severity level, rewards will be provided at the determined fair value by the team depending on these conditions, assuming that the bug report is in-scope of the bug bounty program.

The following vulnerabilities relating to those contracts are not eligible from this specific bounty, but can be submitted instead to [https://immunefi.com/bounty/starkex/](https://immunefi.com/bounty/starkex/):

- [https://github.com/starkware-libs/starkex-contracts/tree/master/audit](https://github.com/starkware-libs/starkex-contracts/tree/master/audit) 
- All vulnerabilities found in any audit documents in [https://github.com/rhinofi/contracts_public](https://github.com/rhinofi/contracts_public)

Payouts are handled by the __rhino.fi__ team directly and are denominated in USD. However, payouts are done in __USDT__ and __USDC__, with the choice of the ratio at the discretion of the team.

## Program overview

rhino.fi is a multi-chain DeFi aggregator platform, bringing you the best DeFi opportunities in one place.
The company began by pioneering the development of instant, gas-free spot trading on Ethereum layer 2 (powered by StarkEx). Now, they want to unlock the full potential of multi-chain and allow the next million users to enjoy everything DeFi has to offer, through a self-custodial UX that rivals the best centralised exchanges.

For more information about rhino.fi, please visit [https://rhino.fi/.](https://rhino.fi/)

