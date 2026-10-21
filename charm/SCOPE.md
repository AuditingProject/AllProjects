# charm — Immunefi scope

- Program: https://immunefi.com/bug-bounty/charm/scope/
- Max bounty: **$6,000**
- KYC required: **no**
- Launched 2021-02-05, program updated 2026-09-02
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $6,000 |
| Smart contract | High | $3,000 |
| Smart contract | Medium | $1,500 |
| Smart contract | Low | $1,000 |

## Assets in scope (3)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://github.com/charmfinance/alpha-vaults-v2-contracts/blob/main/contracts/AlphaProVault.sol | — |
| 2 | Smart contract | https://github.com/charmfinance/alpha-vaults-v2-contracts/blob/main/contracts/AlphaProVaultFactory.sol | — |
| 3 | Smart contract | https://github.com/charmfinance/alpha-vaults-v2-contracts/blob/main/contracts/CloneFactory.sol | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `alpha-vaults-v2-contracts/` | https://github.com/charmfinance/alpha-vaults-v2-contracts | origin/main | 0174095 2023-06-26 fix vault shares leftover vulnerability. fix manager deauth | in-scope asset |

In-scope paths inside `alpha-vaults-v2-contracts/` (3):

- `contracts/AlphaProVault.sol`
- `contracts/AlphaProVaultFactory.sol`
- `contracts/CloneFactory.sol`

## Impacts in scope

**Smart contract — Critical**
- Any governance voting result manipulation
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Miner-extractable value (MEV)
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds

**Smart contract — Low**
- Contract fails to deliver promised returns, but doesn't lose value

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Block stuffing for profit
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

- Best practice critiques

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on
the [Immunefi Vulnerability Severity Classification System](/severity-system/). This is a simplified 5-level scale, with separate scales for websites/apps and smart contracts/blockchains, encompassing everything from consequence of exploitation to privilege required to likelihood of a successful exploit.

Payouts are handled by the **Charm** team directly and are denominated in
**USD**. However, payouts are done in **ETH or USDC**.

## Program overview

Charm’s Alpha Vaults creates permissionless vaults to manage Uniswap liquidity. It uses Charm’s expertise in Decentralized Market Making Strategies to help anyone increase the liquidity of any Uniswap V3 pool. Using the vault, anyone can launch liquidity mining campaigns just like Uniswap V2, have full control over the vault’s strategy, increase token liquidity using concentrated liquidity, guarantee tokens will always be tradable, and achieve full decentralization. In addition, the vault’s shares are tokenized and ERC-20 compliant, which means LPs can deposit, withdraw, earn yield, and stake just like regular tokens.

The core contracts of Alpha Vaults version 2 are included within the scope of this bug bounty program.

