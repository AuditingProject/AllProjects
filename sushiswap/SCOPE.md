# sushiswap — Immunefi scope

- Program: https://immunefi.com/bug-bounty/sushiswap/scope/
- Max bounty: **$200,000**
- KYC required: **no**
- Launched 2021-03-26, program updated 2025-10-16
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $20,000 – $200,000 (10% of funds at risk) |
| Smart contract | High | $5,000 – $20,000 |
| Smart contract | Medium | $1,000 – $5,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (3)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://docs.sushi.com/contracts/red-snwapper#deployments | Red Snwapper |
| 2 | Smart contract | https://docs.sushi.com/contracts/cpamm#deployments | cpAMM (SuhiSwap V2) |
| 3 | Smart contract | https://docs.sushi.com/contracts/clamm#deployments | clAMM (SuhiSwap V3) |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `v2-core` | https://github.com/sushiswap/v2-core | master (default) | `a349882c918c752d0363e4c6e02dedcbc48b734e` | resolved from github.com/sushiswap org repo listing (org linked in program-data.json) |
| `v3-core` | https://github.com/sushiswap/v3-core | master (default) | `21dfbed6b5e343559a14a7825e3d2f3be2611d8a` | resolved from github.com/sushiswap org repo listing |
| `v3-periphery` | https://github.com/sushiswap/v3-periphery | master (default) | `5c4e99c9af11adcc03e0255a15d378d432b74ec0` | resolved from github.com/sushiswap org repo listing |

### How these repos were matched

- The `github.com/sushiswap` and `github.com/sushi-labs` orgs are both linked from program-data.json; repos were enumerated with `gh api orgs/<org>/repos`. The in-scope asset links point at docs.sushi.com pages, whose source (`sushi-labs/sushi`, `site/pages/contracts/{cpamm,clamm,red-snwapper}.mdx`) names the exact deployed contracts, which is what the matches below are keyed to.
- `v2-core` — the cpAMM asset (2) resolves on docs.sushi.com to `SUSHISWAP_V2_FACTORY_ADDRESS` and `SUSHISWAP_V2_ROUTER_ADDRESS`. Verification: `contracts/UniswapV2Factory.sol`, `contracts/UniswapV2Pair.sol` and `contracts/UniswapV2Router02.sol` are the constant-product factory/pair/router sources for exactly those deployments.
- `v3-core` — the clAMM asset (3) resolves to `SUSHISWAP_V3_FACTORY_ADDRESS` plus the V3 init code hash. Verification: `contracts/UniswapV3Factory.sol`, `contracts/UniswapV3Pool.sol`, `contracts/UniswapV3PoolDeployer.sol` are the concentrated-liquidity factory/pool sources behind those addresses.
- `v3-periphery` — the clAMM asset (3) also lists `SUSHISWAP_V3_POSITION_MANAGER`, `SUSHISWAP_V3_TICK_LENS` and `SUSHISWAP_V3_QUOTER`. Verification: `contracts/NonfungiblePositionManager.sol`, `contracts/lens/TickLens.sol` and `contracts/lens/Quoter.sol` match those three deployed contract names.
- Red Snwapper (asset 1) — no qualifying repo. Checked: full repo listings of `github.com/sushiswap` and `github.com/sushi-labs`, and `gh search code "contract RedSnwapper"`. The only sushi-published hits are the docs page `sushi-labs/sushi/site/pages/contracts/red-snwapper.mdx` and TypeScript address constants/config (`sushi-labs/sushi/src/evm/config/features/red-snwapper.ts`); `sushi-labs/sushiswap` contains no Solidity at all. The `RedSnwapper.sol` source only appears in third-party mirrors, which does not satisfy the "published by the project" requirement, so it was not cloned.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 3** in-scope addresses have full source on disk.
- 3 are on a chain this collection cannot fetch source for.

**No source retrieved** (by chain): docs.sushi.com (3).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

