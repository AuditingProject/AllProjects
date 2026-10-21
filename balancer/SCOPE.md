# balancer — Immunefi scope

- Program: https://immunefi.com/bug-bounty/balancer/scope/
- Max bounty: **$1,000,000**
- KYC required: **no**
- Launched 2022-05-12, program updated 2026-07-20
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $100,000 – $1,000,000 (10% of funds at risk) |
| Smart contract | High | $25,000 – $75,000 |
| Smart contract | Medium | up to $15,000 |

## Assets in scope (24)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0x136f1EFcC3f8f88516B9E94110D56FDBfB1778d1 | BatchRouter |
| 2 | Smart contract | https://etherscan.io/address/0xA331D84eC860Bf466b4CdCcFb4aC09a1B43F3aE6#code | Authorizer |
| 3 | Smart contract | https://etherscan.io/address/0x8F42aDBbA1B16EaAE3BB5754915E0D06059aDd75#code | AuthorizerAdaptor |
| 4 | Smart contract | https://etherscan.io/address/0xeA66501dF1A00261E3bB79D1E90444fc6A186B62 | BatchRelayerLibrary (V6) |
| 5 | Smart contract | https://etherscan.io/address/0x35fFB749B273bEb20F40f35EdeB805012C539864 | V3 VaultAdmin |
| 6 | Smart contract | https://etherscan.io/address/0x0E8B07657D719B86e06bF0806D6729e3D528C9A9 | V3 VaultExtension |
| 7 | Smart contract | https://etherscan.io/address/0xbA1333333333a1BA1108E8412f11850A5C319bA9 | V3 Vault |
| 8 | Smart contract | https://etherscan.io/address/0x9179C06629ef7f17Cb5759F501D89997FE0E7b45 | BufferRouter |
| 9 | Smart contract | https://etherscan.io/address/0x35Cea9e57A393ac66Aaa7E25C391D52C74B5648f | BalancerRelayer (V6) |
| 10 | Smart contract | https://etherscan.io/address/0xBA12222222228d8Ba445958a75a0704d566BF2C8#code | V2 Vault |
| 11 | Smart contract | https://etherscan.io/address/0xeb1aa94421aecfb1dc17ddb1068e4609c4be8758#code | FixedPriceLBPoolFactory |
| 12 | Smart contract | https://etherscan.io/address/0xb21A277466e7dB6934556a1Ce12eb3F032815c8A#code | CompositeLiquidityRouter (V2) |
| 13 | Smart contract | https://etherscan.io/address/0xAE563E3f8219521950555F5962419C8919758Ea2#code | V3 Router (V2) |
| 14 | Smart contract | https://etherscan.io/address/0x8902F9C211f91c84Da2076f633873F8266dCECC6#code | Gyro2CLPPoolFactory |
| 15 | Smart contract | https://etherscan.io/address/0x765ce16dbb3D7e89a9beBc834C5D6894e7fAA93c#code | StableLPOracleFactory (V2) |
| 16 | Smart contract | https://etherscan.io/address/0x6642863979e66d995717A2B836A121700595069A#code | V3 LBPoolFactory (V4) |
| 17 | Smart contract | https://etherscan.io/address/0x4eFcd8bcE8AC9b94bd76648e2c85bEf6c40F3228#code | V3 StablePoolFactory (V3) |
| 18 | Smart contract | https://etherscan.io/address/0x4b4b45Edf6Ca26ae894377Cf4FeD1FA9F82D85C6#code | WeightedLPOracleFactory (V2) |
| 19 | Smart contract | https://etherscan.io/address/0x3ccD78683efFffdDc1A16f5553C896ac6D3ab7FF#code | ReClammPoolFactory (V3) |
| 20 | Smart contract | https://etherscan.io/address/0x332694Ef46D880DF6Ea9593e04CB8ABEE5F81D99#code | V3 WeightedPoolFactory (V2) |
| 21 | Smart contract | https://etherscan.io/address/0x301EDe5Fd4f9d7266B09c3A2E38F97776447154B#code | EclpLPOracleFactory |
| 22 | Smart contract | https://etherscan.io/address/0x212F884252792ebaaA811FB0678444b21c7C2879#code | ProtocolFeeController (V2) |
| 23 | Smart contract | https://etherscan.io/address/0x187a05fb9e4234Dd310ae74215743560D1BAA6Ac#code | V3 StableSurgePoolFactory (V3) |
| 24 | Smart contract | https://etherscan.io/address/0x04d584195a96DFfc7F8B695aA3C9D3c1606b69d1#code | GyroECLPPoolFactory |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `balancer-v3-monorepo/` | https://github.com/balancer/balancer-v3-monorepo | main | 2b9ce4b1 2026-09-13 Add E-CLP swap invariant fuzz tests (#1665) | program codebase link |
| `balancer-v2-monorepo/` | https://github.com/balancer/balancer-v2-monorepo | master | e91a2b64 2026-08-03 Update readme to reflect bounty status (#2659) | program codebase link |
| `reclamm/` | https://github.com/balancer/reclamm | reclamm-2.1 | 6a13f2c 2026-08-14 docs: clarify rate provider behavior and general guidance (#210) | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **24 of 24** in-scope addresses have full source on disk.

