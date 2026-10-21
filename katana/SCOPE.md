# katana — Immunefi scope

- Program: https://immunefi.com/bug-bounty/katana/scope/
- Max bounty: **$80,000**
- KYC required: **yes**
- Launched 2026-02-11, program updated 2026-07-24
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $20,000 – $80,000 (10% of funds at risk) |
| Smart contract | High | $3,000 – $15,000 |
| Smart contract | Medium | $2,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (23)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://katanascan.com/address/0x7f1f4b4b29f5058fa32cc7a97141b8d7e5abdc2d | KAT |
| 2 | Smart contract | https://katanascan.com/address/0xEE7D8BCFb72bC1880D0Cf19822eB0A2e6577aB62 | WETH (aka vbETH) |
| 3 | Smart contract | https://katanascan.com/address/0x0913DA6Da4b42f538B445599b46Bb4622342Cf52 | WBTC (aka vbWBTC) |
| 4 | Smart contract | https://katanascan.com/address/0x203A662b0BD271A6ed5a60EdFbd04bFce608FD36 | USDC (aka vbUSDC) |
| 5 | Smart contract | https://katanascan.com/address/0x2DCa96907fde857dd3D816880A0df407eeB2D2F2 | USDT (aka vbUSDT) |
| 6 | Smart contract | https://katanascan.com/address/0x62D6A123E8D19d06d68cf0d2294F9A3A0362c6b3 | USDS (aka vbUSDS) |
| 7 | Smart contract | https://katanascan.com/address/0xa6b0db1293144ebe9478b6a84f75dd651e45914a | NativeConverter vbETH |
| 8 | Smart contract | https://katanascan.com/address/0x97a3500083348A147F419b8a65717909762c389f | NativeConverter vbUSDC |
| 9 | Smart contract | https://katanascan.com/address/0x053FA9b934b83E1E0ffc7e98a41aAdc3640bB462 | NativeConverter vbUSDT |
| 10 | Smart contract | https://katanascan.com/address/0xb00aa68b87256E2F22058fB2Ba3246EEc54A44fc | NativeConverter vbWBTC |
| 11 | Smart contract | https://katanascan.com/address/0x639f13D5f30B47c792b6851238c05D0b623C77DE | NativeConverter |
| 12 | Smart contract | https://immunefi.com/bug-bounty/katana/information/ | Primacy of Impact |
| 13 | Smart contract | https://katana.network/ | Primacy of Impact |
| 14 | Smart contract | https://katanascan.com/address/0x2a3DD3EB832aF982ec71669E178424b10Dca2EDe | Agglayer Bridge |
| 15 | Smart contract | https://katanascan.com/address/0x7231dbaCdFc968E07656D12389AB20De82FbfCeB | avKAT |
| 16 | Smart contract | https://katanascan.com/address/0x6C16E26013f2431e8B2e1Ba7067ECCcad0Db6C52 | Jitosol OFT |
| 17 | Smart contract | https://katanascan.com/address/0x8f051ca72a3440d83b18e71c3e59676203ab8f91 | KAT OFT Adapter |
| 18 | Smart contract | https://etherscan.io/address/0x8F051Ca72a3440d83B18E71C3E59676203aB8f91 | KAT OFT |
| 19 | Smart contract | https://basescan.org/address/0xD5390300c5DB71F80d46f0fA9983Fc72D4d1e3da | KAT OFT |
| 20 | Smart contract | https://katanascan.com/address/0x4d6fC15Ca6258b168225D283262743C623c13Ead | vKAT escrow |
| 21 | Smart contract | https://etherscan.io/address/0x250D30c523104bf0a06825e7eAdE4Dc46EdfE40E | OptimismPortal |
| 22 | Smart contract | https://etherscan.io/address/0x100d3ca4f97776a40a7d93db4abf0fea34230666 | Aggchain FEP |
| 23 | Smart contract | https://katanascan.com/address/0x106F7D67Ea25Cb9eFf5064CF604ebf6259Ff296d | vKAT |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `kat-token` | https://github.com/katana-network/kat-token | main | 5489498 | resolved from the "Previous Audits" link `https://github.com/katana-network/kat-token/tree/main/audit` (and `programCodebases` → `github.com/katana-network`) |
| `vault-bridge` | https://github.com/agglayer/vault-bridge | main | c2ece8a | resolved from the "Previous Audits" link `https://github.com/agglayer/vault-bridge/tree/v1.0.0/audit` |
| `ulxly-contracts` | https://github.com/agglayer/ulxly-contracts | develop | ac153f7 | resolved from the "Previous Audits" link `https://github.com/agglayer/ulxly-contracts/tree/develop/audits` |
| `lxly-bridge-and-call` | https://github.com/agglayer/lxly-bridge-and-call | main | 1748f72 | resolved from the "Previous Audits" link `…/tree/main/audit` and the two "Known issues" links `…/tree/3826c37ea7be36eaeba8decae8ef1479203f71e7/src` |
| `yearn-vaults-v3` | https://github.com/yearn/yearn-vaults-v3 | master | 89ab996 | resolved from the "Previous Audits" link `https://github.com/yearn/yearn-vaults-v3/tree/master/audits` |
| `katana-governance` | https://github.com/katana-network/katana-governance | develop | 2fe29c4 | resolved from `programCodebases` link `https://github.com/katana-network` |
| `lz-kat-upgradeable` | https://github.com/katana-network/lz-kat-upgradeable | main | fe5979e | resolved from `programCodebases` link `https://github.com/katana-network` |

