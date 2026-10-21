# ipor — Immunefi scope

- Program: https://immunefi.com/bug-bounty/ipor/scope/
- Max bounty: **$1,000**
- KYC required: **no**
- Launched 2023-04-11, program updated 2026-09-24
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $1,000 |

## Assets in scope (13)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0x9Bd2177027edEE300DC9F1fb88F24DB6e5e1edC6 | ipUSDT |
| 2 | Smart contract | https://etherscan.io/address/0xB3d1c1aB4D30800162da40eb18B3024154924ba5 | AmmStorageUsdcProx |
| 3 | Smart contract | https://immunefi.com | Primacy of Impact |
| 4 | Smart contract | https://etherscan.io/address/0xcC2fF2D38666723ea56c122097F6215B90d74196 | Ethereum - AmmTreasuryWeEthProxy |
| 5 | Smart contract | https://etherscan.io/address/0xaC5B04988BC71bEE96f8D93040777Db3ef166125 | Ethereum - ipweETH |
| 6 | Smart contract | https://etherscan.io/address/0x16d104009964e694761C0bf09d7Be49B7E3C26fd | IporProtocolRouterProxy |
| 7 | Smart contract | https://etherscan.io/address/0x364f116352EB95033D73822bA81257B8c1f5B1CE | AmmStorageUsdtProx |
| 8 | Smart contract | https://etherscan.io/address/0x137000352B4ed784e8fa8815d225c713AB2e7Dc9 | AmmTreasuryUsdcProxy |
| 9 | Smart contract | https://etherscan.io/address/0x63395EDAF74a80aa1155dB7Cd9BBA976a88DeE4E | AmmTreasuryEthProxy |
| 10 | Smart contract | https://etherscan.io/address/0x28BC58e600eF718B9E97d294098abecb8c96b687 | AmmTreasuryUsdtProxy |
| 11 | Smart contract | https://etherscan.io/address/0x7c0e72f431FD69560D951e4C04A4de3657621a88 | ipUSDC |
| 12 | Smart contract | https://etherscan.io/address/0x77Fe3a8E8d1d73Df54Ca07674Bf1bD6C5841e3b5 | Ethereum - AmmStorageWeEthProxy |
| 13 | Smart contract | https://etherscan.io/address/0xc40431b6C510AeB45Fbb5e21E40D49F12b0c1F0c | ipstETH |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `ipor-protocol` | https://github.com/IPOR-Labs/ipor-protocol | main | 434327d3 | resolved from the program's "Dev Environment and Documentation" link `https://github.com/IPOR-Labs/ipor-protocol/blob/main/README.md` (and `programCodebases` → `github.com/IPOR-Labs`) |
| `ipor-power-tokens` | https://github.com/IPOR-Labs/ipor-power-tokens | main | 8108821e | resolved from the program's "Dev Environment and Documentation" link `https://github.com/IPOR-Labs/ipor-power-tokens/blob/main/README.md` |

### How these repos were matched

- `ipor-protocol` — Evidence: linked by the program itself under "Dev Environment and Documentation", and `programCodebases[0].url = https://github.com/IPOR-Labs` ("IPOR Smart Contracts"). Verification: Sourcify gives `IpTokenUsdt.sol:IpTokenUsdt` for ipUSDC/ipUSDT-family asset `0x7c0e…1a88`, matching this repo's `contracts/tokens/IpToken.sol` (the ipUSDT/ipUSDC/ipstETH/ipweETH tokens); the `AmmStorage*Proxy` and `AmmTreasury*Proxy` assets are `ERC1967Proxy` on-chain and their implementations are `contracts/amm/AmmStorage.sol` (`contract AmmStorage`) and `contracts/amm/AmmTreasury.sol` (`contract AmmTreasury`); `IporProtocolRouterProxy` (`0x16d1…26fd`, also `ERC1967Proxy`) matches `contracts/chains/ethereum/router/IporProtocolRouterEthereum.sol` on top of `contracts/router/IporProtocolRouterAbstract.sol`.
- `ipor-power-tokens` — Evidence: linked by the program itself under "Dev Environment and Documentation". Verification: repo contains `contracts/tokens/PowerToken.sol`, `contracts/mining/LiquidityMiningEthereum.sol` and `contracts/router/PowerTokenRouter.sol` — the staking/liquidity-mining layer that the in-scope ipUSDC/ipUSDT/ipstETH ipTokens are staked into. No single in-scope address resolves into this repo; it is cloned because the program publishes it as part of the codebase to review under Primacy of Impact.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **12 of 12** in-scope addresses have full source on disk.