**Coverage update:** assets 2 (cpAMM / SushiSwap V2) and 3 (clAMM / SushiSwap V3) are now covered by the cloned `v2-core`, `v3-core` and `v3-periphery` repos. Asset 1 (Red Snwapper) remains unidentified — no Solidity source for `RedSnwapper` is published in any sushiswap / sushi-labs repo (see the matching note above).

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://docs.sushi.com/contracts/red-snwapper#deployments — Red Snwapper
- [Smart contract] https://docs.sushi.com/contracts/cpamm#deployments — cpAMM (SuhiSwap V2)
- [Smart contract] https://docs.sushi.com/contracts/clamm#deployments — clAMM (SuhiSwap V3)

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed inflation
- Permanent freezing of unclaimed inflation
- Temporary freezing of funds

**Smart contract — Low**
- Contract fails to deliver promised returns, but doesn't lose value

**Smart contract — Medium**
- Block stuffing for profit
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

- Loss of positive slippage through Sandwich Attacks  
  - Best practice critiques
  - Attacks that rely on social engineering

__Bug Bounty FAQ__

__Q:__ Is there a time limit for the Bug Bounty program? 
__A:__ No, the Bug Bounty program currently has no end date, but this can be changed at any time at the discretion of SushiSwap.

__Q:__ Can I submit bugs anonymously and still receive payment? 
__A:__ Yes, if you wish to remain anonymous you can do so and still be eligible for rewards as long as they are for valid bugs. Rewards will be sent to the valid Ethereum address that you provide.

## Notes on assets

__Submission Requirements__

In order to be considered for a reward, all bug reports must contain the following:
  - Description of suspected vulnerability
  - POC demonstrating the vulnerability for reproduction, can be a high-level POC
  - Steps to reproduce the issue
  - Your name and/or colleagues if you wish to be later recognized
  - (Optional) A patch and/or suggestions to resolve the vulnerability

__Ethical Behavior Requirements__

Responsible disclosure is predicated on ethical behavior. These guidelines outline best practices for the community as whole, whether you are reporting, or the recipient of a report. By stating that you adhere to this policy, you’re claiming to handle vulnerability information ethically, and abide by the following:

  - Do not attempt to leverage a vulnerability, or information of its existence as part of a financial trading strategy or otherwise for financial gain.
  - Do not attempt to compromise systems upon which development of a product relies; including but not limited to compromising development systems, accounts, domains, email, etc..
  - Do not attempt to sell vulnerability information or exploits.
  - Do not ask for any form of compensation from an affected party. You may compensate a disclosing party if you would like to after all known vulnerability details have been disclosed.
  - Do not disclose a bug or vulnerability on mailing lists, public boards, forums, social media or any other channel prior to Responsibly Disclosing to the organizations you have a published relationship with
  - Do not attempt any illegal acts, including phishing, physical attacks, DDoS, or any attempt to gain access without authorization.

__3rd Party Affected Projects__

In the case where we become aware of security issues affecting other projects that have never affected SushiSwap, our intention is to inform those projects of security issues on a best effort basis.

In the case where we fix a security issue in SushiSwap that also affects the following neighboring projects, our intention is to engage in responsible disclosures with them as described in the adopted standard, subject to the deviations described in the deviations section below.

__Deviations from the Standard__

In the case of a counterfeiting or fund-stealing bug affecting SushiSwap, however, we might decide not to include those details with our reports to partners ahead of coordinated release, as long as we are sure that they are not vulnerable.

__Notes on Expected Behaviors__

  - Any reports that involve tokens outside of ERC20s will not be considered in scope. (i.e. ERC777 tokens)c:

## Notes on impacts

When submitting a bug report, please select the severity level you feel best corresponds to the severity classification system.

## Rewards / payout terms

$63

## Program overview

SushiSwap is an automated market-making (AMM) decentralized exchange (DEX) that allows users to provide liquidity for token swaps.

Further resources regarding SushiSwap can be found on their website, [https://sushi.com](https://sushi.com).

Program focuses on three sets of contracts:
  - Constant Product AMM
  - Concentrated Liquidity AMM
  - RedSnwapper


The bug bounty program is focused around it's smart contracts for the purpose of preventing the loss of user funds.

