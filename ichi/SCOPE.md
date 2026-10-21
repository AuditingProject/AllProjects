# ichi — Immunefi scope

- Program: https://immunefi.com/bug-bounty/ichi/scope/
- Max bounty: **$50,000**
- KYC required: **no**
- Launched 2021-06-17, program updated 2024-11-12
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | High | $20,000 |
| Smart contract | Medium | $5,000 |
| Smart contract | Low | $1,000 |
| Smart contract | Critical | $50,000 (10% of funds at risk) |

## Assets in scope (5)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0xd0092632b9ac5a7856664eec1abb6e3403a6a36a | OneTokenFactory |
| 2 | Smart contract | https://etherscan.io/address/0x14356bf935d6a62f3b87ab89f729217599bc108d | OneTokenV1 |
| 3 | Smart contract | https://etherscan.io/address/0x81c9932bd9a87e454710ef83551ac32dd808630e | Basic Null Controller |
| 4 | Smart contract | https://etherscan.io/address/0x58254B405E85359Fc7Eb3b8856bA82A4dD7C82E2 | Incremental Mint Master |
| 5 | Smart contract | https://github.com/ichifarm/ichi-oneToken | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `ichi-oneToken/` | https://github.com/ichifarm/ichi-oneToken | master | 4873873 2024-01-27 updated readme | in-scope asset |

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **4 of 4** in-scope addresses have full source on disk.

Sources: blockscout:eth.blockscout.com (4).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xd0092632b9ac` | OneTokenFactory | `OneTokenFactory` | `deployed-source/0xd0092632b9ac__OneTokenFactory/` |
| `0x14356bf935d6` | OneTokenV1 | `OneTokenV1` | `deployed-source/0x14356bf935d6__OneTokenV1/` |
| `0x81c9932bd9a8` | Basic Null Controller | `NullController` | `deployed-source/0x81c9932bd9a8__Basic_Null_Controller/` |
| `0x58254B405E85` | Incremental Mint Master | `Incremental` | `deployed-source/0x58254B405E85__Incremental_Mint_Master/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0xd0092632b9ac5a7856664eec1abb6e3403a6a36a — OneTokenFactory
- [Smart contract] https://etherscan.io/address/0x14356bf935d6a62f3b87ab89f729217599bc108d — OneTokenV1
- [Smart contract] https://etherscan.io/address/0x81c9932bd9a87e454710ef83551ac32dd808630e — Basic Null Controller
- [Smart contract] https://etherscan.io/address/0x58254B405E85359Fc7Eb3b8856bA82A4dD7C82E2 — Incremental Mint Master

## Impacts in scope

**Smart contract — Critical**
- Critical Smart Contract Impact

**Smart contract — High**
- High Smart Contract Impact

**Smart contract — Low**
- Low Smart Contract Impact

**Smart contract — Medium**
- Medium Smart Contract Impact

## Out of scope (from the program page)

- Best practice critiques

## Notes on assets

Vulnerabilities affecting the four listed smart contracts are prioritized over the other smart contracts found on the GitHub link. Testnet smart contracts and other assets that are not smart contracts are not included in this bug bounty program.

## Rewards / payout terms

Rewards for Smart Contract vulnerabilities are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps and smart contracts/blockchains, encompassing everything from consequence of exploitation to privilege required to likelihood of a successful exploit. 

Payouts are handled by the __ICHI__ team directly and are denominated in USD. However, payouts are done in __USDC__ for rewards up to __USD 10 000__. For payouts greater, the reward is paid in __xICHI__. Critical payouts are done over a 6-month period distributed every month with the utilization of a Sablier contract

## Program overview

ICHI is a self-sustaining, community governed platform that enables any other cryptocurrency community to create and govern their own in-house, non-custodial oneToken (a stablecoin valued at $1). 

ICHI is the governance token of the ichi.org community and platform. It is hard capped at 5M tokens.  Each ICHI is a vote on allowed oracles, collateral, investment strategies, etc in exchange for protocol governance rewards.

oneTokens are the governance tokens of specific oneToken systems.  Each oneToken is a vote on treasury allocations, specific stablecoins parameters (like minting and redeeming fees), and on adoption programs.

More information about Ichi can be found on their website, [https://www.ichi.org/](https://www.ichi.org/).  

This bug bounty program is focused around its smart contracts and is mostly concerned with the prevention of the loss of user funds.