Sources: sourcify (12).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x9Bd2177027ed` | ipUSDT | `IpTokenUsdt.sol:IpTokenUsdt` | `deployed-source/0x9Bd2177027ed__ipUSDT/` |
| `0xB3d1c1aB4D30` | AmmStorageUsdcProx | `@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0xB3d1c1aB4D30__AmmStorageUsdcProx/` |
| `0xcC2fF2D38666` | Ethereum - AmmTreasuryWeEthProxy | `ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0xcC2fF2D38666__Ethereum_-_AmmTreasuryWeEthProxy/` |
| `0xaC5B04988BC7` | Ethereum - ipweETH | `IpToken.sol:IpToken` | `deployed-source/0xaC5B04988BC7__Ethereum_-_ipweETH/` |
| `0x16d104009964` | IporProtocolRouterProxy | `ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0x16d104009964__IporProtocolRouterProxy/` |
| `0x364f116352EB` | AmmStorageUsdtProx | `@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0x364f116352EB__AmmStorageUsdtProx/` |
| `0x137000352B4e` | AmmTreasuryUsdcProxy | `@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0x137000352B4e__AmmTreasuryUsdcProxy/` |
| `0x63395EDAF74a` | AmmTreasuryEthProxy | `ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0x63395EDAF74a__AmmTreasuryEthProxy/` |
| `0x28BC58e600eF` | AmmTreasuryUsdtProxy | `ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0x28BC58e600eF__AmmTreasuryUsdtProxy/` |
| `0x7c0e72f431FD` | ipUSDC | `IpTokenUsdt.sol:IpTokenUsdt` | `deployed-source/0x7c0e72f431FD__ipUSDC/` |
| `0x77Fe3a8E8d1d` | Ethereum - AmmStorageWeEthProxy | `ERC1967Proxy.sol:ERC1967Proxy` | `deployed-source/0x77Fe3a8E8d1d__Ethereum_-_AmmStorageWeEthProxy/` |
| `0xc40431b6C510` | ipstETH | `IpToken.sol:IpToken` | `deployed-source/0xc40431b6C510__ipstETH/` |

## In-scope assets with no repo to clone

**Coverage after this pass:** all 12 deployed-contract assets listed below (ipUSDT, ipUSDC, ipstETH, ipweETH, the `AmmStorage*Proxy` / `AmmTreasury*Proxy` pairs and `IporProtocolRouterProxy`) are now covered by the cloned `ipor-protocol` repo, with `ipor-power-tokens` covering the adjacent staking layer. **Nothing remains unidentified**; asset 3 "Primacy of Impact" (`https://immunefi.com`) is a placeholder, not a deployed contract, and has no repo by nature.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0x9Bd2177027edEE300DC9F1fb88F24DB6e5e1edC6 — ipUSDT
- [Smart contract] https://etherscan.io/address/0xB3d1c1aB4D30800162da40eb18B3024154924ba5 — AmmStorageUsdcProx
- [Smart contract] https://etherscan.io/address/0xcC2fF2D38666723ea56c122097F6215B90d74196 — Ethereum - AmmTreasuryWeEthProxy
- [Smart contract] https://etherscan.io/address/0xaC5B04988BC71bEE96f8D93040777Db3ef166125 — Ethereum - ipweETH
- [Smart contract] https://etherscan.io/address/0x16d104009964e694761C0bf09d7Be49B7E3C26fd — IporProtocolRouterProxy
- [Smart contract] https://etherscan.io/address/0x364f116352EB95033D73822bA81257B8c1f5B1CE — AmmStorageUsdtProx
- [Smart contract] https://etherscan.io/address/0x137000352B4ed784e8fa8815d225c713AB2e7Dc9 — AmmTreasuryUsdcProxy
- [Smart contract] https://etherscan.io/address/0x63395EDAF74a80aa1155dB7Cd9BBA976a88DeE4E — AmmTreasuryEthProxy
- [Smart contract] https://etherscan.io/address/0x28BC58e600eF718B9E97d294098abecb8c96b687 — AmmTreasuryUsdtProxy
- [Smart contract] https://etherscan.io/address/0x7c0e72f431FD69560D951e4C04A4de3657621a88 — ipUSDC
- [Smart contract] https://etherscan.io/address/0x77Fe3a8E8d1d73Df54Ca07674Bf1bD6C5841e3b5 — Ethereum - AmmStorageWeEthProxy
- [Smart contract] https://etherscan.io/address/0xc40431b6C510AeB45Fbb5e21E40D49F12b0c1F0c — ipstETH

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds

## Out of scope (from the program page)

- Broken link hijacking is out of scope
- Best practice critiques
- IPOR index value manipulation through AAVE & Compound
- Issues when the liquidity of liquidity pools equals zero
- Interest Rate Swaps opening and closing

## Notes on assets

Impacts only apply to assets in active use by the project like contracts on mainnet or web/app assets used in production. Any impact that applies to assets not in active use, like test or mock files, are out-of-scope of the bug bounty program unless explicitly mentioned as in-scope. 

