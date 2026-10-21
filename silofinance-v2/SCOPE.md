# silofinance-v2 — Immunefi scope

- Program: https://immunefi.com/bug-bounty/silofinance-v2/scope/
- Max bounty: **$100,000**
- KYC required: **yes**
- Launched 2022-08-30, program updated 2026-10-05
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $10,000 – $100,000 (10% of funds at risk) |
| Smart contract | High | $5,000 |
| Smart contract | Medium | $1,000 |

## Assets in scope (29)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://sonicscan.org/address/0xE83fDb15b5efeD3E3D3FD2a086219c33686b7231 | ShareDebtToken.sol - Silo Lending |
| 2 | Smart contract | https://sonicscan.org/address/0x1a36C81756d09950AcBd1aBDC522C0DD41363353 | ShareProtectedCollateralToken.sol - Silo Lending |
| 3 | Smart contract | https://sonicscan.org/address/0x435Ab368F5fCCcc71554f4A8ac5F5b922bC4Dc06 | Silo.sol - Silo Lending |
| 4 | Smart contract | https://sonicscan.org/address/0x4e9dE3a64c911A37f7EB2fCb06D1e68c3cBe9203 | SiloFactory.sol - Silo Lending |
| 5 | Smart contract | https://sonicscan.org/address/0x1D9289efd4424F50c9155cf8b591944B0fba0fD0 | SiloHookV1.sol - Silo Lending |
| 6 | Smart contract | https://sonicscan.org/address/0xff1d0359CAd3BC603584A63D852D884BF5b17A67 | SiloRouterV2.sol |
| 7 | Smart contract | https://sonicscan.org/address/0x4e125E605FDcf3B07BDE441DECf8EDAd423D5DC6 | SiloVaultsFactory.sol - Silo Vaults |
| 8 | Smart contract | https://sonicscan.org/address/0xDED4aC8645619334186f28B8798e07ca354CFa0e | Example of SiloVault.sol - Silo Vaults |
| 9 | Smart contract | https://immunefi.com/ | Primacy of Impact |
| 10 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-vaults/contracts/SiloVaultsFactory.sol | — |
| 11 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-vaults/contracts/SiloVault.sol | — |
| 12 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-vaults/contracts/incentives/VaultIncentivesModule.sol | — |
| 13 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-vaults/contracts/IdleVaultsFactory.sol | — |
| 14 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-vaults/contracts/IdleVault.sol | — |
| 15 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/utils/ShareProtectedCollateralToken.sol | — |
| 16 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/utils/ShareDebtToken.sol | — |
| 17 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/SiloFactory.sol | — |
| 18 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/SiloConfig.sol | — |
| 19 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/Silo.sol | — |
| 20 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/silo-router/SiloRouterV2Implementation.sol | — |
| 21 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/silo-router/SiloRouterV2.sol | — |
| 22 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/interestRateModel/kink/DynamicKinkModelFactory.sol | — |
| 23 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/interestRateModel/kink/DynamicKinkModelConfig.sol | — |
| 24 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/interestRateModel/kink/DynamicKinkModel.sol | — |
| 25 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/incentives/SiloIncentivesControllerFactory.sol | — |
| 26 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/incentives/SiloIncentivesControllerCompatible.sol | — |
| 27 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/hooks/SiloHookV3.sol | — |
| 28 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/hooks/SiloHookV2.sol | — |
| 29 | Smart contract | https://github.com/silo-finance/silo-contracts-v3/blob/master/silo-core/contracts/hooks/SiloHookV1.sol | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `silo-contracts-v3/` | https://github.com/silo-finance/silo-contracts-v3 | origin/master | f87eda96 2026-09-30 Merge branch 'release/4.29.0' | in-scope asset |
| `silo-contracts-v2/` | https://github.com/silo-finance/silo-contracts-v2 | develop | ed18f3a3 2026-10-07 disallow reentrancy on swap module. (#1978) | program codebase link |

In-scope paths inside `silo-contracts-v3/` (20):

- `silo-vaults/contracts/SiloVaultsFactory.sol`
- `silo-vaults/contracts/SiloVault.sol`
- `silo-vaults/contracts/incentives/VaultIncentivesModule.sol`
- `silo-vaults/contracts/IdleVaultsFactory.sol`
- `silo-vaults/contracts/IdleVault.sol`
- `silo-core/contracts/utils/ShareProtectedCollateralToken.sol`
- `silo-core/contracts/utils/ShareDebtToken.sol`
- `silo-core/contracts/SiloFactory.sol`
- `silo-core/contracts/SiloConfig.sol`
- `silo-core/contracts/Silo.sol`
- `silo-core/contracts/silo-router/SiloRouterV2Implementation.sol`
- `silo-core/contracts/silo-router/SiloRouterV2.sol`
- `silo-core/contracts/interestRateModel/kink/DynamicKinkModelFactory.sol`
- `silo-core/contracts/interestRateModel/kink/DynamicKinkModelConfig.sol`
- `silo-core/contracts/interestRateModel/kink/DynamicKinkModel.sol`
- `silo-core/contracts/incentives/SiloIncentivesControllerFactory.sol`
- `silo-core/contracts/incentives/SiloIncentivesControllerCompatible.sol`
- `silo-core/contracts/hooks/SiloHookV3.sol`
- `silo-core/contracts/hooks/SiloHookV2.sol`
- `silo-core/contracts/hooks/SiloHookV1.sol`

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 8** in-scope addresses have full source on disk.
- 8 have no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