Sources: blockscout:eth.blockscout.com (24).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x136f1EFcC3f8` | BatchRouter | `BatchRouter` | `deployed-source/0x136f1EFcC3f8__BatchRouter/` |
| `0xA331D84eC860` | Authorizer | `Authorizer` | `deployed-source/0xA331D84eC860__Authorizer/` |
| `0x8F42aDBbA1B1` | AuthorizerAdaptor | `AuthorizerAdaptor` | `deployed-source/0x8F42aDBbA1B1__AuthorizerAdaptor/` |
| `0xeA66501dF1A0` | BatchRelayerLibrary (V6) | `BatchRelayerLibrary` | `deployed-source/0xeA66501dF1A0__BatchRelayerLibrary_V6/` |
| `0x35fFB749B273` | V3 VaultAdmin | `VaultAdmin` | `deployed-source/0x35fFB749B273__V3_VaultAdmin/` |
| `0x0E8B07657D71` | V3 VaultExtension | `VaultExtension` | `deployed-source/0x0E8B07657D71__V3_VaultExtension/` |
| `0xbA1333333333` | V3 Vault | `Vault` | `deployed-source/0xbA1333333333__V3_Vault/` |
| `0x9179C06629ef` | BufferRouter | `BufferRouter` | `deployed-source/0x9179C06629ef__BufferRouter/` |
| `0x35Cea9e57A39` | BalancerRelayer (V6) | `BalancerRelayer` | `deployed-source/0x35Cea9e57A39__BalancerRelayer_V6/` |
| `0xBA1222222222` | V2 Vault | `Vault` | `deployed-source/0xBA1222222222__V2_Vault/` |
| `0xeb1aa94421ae` | FixedPriceLBPoolFactory | `FixedPriceLBPoolFactory` | `deployed-source/0xeb1aa94421ae__FixedPriceLBPoolFactory/` |
| `0xb21A277466e7` | CompositeLiquidityRouter (V2) | `CompositeLiquidityRouter` | `deployed-source/0xb21A277466e7__CompositeLiquidityRouter_V2/` |
| `0xAE563E3f8219` | V3 Router (V2) | `Router` | `deployed-source/0xAE563E3f8219__V3_Router_V2/` |
| `0x8902F9C211f9` | Gyro2CLPPoolFactory | `Gyro2CLPPoolFactory` | `deployed-source/0x8902F9C211f9__Gyro2CLPPoolFactory/` |
| `0x765ce16dbb3D` | StableLPOracleFactory (V2) | `StableLPOracleFactory` | `deployed-source/0x765ce16dbb3D__StableLPOracleFactory_V2/` |
| `0x6642863979e6` | V3 LBPoolFactory (V4) | `LBPoolFactory` | `deployed-source/0x6642863979e6__V3_LBPoolFactory_V4/` |
| `0x4eFcd8bcE8AC` | V3 StablePoolFactory (V3) | `StablePoolFactory` | `deployed-source/0x4eFcd8bcE8AC__V3_StablePoolFactory_V3/` |
| `0x4b4b45Edf6Ca` | WeightedLPOracleFactory (V2) | `WeightedLPOracleFactory` | `deployed-source/0x4b4b45Edf6Ca__WeightedLPOracleFactory_V2/` |
| `0x3ccD78683efF` | ReClammPoolFactory (V3) | `ReClammPoolFactory` | `deployed-source/0x3ccD78683efF__ReClammPoolFactory_V3/` |
| `0x332694Ef46D8` | V3 WeightedPoolFactory (V2) | `WeightedPoolFactory` | `deployed-source/0x332694Ef46D8__V3_WeightedPoolFactory_V2/` |
| `0x301EDe5Fd4f9` | EclpLPOracleFactory | `EclpLPOracleFactory` | `deployed-source/0x301EDe5Fd4f9__EclpLPOracleFactory/` |
| `0x212F88425279` | ProtocolFeeController (V2) | `ProtocolFeeController` | `deployed-source/0x212F88425279__ProtocolFeeController_V2/` |
| `0x187a05fb9e42` | V3 StableSurgePoolFactory (V3) | `StableSurgePoolFactory` | `deployed-source/0x187a05fb9e42__V3_StableSurgePoolFactory_V3/` |
| `0x04d584195a96` | GyroECLPPoolFactory | `GyroECLPPoolFactory` | `deployed-source/0x04d584195a96__GyroECLPPoolFactory/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0x136f1EFcC3f8f88516B9E94110D56FDBfB1778d1 — BatchRouter
- [Smart contract] https://etherscan.io/address/0xA331D84eC860Bf466b4CdCcFb4aC09a1B43F3aE6#code — Authorizer
- [Smart contract] https://etherscan.io/address/0x8F42aDBbA1B16EaAE3BB5754915E0D06059aDd75#code — AuthorizerAdaptor
- [Smart contract] https://etherscan.io/address/0xeA66501dF1A00261E3bB79D1E90444fc6A186B62 — BatchRelayerLibrary (V6)
- [Smart contract] https://etherscan.io/address/0x35fFB749B273bEb20F40f35EdeB805012C539864 — V3 VaultAdmin
- [Smart contract] https://etherscan.io/address/0x0E8B07657D719B86e06bF0806D6729e3D528C9A9 — V3 VaultExtension
- [Smart contract] https://etherscan.io/address/0xbA1333333333a1BA1108E8412f11850A5C319bA9 — V3 Vault
- [Smart contract] https://etherscan.io/address/0x9179C06629ef7f17Cb5759F501D89997FE0E7b45 — BufferRouter
- [Smart contract] https://etherscan.io/address/0x35Cea9e57A393ac66Aaa7E25C391D52C74B5648f — BalancerRelayer (V6)
- [Smart contract] https://etherscan.io/address/0xBA12222222228d8Ba445958a75a0704d566BF2C8#code — V2 Vault
- [Smart contract] https://etherscan.io/address/0xeb1aa94421aecfb1dc17ddb1068e4609c4be8758#code — FixedPriceLBPoolFactory
- [Smart contract] https://etherscan.io/address/0xb21A277466e7dB6934556a1Ce12eb3F032815c8A#code — CompositeLiquidityRouter (V2)
- [Smart contract] https://etherscan.io/address/0xAE563E3f8219521950555F5962419C8919758Ea2#code — V3 Router (V2)
- [Smart contract] https://etherscan.io/address/0x8902F9C211f91c84Da2076f633873F8266dCECC6#code — Gyro2CLPPoolFactory
- [Smart contract] https://etherscan.io/address/0x765ce16dbb3D7e89a9beBc834C5D6894e7fAA93c#code — StableLPOracleFactory (V2)
- [Smart contract] https://etherscan.io/address/0x6642863979e66d995717A2B836A121700595069A#code — V3 LBPoolFactory (V4)
- [Smart contract] https://etherscan.io/address/0x4eFcd8bcE8AC9b94bd76648e2c85bEf6c40F3228#code — V3 StablePoolFactory (V3)
- [Smart contract] https://etherscan.io/address/0x4b4b45Edf6Ca26ae894377Cf4FeD1FA9F82D85C6#code — WeightedLPOracleFactory (V2)
- [Smart contract] https://etherscan.io/address/0x3ccD78683efFffdDc1A16f5553C896ac6D3ab7FF#code — ReClammPoolFactory (V3)
- [Smart contract] https://etherscan.io/address/0x332694Ef46D880DF6Ea9593e04CB8ABEE5F81D99#code — V3 WeightedPoolFactory (V2)
- [Smart contract] https://etherscan.io/address/0x301EDe5Fd4f9d7266B09c3A2E38F97776447154B#code — EclpLPOracleFactory
- [Smart contract] https://etherscan.io/address/0x212F884252792ebaaA811FB0678444b21c7C2879#code — ProtocolFeeController (V2)
- [Smart contract] https://etherscan.io/address/0x187a05fb9e4234Dd310ae74215743560D1BAA6Ac#code — V3 StableSurgePoolFactory (V3)
- [Smart contract] https://etherscan.io/address/0x04d584195a96DFfc7F8B695aA3C9D3c1606b69d1#code — GyroECLPPoolFactory

