# trufin — Immunefi scope

- Program: https://immunefi.com/bug-bounty/trufin/scope/
- Max bounty: **$20,000**
- KYC required: **yes**
- Launched 2023-09-27, program updated 2026-10-08
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $20,000 |
| Smart contract | High | $10,000 |
| Smart contract | Medium | $3,000 |

## Assets in scope (2)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://explorer.solana.com/address/6EZAJVrNQdnBJU6ULxXSDaEoK6fN7C3iXTCkZKRWDdGM?cluster=devnet | Solana staker and whitelist contracts on testnet |
| 2 | Smart contract | https://github.com/TruFin-io/smart-contracts-solana-public | Solana staker and whitelist contracts on GitHub |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `smart-contracts-solana-public/` | https://github.com/TruFin-io/smart-contracts-solana-public | main | d13da28 2026-10-15 Merge pull request #14 from TruFin-io/jeremy/feat/no-ref/sync-from-private-20261015 | in-scope asset |

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 1** in-scope addresses have full source on disk.
- 1 metadata-only (no source published; the record holds the contract name or the verified-build repo and commit).

**Metadata-only records**

- `6EZAJVrNQdnBJU` Solana staker and whitelist contracts on testnet — name unavailable (via osec-verify)

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://explorer.solana.com/address/6EZAJVrNQdnBJU6ULxXSDaEoK6fN7C3iXTCkZKRWDdGM?cluster=devnet — Solana staker and whitelist contracts on testnet

## Impacts in scope

**Smart contract — Critical**
- Manipulation of governance voting result deviating from voted outcome and resulting in a direct change from intended effect of original results
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Theft of unclaimed royalties
- Permanent freezing of unclaimed yield
- Permanent freezing of unclaimed royalties
- Temporary freezing of funds

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Block stuffing
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

- Impacts caused by bugs found in external libraries used by the contract
- Best practice recommendations

## Rewards / payout terms

Rewards are distributed according to the impact the vulnerability could otherwise cause based on the Impacts in Scope table further below. 

__Repeatable Attack Limitations__

In cases of repeatable attacks for smart contract bugs, only the first attack will be counted, regardless of whether the smart contract is upgradable, pausable, or killable.

__Public Disclosure of Known Issues__

Bug reports covering previously discovered bugs acknowledged below are not eligible for any reward through the bug bounty program. 

- Slashing is only enabled for Injective. Any issue related to slashing for other stakers will not be considered.
- Apart from the Solana staker, all TruFin stakers offer an allocation feature that enables a user to allocate rewards from the staked token. The amount allocated may exceed the total value currently staked by the user, which is fine. The user will still be required to have enough tokens in their wallet at the point at which distributions are made, hence no issue related to users not having enough to cover allocation’s distributions will be considered a bug.


__Proof of Concept (PoC) Requirements__

A PoC is required for the following severity levels:
- Smart Contract - Critical
- Smart Contract - High
- Smart Contract - Medium

All PoCs submitted must comply with the Immunefi-wide [PoC Guidelines and Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules) Bug report submissions without a PoC when a PoC is required will not be provided with a reward.

__Reward Payment Terms__

Payouts are handled by the Trufin team directly and are denominated in USD. However, payments are done in USDC.64

## Program overview

The TruFin Protocol builds institutional-grade DeFi primitives that can be used as the foundational building blocks for complex digital asset strategies to reduce risk while generating rewards, securely on-chain.

TruStake vaults provide access to liquid staking on the Solana network. In exchange for depositing assets in a TruStake vault, users receive the liquid staking token TruSOL.

This bug bounty program covers the TruStake smart contracts and whitelists listed in scope, and is primarily concerned with the loss of user funds. The program follows the Primacy of Rules: only the assets and impacts listed in scope are eligible.

Rewards are allocated based on the severity of the bug disclosed. The scope, terms and rewards are at the sole discretion of the TruFin Protocol.

For more information about TruFin, please visit https://trufin.io.

TruFin provides rewards in USDC. For more details about the payment process, please view the Rewards by Threat Level section.


__Primacy of Rules__

This program adheres to the Primacy of Rules. Only the assets and impacts listed in the Scope section of this program are eligible for a reward, and every report is bound by the terms of this bug bounty program.

- A report is eligible only if it affects an in-scope asset and demonstrates an in-scope impact.
- Assets owned by TruFin that are not listed as in-scope are not covered, even if the impact is critical.
- Other TruFin projects are not covered by this program. Check whether they have their own bug bounty program on Immunefi.
- Testnet and mock files are not covered.
- Rewards are determined by the severity classification and terms set out in this program, at the sole discretion of TruFin Protocol.


__Immunefi Standard Badge__

TruFin has satisfied the requirements for the [Immunefi Standard Badge,](https://immunefisupport.zendesk.com/hc/en-us/articles/6427157117713-The-Immunefi-Standard-Badge-) which is given to projects that adhere to our best practices.

