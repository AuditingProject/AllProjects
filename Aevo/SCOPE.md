# Aevo — Immunefi scope

- Program: https://immunefi.com/bug-bounty/Aevo/scope/
- Max bounty: **$300,000**
- KYC required: **no**
- Launched 2021-04-12, program updated 2026-07-23
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $50,000 – $300,000 |
| Smart contract | High | $10,000 – $50,000 |
| Smart contract | Medium | $5,000 – $25,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (2)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://arbiscan.io/address/0x80d40e32fad8be8da5c6a42b8af1e181984d137c | Aevo Deposit Contract Arbitrum |
| 2 | Smart contract | https://etherscan.io/address/0x4082C9647c098a6493fb499EaE63b5ce3259c574 | Aevo Deposit Contract Ethereum |

## Repositories cloned

_No source repository could be identified for the in-scope assets, so nothing was cloned._

### How these repos were matched

- Nothing cloned. What was checked: (1) the Immunefi program text and `program-data.json` contain no github.com/gitlab.com link at all; (2) the program overview links `https://aevo.xyz`, whose docs (`www.aevo.xyz/docs`, incl. the "Deposit contracts" page that lists these exact addresses) link only `github.com/aevoxyz/aevo-sdk`, `github.com/ribbon-finance/aevo-mcp` and `github.com/ribbon-finance/aevo-trading-skills` — SDK/MCP/agent tooling, no contract sources; (3) `gh api orgs/aevoxyz/repos` returns only `aevo-sdk` and `audit` (audit PDFs only), and the `ribbon-finance` org's contract repos (`ribbon-v1`, `ribbon-v2`, `core-cash`, …) contain no deposit-contract source — `gh search code --owner ribbon-finance --filename Vault.sol` returns nothing; (4) Sourcify reports the on-chain names as `contracts/legacy/L1ChugSplashProxy.sol:L1ChugSplashProxy` (Ethereum, 0x4082…c574 — an Optimism-monorepo proxy) and `src/Vault.sol:Vault` (Arbitrum, 0x80d4…d137c), and no Aevo/Ribbon-published repo contains that `src/Vault.sol`.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **2 of 2** in-scope addresses have full source on disk.

Sources: sourcify (2).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x80d40e32fad8` | Aevo Deposit Contract Arbitrum | `src/Vault.sol:Vault` | `deployed-source/0x80d40e32fad8__Aevo_Deposit_Contract_Arbitrum/` |
| `0x4082C9647c09` | Aevo Deposit Contract Ethereum | `contracts/legacy/L1ChugSplashProxy.sol:L1ChugSplashProxy` | `deployed-source/0x4082C9647c09__Aevo_Deposit_Contract_Ethereum/` |

## In-scope assets with no repo to clone

Coverage: none of the in-scope assets are covered by a cloned repo; both remain unidentified (see the note above for what was checked).

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://arbiscan.io/address/0x80d40e32fad8be8da5c6a42b8af1e181984d137c — Aevo Deposit Contract Arbitrum
- [Smart contract] https://etherscan.io/address/0x4082C9647c098a6493fb499EaE63b5ce3259c574 — Aevo Deposit Contract Ethereum

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
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

- Best practice critiques
 
-  Oracle failure/manipulation
- Novel governance attacks 
- Congestion and scalability
  - including running out of gas
  - including block stuffing
  - including susceptibility to frontrunning
- Consensus failures
- Cryptography problems
  - Signature malleability
  - Susceptibility to replay attacks
  - Weak randomness
- Weak encryption

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on
the [Immunefi Vulnerability Severity Classification System](/severity-system/). This is a simplified 5-level scale, with separate scales for websites/apps and smart contracts/blockchains, encompassing everything from consequence of exploitation to privilege required to likelihood of a successful exploit.

Smart Contracts Critical:
  - Loss of user funds:
    - 1% of all assets at risk, minimum __50 000 USD__, maximum __300 000 USD__
  - Loss of non-user funds (e.g. treasury):
    - 1% of assets at risk, minimum __50 000 USD__ , maximum __150 000 USD__

Smart Contracts High:
  - 1% of all assets at risk when attack persists for 1 month minimum __10 000 USD__, maximum of __50 000 USD__

Smart Contracts Medium:
  - 1% of all assets at risk when attack persists for 1 month minimum __5 000 USD__, maximum __25 000 USD__

Smart Contracts Low:
  - __2 000 USD__

Payouts are handled by the **Aevo** team directly and are denominated in USD. However, payouts are done in **USDC**.

## Program overview

Aevo is a new protocol that creates crypto structured products for DeFi. Structured products are packaged financial instruments that use a
combination of derivatives to achieve some specific risk-return objective, such as betting on volatility, enhancing yields or principal protection.  

The bug bounty program is focused around its smart contracts and is mostly concerned with the loss of user funds.

For more information about Aevo, please visit https://aevo.xyz