### How these repos were matched

Evidence base: `program-data.json` → `programCodebases[0].url = https://github.com/katana-network` ("Codebase — Katana"), plus the five repository links the program publishes under "Previous Audits" (`katana-network/kat-token`, `agglayer/vault-bridge`, `yearn/yearn-vaults-v3`, `agglayer/lxly-bridge-and-call`, `agglayer/ulxly-contracts`) and the two "Known issues" links into `agglayer/lxly-bridge-and-call`. Verification used Sourcify on Katana (`/v2/contract/747474/<address>`) and Ethereum (chain 1).

- `kat-token` — Verified: asset 1 KAT `0x7f1f…dc2d` resolves on-chain to `src/KatToken.sol:KatToken`, which is exactly this repo's `src/KatToken.sol`.
- `ulxly-contracts` — Verified: asset 22 "Aggchain FEP" `0x100d…0666` (Ethereum) resolves to `contracts/v2/lib/PolygonTransparentProxy.sol:PolygonTransparentProxy`, a file present in this clone; assets 2 and 4 (vbETH `0xEE7D…aB62`, vbUSDC `0x203A…FD36`) resolve to `contracts/v2/lib/TokenWrappedTransparentProxy.sol`, the Agglayer bridge's wrapped-token proxy from the same `contracts/v2/` tree (cf. `contracts/lib/TokenWrapped.sol`); asset 14 "Agglayer Bridge" `0x2a3D…2EDe` corresponds to `contracts/v2/PolygonZkEVMBridgeV2.sol`.
- `vault-bridge` — Verified: the "NativeConverter" assets (11, 7–10: `0x639f…77DE`, `0xa6b0…914a`, `0x97a3…389f`, `0x053F…B462`, `0xb00a…44fc`) match `src/secondary-chain/NativeConverter.sol` (`contract NativeConverter`) with the per-token variants `src/secondary-chain/agglayer/NativeConverterAgglayer.sol`, `GenericNativeConverterAgglayer.sol` and `vbETH/WethNativeConverterAgglayer.sol`; the vb-token assets (2–6, "aka vbETH/vbWBTC/vbUSDC/vbUSDT/vbUSDS") match `src/primary-chain/VaultBridgeToken.sol`, `src/primary-chain/ethereum/vbETH/VbETH.sol` and `src/secondary-chain/agglayer/CustomTokenAgglayer.sol`.
- `katana-governance` — Verified: asset 15 avKAT `0x7231…fCeB` and asset 20 vKAT escrow `0x4d6f…3Ead` are both `ERC1967Proxy` on-chain, and their verified metadata source paths are rooted at `lib/ve-governance/lib/openzeppelin-contracts/…`, matching this repo's Foundry `lib/ve-governance` layout; the repo defines `src/AvKATVault.sol` (avKAT) and `src/VKatMetadata.sol` (vKAT). Published in the `katana-network` org (a fork of `aragon/katana-governance`).
- `lz-kat-upgradeable` — Verified by name correspondence: repo defines `contracts/KATOFTUpgradeable.sol`, `contracts/KATOFTAdapterUpgradeable.sol` and `contracts/KATCustomOFTAdapterUpgradeable.sol`, matching assets 17–19 ("KAT OFT Adapter" `0x8f05…8f91` on Katana, "KAT OFT" `0x8F05…8f91` on Ethereum and `0xD539…e3da` on Base); the Ethereum deployment is a `TransparentUpgradeableProxy` on-chain, consistent with this repo's upgradeable OFT design.
- `lxly-bridge-and-call` — Verified: the program's two known-issue entries point at `…/lxly-bridge-and-call/tree/3826c37e…/src`, i.e. `src/BridgeExtension.sol` and `src/JumpPoint.sol`, both present in this clone (cloned at `main`; the known-issue links pin commit `3826c37ea7be36eaeba8decae8ef1479203f71e7`, no asset link specified a ref).
- `yearn-vaults-v3` — `contracts/VaultV3.vy` / `contracts/VaultFactory.vy`: the ERC-4626 yield vaults the Vault Bridge tokens deposit backing assets into. No individual in-scope address resolves into this repo; it is cloned because Katana publishes it in its own "Previous Audits" list as part of the audited codebase.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **12 of 22** in-scope addresses have full source on disk.
- 9 have no verified source available from Sourcify, the chain's Blockscout instance or Routescan.
- 1 is on a chain this collection cannot fetch source for.