## Known issues (4) — not eligible

- LBP swaps can leave a token's real Vault balance below the minimum trade amount, causing subsequent proportional exits to revert until Recovery Mode is enabled. FixedPriceLBPool does not enforce a minimum remaining balance after a swap. In seedless bidirectional LBPool configurations, the virtual reserve balance can satisfy the inherited minimum-balance check while the real reserve falls below the (https://github.com/balancer/balancer-v3-monorepo/pull/1673)
- When the aggregate fees are split between protocol and pool creator, rounding effects can make the transaction revert under specific circumstances.  These typically happen when the pool creator fee is low, and low amount of fees are collected.  In this case, the cost of fixing an obscure edge case and migrating the fee controller is not justified by the potential impact. In practice:  Most pools d (https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/WONTFIX.md#protocol-fee-controller---fee-split-rounding)
- The way the surge fees are computed in the stable surge hook is an approximation that keeps the computation simple. For big swaps and large max surge swap fee, the approximation breaks exact in / exact out equivalence. In other words:  swap_in(Ai) = Ao  swap_out(Ao) != Ai Since this happens only in extreme cases that are not relevant in practice, simplicity is preferred over accuracy in this case. (https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/WONTFIX.md#stable-surge---exact-in--exact-out-equivalence)
- Centeredness-preserving price-ratio updates in ReClamm pools can shift spot price in edge cases (issue 3.2.13). (https://github.com/balancer/reclamm/blob/reclamm-2.1/audits/cantina/2026-04-13.pdf)

## Impacts in scope

**Smart contract — Critical**
- Permanent freezing of >1% of total funds in the Vault, affecting every pool type
- Theft of >1% of total funds in the Vault, affecting every pool type

**Smart contract — High**
- Permanent freezing of funds in excess of gas costs or swap fees, affecting a specific pool type
- Theft of funds in excess of gas costs or swap fees, affecting a specific pool type

**Smart contract — Medium**
- Temporary freezing of funds in excess of gas costs or swap fees
- Permanent freezing of unclaimed yield
- Theft of unclaimed yield

## Out of scope (from the program page)

Balancer is only compatible with standard ERC20 tokens that transfer the exact amount from sender to recipient, where balances do not change by any means other than transfers. Tokens with transfer fees, rebasing supplies, streaming mechanics, or multiple entry points are not compatible with Balancer; that list is not exhaustive. Impacts that depend on such tokens are out of scope.

Vulnerabilities that require the user to interact with explicitly malicious routers, pools, hooks, or rate providers are out of scope, because introducing such components in a permissionless protocol is trivial and impossible to prevent.

Best practice critiques are out of scope, as are known issues, such as those highlighted in the following audit reports, are out of scope (the list is not exhaustive):
https://github.com/balancer/balancer-v2-monorepo/tree/master/audits
https://github.com/balancer/balancer-v3-monorepo/tree/main/audits

## Notes on assets

However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

If a Critical impact can be caused to any other asset managed by Balancer that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported.

All Critical/High severity bug reports must come with a PoC with an end-effect impacting an asset-in-scope in order to be considered for a reward. Explanations and statements are not accepted as PoC and code is required.

Critical smart contract vulnerabilities are further capped at __10%__ of economic damage, taking into account the funds at risk at the moment of the bug report submission. However, there is a minimum reward of __USD 100 000__. Additionally, the maximum reward is capped at __USD 1 000 000__, even if __10%__ of the damage in USD equivalent is greater than __USD 1 000 000__.

High severity smart contract vulnerabilities are also further capped at __10%__ of economic damage, taking into account the funds at risk at the moment of the bug report submission. However, there is a minimum reward of __25 000 USD__. Additionally, the maximum reward is capped at __USD 75 000__, even if __10%__ of the damage is greater than __USD 75 000__.

Vulnerabilities involving non-standard ERC20 tokens are considered out of scope, as it would be trivial to insert an exploit into a token for the sake of applying to this bug bounty. A standard, Balancer-compatible ERC20 token is one that conforms to all [EIP-20 interfaces](https://eips.ethereum.org/EIPS/eip-20) and exhibits expected behavior in implementation; i.e., transfers move exactly N tokens from sender to recipient, and balances do not change by any means other than transfers. Notably, tokens with transfer fees, rebasing supplies, streaming mechanics or multiple entrypoints are not compatible with Balancer, but that list is not exhaustive.

Following the same line, vulnerabilities that require the user to interact with explicitly malicious routers, pools, hooks or rate providers are out of scope. This is because introducing such vulnerabilities in a permissionless protocol is both trivial and impossible to prevent.

Known issues such as those previously highlighted in the following audit report are considered out of scope (list is not exhaustive): 
  - [https://github.com/balancer/balancer-v2-monorepo/tree/master/audits](https://github.com/balancer/balancer-v2-monorepo/tree/master/audits) 
  - [https://github.com/balancer/balancer-v3-monorepo/tree/master/audits](https://github.com/balancer/balancer-v3-monorepo/tree/master/audits)
  - [https://github.com/balancer/reclamm/tree/main/audits](https://github.com/balancer/reclamm/tree/main/audits)

Payouts are handled by the __Balancer__ team directly and are denominated in __USD__. However, payouts are done in __ETH__ or __USDC__, at the discretion of the team.

## Program overview

Balancer is a decentralized automated market maker (AMM) and liquidity protocol on Ethereum and other EVM-compatible networks. It is permissionless and non-custodial: anyone can trade tokens or provide liquidity through smart contracts, with no intermediary holding funds.

Balancer V3 is the current protocol. It is built around a single Vault that holds all pool assets and enforces the core accounting and safety checks, which keeps pool contracts small and makes custom pool types simpler to build and review. V3 adds a hooks framework for extending pool behavior, native ERC4626 boosted liquidity through internal buffers, and pool types including Weighted, Stable, StableSurge, Gyro (E-CLP and 2-CLP), AutoRange (ReClamm), and Liquidity Bootstrapping Pools. Trades and liquidity operations are routed through a set of Routers.

Balancer V2, the prior generation, remains in operation for residual liquidity (mainly weighted pools) and is also built around a Vault. This program covers the in-scope V3 and V2 smart contracts listed under Assets in Scope.

For more information about Balancer, please visit [https://balancer.fi/](https://balancer.fi/).