__Smart Contracts__ 

- __Smart Contracts - PoC__, Smart Contract bug reports are to include a runnable Proof of Concept (PoC) in order to prove impact.  
- For more information on PoCs please visit: [Proof of Concept (PoC) Guidelines and Rules](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules)


Whitehats are highly encouraged to review any potential subdomains and what specific port(s) are in scope. Even though the domain may be the same, different ports may point to different assets.  

__Dev Environment and Documentation:__

IPOR has included dev documentation and/or instructions to help in reviewing code and exploring for bugs:
- [https://docs.ipor.io/](https://docs.ipor.io/)
- [https://github.com/IPOR-Labs/ipor-protocol/blob/main/README.md](https://github.com/IPOR-Labs/ipor-protocol/blob/main/README.md)
- [https://github.com/IPOR-Labs/ipor-power-tokens/blob/main/README.md](https://github.com/IPOR-Labs/ipor-power-tokens/blob/main/README.md)

__Impacts to other assets:__

Hackers are encouraged to submit issues outside of the outlined Impacts and Assets in Scope. 

If whitehats can demonstrate a critical impact on code in production for an asset not in scope, IPOR encourages you to submit your bug report using the “primacy of impact exception” asset. 

__Impacts in Scope:__

(For Blockchain/DLTR and Smart Contracts Only) This program is considered to be governed by Primacy of Impact. For more information on what this means visit: [Best Practice - Primacy of Impact vs Primacy of Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact) 

Impacts are based on the [Immunefi Vulnerability Severity Classification System V2.2.](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2/)

At Immunefi, we classify bugs on a simplified 5-level scale:
- Critical
- High
- Medium
- Low
- Nonec:["

## Rewards / payout terms

Please review how rewards are distributed based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale system with separate scales for Smart Contracts and Websites/Apps.

__Payouts and Payout Requirements:__

Payouts are handled by the IPOR team directly and are denominated in USD. However, payouts are done in USDC and IPOR. For critical vulnerability, IPOR DAO will pay 50% in USDC and 50% in IPOR tokens.  IPOR commits to honoring payouts according to the terms set out in this program at the time of report submission, and to treat this program as the agreement and source of truth concerning bug reports and responsible disclosures. 

| Impact     | Criteria for assessing economic damage     |
| ---------- | ---------- |
| Critical       | Risk Ratio = Funds at Risk / ( IPOR TVL). If the risk ratio is at or below 0.5, the payout is calculated linearly between 0$ and 25K. If the risk ratio is above 0.5, the payout is calculated linearly between USD $25K and USD $100K; with a maximum cap of $100K. In the event that the funds at risk is greater than the IPOR TVL, the maximum reward will not exceed USD $100K.

For the purposes of determining report validity, this is a Primacy of Impact program. 

Learn more about report validity best practices here: [Best Practice - Primacy of Impact vs Primacy of Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact) 

__KYC Requirements:__

IPOR __does not__ have a Know Your Customer (KYC) requirement for bug bounty payouts. 

__Audit Discoveries and Known Issues:__

Bug reports covering previously-discovered bugs are not eligible for any reward through the bug bounty program. If a bug report covers a known issue, it may be rejected together with proof of the issue being known before escalation of the bug report via Immunefi. 

__Description of known issue:__
- IPOR index value manipulation through AAVE & Compound
- reports reported via github [https://github.com/IPOR-Labs/ipor-audit-reports](https://github.com/IPOR-Labs/ipor-audit-reports)
- The issue with liquidity pools amount equals zero
- asset management relies on the published token exchange rate (gas optimization)
- when opening swaps the asset management holdings are calculated without the interest (gas optimisation)

## Program overview

IPOR refers to a set of protocols, smart contracts, and software that forms a set of Decentralized Applications (DApps) for Decentralized Finance (DeFi) focused on interest rate derivatives. The core IPOR infrastructure consists of three main parts: the IPOR Index (Index), Liquidity Pools with an Automated Market Maker (AMM) and Asset Management smart contracts. The first type of interest rate derivatives supported by the AMM are Interest Rate Swaps (Swap or IRS). The system also incorporates a Decentralized Autonomous Organization (DAO) and a Treasury in the spirit of decentralization.

For more information about IPOR, please visit [https://www.ipor.io/ ](https://www.ipor.io/) 

__For Whitehats:__ It is highly recommended that you review the details of this program in full. Although many Bug Bounty programs have standard terms and conditions, each also has their own unique details that are critical to your success.  

Prior to submitting a report please review the [Immunefi Bug Report Template and Best Practices. ](https://immunefisupport.zendesk.com/hc/en-us/articles/12435277406481-Bug-Report-Template)