**No source retrieved** (by chain): Sonic (8).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://sonicscan.org/address/0xE83fDb15b5efeD3E3D3FD2a086219c33686b7231 — ShareDebtToken.sol - Silo Lending
- [Smart contract] https://sonicscan.org/address/0x1a36C81756d09950AcBd1aBDC522C0DD41363353 — ShareProtectedCollateralToken.sol - Silo Lending
- [Smart contract] https://sonicscan.org/address/0x435Ab368F5fCCcc71554f4A8ac5F5b922bC4Dc06 — Silo.sol - Silo Lending
- [Smart contract] https://sonicscan.org/address/0x4e9dE3a64c911A37f7EB2fCb06D1e68c3cBe9203 — SiloFactory.sol - Silo Lending
- [Smart contract] https://sonicscan.org/address/0x1D9289efd4424F50c9155cf8b591944B0fba0fD0 — SiloHookV1.sol - Silo Lending
- [Smart contract] https://sonicscan.org/address/0xff1d0359CAd3BC603584A63D852D884BF5b17A67 — SiloRouterV2.sol
- [Smart contract] https://sonicscan.org/address/0x4e125E605FDcf3B07BDE441DECf8EDAd423D5DC6 — SiloVaultsFactory.sol - Silo Vaults
- [Smart contract] https://sonicscan.org/address/0xDED4aC8645619334186f28B8798e07ca354CFa0e — Example of SiloVault.sol - Silo Vaults

## Known issues (2) — not eligible

- All issues publicly disclosed by audits reports hosted in smart contracts repository are considered known issues. (https://github.com/silo-finance/silo-contracts-v3/tree/master/audits)
- For all known issues, read all audit reports before submitting a bounty report. (https://docs.silo.finance/docs/audits)

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency
- Unauthorized minting of NFTs

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds
- Permanent freezing of unclaimed royalties
- Temporary freezing of NFTs

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Block stuffing for profit
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption
- Block stuffing
- Miner-extractable value (MEV)

## Out of scope (from the program page)

- Best practice critiques
- Missing Heartbeat/Staleness Validation (ie. Chainlink) is out of scope for all oracles.

## Notes on assets

However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3). 

All Critical/High severity smart contract bug reports must come with a PoC with an end-effect impacting an asset-in-scope in order to be considered for a reward. Explanations and statements are not accepted as PoC and code is required.

Rewards for critical smart contract vulnerabilities are further capped at 10% of economic damage, with the main consideration being the funds affected in addition to PR and brand considerations, at the discretion of the team. However, there is a minimum reward of __USD 20 000__ and a maximum of __USD 100 000__ for Critical smart contract bug reports.


__Repeatable Attack Limitations__
- If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading or pausing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk. 

- For critical repeatable attacks on smart contracts that cannot be upgraded or paused, the project will consider the cumulative impact of the repeatable attacks for a reward. This is because the project cannot prevent the attacker from repeatedly exploiting the vulnerability until all funds are drained and/or other irreversible damage is done. Therefore, this warrants a reward equivalent to 10% of funds at risk, capped at the maximum critical reward. 

__Reward Calculation for High Level Reports__

- High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are rewarded within a range of 1,000 to 20,000 depending on the funds at risk, capped at the maximum high reward.  

- In the event of temporary freezing, the reward doubles from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. This is because as the duration of the freezing lengthens, the potential for greater damage and subsequent reputational harm intensifies. Thus, by increasing the reward proportionally with the frozen duration, the project ensures stronger incentives for bug disclosure of this nature.

Payouts are handled by the __Silo Finance__ team directly and are denominated in USD. However, payouts are done in __USDC__.

## Program overview

Silo Finance consists of two prototocls: 

- Silo Lending: A non-custodial protocol that creates isolated, programmable lending markets.
- Silo Vaults: Single-asset vaults that deploy and manage funds within Silo’s lending markets.

For more information about Silo Finance, please visit https://www.silo.finance/ and https://docs.silo.finance/.

Silo Finance provides rewards in USDC on Ethereum, denominated in USD. For more details about the payment process, please view the Rewards by Threat Level section further below.