Sources: sourcify (9), blockscout:eth.blockscout.com (3).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x7f1f4b4b29f5` | KAT | `src/KatToken.sol:KatToken` | `deployed-source/0x7f1f4b4b29f5__KAT/` |
| `0xEE7D8BCFb72b` | WETH (aka vbETH) | `contracts/v2/lib/TokenWrappedTransparentProxy.sol:TokenWrappedTransparentProxy` | `deployed-source/0xEE7D8BCFb72b__WETH_aka_vbETH/` |
| `0x0913DA6Da4b4` | WBTC (aka vbWBTC) | `contracts/v2/lib/TokenWrappedTransparentProxy.sol:TokenWrappedTransparentProxy` | `deployed-source/0x0913DA6Da4b4__WBTC_aka_vbWBTC/` |
| `0x203A662b0BD2` | USDC (aka vbUSDC) | `contracts/v2/lib/TokenWrappedTransparentProxy.sol:TokenWrappedTransparentProxy` | `deployed-source/0x203A662b0BD2__USDC_aka_vbUSDC/` |
| `0x2DCa96907fde` | USDT (aka vbUSDT) | `contracts/v2/lib/TokenWrappedTransparentProxy.sol:TokenWrappedTransparentProxy` | `deployed-source/0x2DCa96907fde__USDT_aka_vbUSDT/` |
| `0xa6b0db129314` | NativeConverter vbETH | `dependencies/@openzeppelin-contracts-5.1.0/proxy/transparent/TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0xa6b0db129314__NativeConverter_vbETH/` |
| `0x7231dbaCdFc9` | avKAT | `lib/ve-governance/lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0x7231dbaCdFc9__avKAT/` |
| `0x8F051Ca72a34` | KAT OFT | `TransparentUpgradeableProxy` | `deployed-source/0x8F051Ca72a34__KAT_OFT/` |
| `0xD5390300c5DB` | KAT OFT | `solc_0.8/openzeppelin/proxy/transparent/TransparentUpgradeableProxy.sol:TransparentUpgradeableProxy` | `deployed-source/0xD5390300c5DB__KAT_OFT/` |
| `0x4d6fC15Ca625` | vKAT escrow | `lib/ve-governance/lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0x4d6fC15Ca625__vKAT_escrow/` |
| `0x250D30c52310` | OptimismPortal | `Proxy` | `deployed-source/0x250D30c52310__OptimismPortal/` |
| `0x100d3ca4f977` | Aggchain FEP | `PolygonTransparentProxy` | `deployed-source/0x100d3ca4f977__Aggchain_FEP/` |

**No source retrieved** (by chain): Katana (9), katana.network (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

**Coverage after this pass:** assets 1–11, 14, 15, 17–20 and 22–23 are now covered by the cloned repos — KAT by `kat-token`; vbETH/vbWBTC/vbUSDC/vbUSDT/vbUSDS and all five NativeConverters by `vault-bridge` (with the wrapped-token proxies and the Agglayer Bridge and Aggchain FEP by `ulxly-contracts`); avKAT, vKAT and vKAT escrow by `katana-governance`; the KAT OFT / OFT Adapter deployments on Katana, Ethereum and Base by `lz-kat-upgradeable`; and the bridge-and-call known-issue surface by `lxly-bridge-and-call`.

Still **unidentified**: asset 16 **Jitosol OFT `0x6C16E26013f2431e8B2e1Ba7067ECCcad0Db6C52`** (unverified on Sourcify; it is a third-party jitoSOL LayerZero OFT and no repo in `github.com/katana-network` or `github.com/agglayer` contains it) and asset 21 **OptimismPortal `0x250D30c523104bf0a06825e7eAdE4Dc46EdfE40E`** (resolves to `src/universal/Proxy.sol:Proxy`, i.e. the upstream Optimism monorepo, which Katana does not publish or link). Assets 12–13 are "Primacy of Impact" placeholders, not deployed contracts, so they have no repo by nature.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://katanascan.com/address/0x7f1f4b4b29f5058fa32cc7a97141b8d7e5abdc2d — KAT
- [Smart contract] https://katanascan.com/address/0xEE7D8BCFb72bC1880D0Cf19822eB0A2e6577aB62 — WETH (aka vbETH)
- [Smart contract] https://katanascan.com/address/0x0913DA6Da4b42f538B445599b46Bb4622342Cf52 — WBTC (aka vbWBTC)
- [Smart contract] https://katanascan.com/address/0x203A662b0BD271A6ed5a60EdFbd04bFce608FD36 — USDC (aka vbUSDC)
- [Smart contract] https://katanascan.com/address/0x2DCa96907fde857dd3D816880A0df407eeB2D2F2 — USDT (aka vbUSDT)
- [Smart contract] https://katanascan.com/address/0x62D6A123E8D19d06d68cf0d2294F9A3A0362c6b3 — USDS (aka vbUSDS)
- [Smart contract] https://katanascan.com/address/0xa6b0db1293144ebe9478b6a84f75dd651e45914a — NativeConverter vbETH
- [Smart contract] https://katanascan.com/address/0x97a3500083348A147F419b8a65717909762c389f — NativeConverter vbUSDC
- [Smart contract] https://katanascan.com/address/0x053FA9b934b83E1E0ffc7e98a41aAdc3640bB462 — NativeConverter vbUSDT
- [Smart contract] https://katanascan.com/address/0xb00aa68b87256E2F22058fB2Ba3246EEc54A44fc — NativeConverter vbWBTC
- [Smart contract] https://katanascan.com/address/0x639f13D5f30B47c792b6851238c05D0b623C77DE — NativeConverter
- [Smart contract] https://katana.network/ — Primacy of Impact
- [Smart contract] https://katanascan.com/address/0x2a3DD3EB832aF982ec71669E178424b10Dca2EDe — Agglayer Bridge
- [Smart contract] https://katanascan.com/address/0x7231dbaCdFc968E07656D12389AB20De82FbfCeB — avKAT
- [Smart contract] https://katanascan.com/address/0x6C16E26013f2431e8B2e1Ba7067ECCcad0Db6C52 — Jitosol OFT
- [Smart contract] https://katanascan.com/address/0x8f051ca72a3440d83b18e71c3e59676203ab8f91 — KAT OFT Adapter
- [Smart contract] https://etherscan.io/address/0x8F051Ca72a3440d83B18E71C3E59676203aB8f91 — KAT OFT
- [Smart contract] https://basescan.org/address/0xD5390300c5DB71F80d46f0fA9983Fc72D4d1e3da — KAT OFT
- [Smart contract] https://katanascan.com/address/0x4d6fC15Ca6258b168225D283262743C623c13Ead — vKAT escrow
- [Smart contract] https://etherscan.io/address/0x250D30c523104bf0a06825e7eAdE4Dc46EdfE40E — OptimismPortal
- [Smart contract] https://etherscan.io/address/0x100d3ca4f97776a40a7d93db4abf0fea34230666 — Aggchain FEP
- [Smart contract] https://katanascan.com/address/0x106F7D67Ea25Cb9eFf5064CF604ebf6259Ff296d — vKAT

## Known issues (2) — not eligible

- Issue that talks about Destination Address = address(0) AggLayer bridge exploit path relying on where the destinationAddress is set to zero , this is considered OOS. (https://github.com/agglayer/lxly-bridge-and-call/tree/3826c37ea7be36eaeba8decae8ef1479203f71e7/src)
- JumpPoint Behavior: Issues that occur within the bridge-and-call logic that lead to funds being "stuck" at a JumpPoint contract only. (https://github.com/agglayer/lxly-bridge-and-call/tree/3826c37ea7be36eaeba8decae8ef1479203f71e7/src)

## Impacts in scope

**Smart contract — Critical**
- Manipulation of governance voting result deviating from voted outcome and resulting in a direct change from intended effect of original results
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Unintended alteration of what the NFT represents (e.g. token URI, payload, artistic content)
- Protocol insolvency

**Smart contract — High**
- Temporary freezing of funds
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield

**Smart contract — Low**
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds

## Out of scope (from the program page)

- Any vulnerability originating in the AggLayer bridge contracts is out of scope unless it results in direct, irreversible loss of funds from the Vault Bridge contracts.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3. ](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/)

__Reward Calculation for Critical Level Reports__

For critical smart contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of **USD 80 000**. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of **USD 20 000** is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

__Repeatable Attack Limitations__

- If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward. 
- The amount of funds at risk will be calculated with the impact of the first attack being at **100%** and then a reduction of **25%** from the amount of the first attack for every **[300 blocks]** the attack needs for subsequent attacks from the first attack, rounded down. 

__Reward Calculation for High Level Reports__

High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are rewarded within a range of **USD 3 000 to USD 15 000** with the reward calculated based on **100%** of the funds at risk, though capped at the maximum high reward
In the event of temporary freezing, the reward doubles from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. 

__Reward Payment Terms__

Payouts are handled by the Katana team directly and are denominated in USD. However, payments are done in USDC on Ethereum.

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

Katana is a chain designed specifically for DeFi. It rethinks DeFi to offer what users care about most: deeper liquidity and higher yields, all in a sustainable way. This happens through mechanisms to ensure that all liquidity on Katana is absorbed in only one lending protocol (Morpho), one spot DEX (Sushi), which are the core applications on Katana with hundreds of applications building on top of them. This is achieved with a unique approach to maximizing yield that can be used as incentives on the core applications, including from Vault Bridge, sequencer fees, and Agora USD revenue.

Katana has deeply embedded, user-focused interoperability, using Agglayer for all users to onboard seamlessly. Katana uses ZK proofs to validate state transitions, allowing users to exit the chain without long wait periods.

For more information about Katana, please visit [https://katana.network/](https://katana.network/)

Katana provides rewards in USDC on Ethereum, denominated in USD. For more details about the payment process, please view the Rewards by Threat Level section further below.

__Responsible Publication__

Katana adheres to **Category 3: Approval Required**. This Policy determines what information researchers are allowed to make public from their submitted bug reports. For more information about the category selected, please refer to our [Responsible Publication](https://immunefi.com/responsible-publication/) page.

__Primacy of Impact vs Primacy of Rules__

Katana adheres to the Primacy of Impact for the following impacts:
- Smart Contract  —  Critical
- Smart Contract  —  High
- Smart Contract  —  Medium

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. 

For more information, please see [Best Practices: Primacy of Impact ](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact)

When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact for this program. Instead, check if those other projects have a bug bounty program on Immunefi.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms and conditions set within this program.

__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the [Immunefi PoC Guidelines and Rules](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules).

__Previous Audits__

Katana’s completed audit reports can be found here:

- [https://github.com/katana-network/kat-token/tree/main/audit](https://github.com/katana-network/kat-token/tree/main/audit)
- [https://github.com/agglayer/vault-bridge/tree/v1.0.0/audit](https://github.com/agglayer/vault-bridge/tree/v1.0.0/audit)
- [https://github.com/yearn/yearn-vaults-v3/tree/master/audits](https://github.com/yearn/yearn-vaults-v3/tree/master/audits)
- [https://github.com/agglayer/lxly-bridge-and-call/tree/main/audit](https://github.com/agglayer/lxly-bridge-and-call/tree/main/audit)
- [https://github.com/agglayer/ulxly-contracts/tree/develop/audits](https://github.com/agglayer/ulxly-contracts/tree/develop/audits)

Any unfixed vulnerabilities mentioned in these reports are not eligible for a reward.62:T7af,Re

