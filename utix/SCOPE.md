# utix — Immunefi scope

- Program: https://immunefi.com/bug-bounty/utix/scope/
- Max bounty: **$500,000**
- KYC required: **no**
- Launched 2023-07-26, program updated 2025-01-24
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $500,000 (25% of funds at risk) |

## Assets in scope (1)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0xc9d7bd1Fad7D5621DdA20335818E9575Ae07Ea03 | MintedTokenCappedCrowdsaleExtv1 |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| UtixSmartContracts | https://github.com/utix-protocol/UtixSmartContracts | master (default) | b23d64a50e98d93147ddcb247c070cd7f3f5cc24 | resolved from the GitHub org `utix-protocol` ("UTIX Inc.", homepage `utix.io`, contact `info@utix.io`), i.e. the project website linked in the program overview |

### How these repos were matched

- `UtixSmartContracts` — Evidence: the program text links no repo, so resolution went via the project website published in the program overview (`https://utix.io/`). The GitHub org `utix-protocol` self-identifies as "UTIX Inc." with homepage `utix.io` and contact `info@utix.io`, and `UtixSmartContracts` is its only repo. Verification: Sourcify reports the verified on-chain name of the single in-scope asset (Ethereum `0xc9d7bd1Fad7D5621DdA20335818E9575Ae07Ea03`) as `project:/contracts/MintedTokenCappedCrowdsaleExtv1.sol:MintedTokenCappedCrowdsaleExtv1` — the repo contains exactly `contracts/MintedTokenCappedCrowdsaleExtv1.sol`, matching both the path and the asset description `MintedTokenCappedCrowdsaleExtv1`.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **1 of 1** in-scope addresses have full source on disk.

Sources: blockscout:eth.blockscout.com (1).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xc9d7bd1Fad7D` | MintedTokenCappedCrowdsaleExtv1 | `MintedTokenCappedCrowdsaleExtv1` | `deployed-source/0xc9d7bd1Fad7D__MintedTokenCappedCrowdsaleExtv1/` |

## In-scope assets with no repo to clone

**Coverage:** the single in-scope asset (`MintedTokenCappedCrowdsaleExtv1`, Ethereum `0xc9d7bd1Fad7D5621DdA20335818E9575Ae07Ea03`) is now covered by the cloned `UtixSmartContracts` repo (`contracts/MintedTokenCappedCrowdsaleExtv1.sol`). None remain unidentified.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0xc9d7bd1Fad7D5621DdA20335818E9575Ae07Ea03 — MintedTokenCappedCrowdsaleExtv1

## Impacts in scope

**Smart contract — Critical**
- Unlocking stuck funds

## Rewards / payout terms

Rewards are distributed according to the impact the vulnerability could otherwise cause based on the Impacts in Scope table further below. 

__Reward Calculation for Critical Level Reports__

For critical Smart Contract bugs, the reward amount is 25% of the funds directly affected up to a maximum of USD 500 000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 25 000 is to be rewarded in order to incentivize security researchers against withholding a bug report.   
There are currently 800 000 USD locked in the smart contract and a minimum payout of 25,000 USD will be provided if 25% of the funds can be successfully recovered. The payout amount will be scaled up proportionally to 500,000 USD for 100% recovery of the funds.

__Repeatable Attack Limitations__

In cases of repeatable attacks for smart contract bugs, only the first attack will be counted, regardless of whether the smart contract is upgradable, pausable, or killable.

__Proof of Concept (PoC) Requirements__

A PoC is required for the following severity levels:
- Smart Contract - Critical - PoC Required

All PoCs submitted must comply with the Immunefi-wide [PoC Guidelines and Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules) Bug report submissions without a PoC when a PoC is required will not be provided with a reward.

__Reward Payment Terms__

Payouts are handled by the Utix team directly and are denominated in USD. However, payments are done in ETH. 

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability. For avoidance of doubt, if the reward amount is USD 5 000 and the average price is USD 1.75 per token, then the reward will be 2857.142857 units of that token.

## Program overview

UTIX is a decentralized, event hosting and e-ticketing platform that utilizes blockchain based smart contracts to bring control to the community.

The main purpose of this bug bounty program is to help identify a way to unlock funds that are stuck in our smart contract.

For more information about Utix, please visit [https://utix.io/](https://utix.io/)

Utix provides rewards in ETH. For more details about the payment process, please view the Rewards by Threat Level section further below. 


__Primacy of Impact vs Primacy of Rules__

Utix adheres to the Primacy of Rules, which means that the whole bug bounty program is run strictly under the terms stated in this page.

__Known Issue Assurance__

Utix commits to providing Known Issue Assurance to bug submissions through their program. This means that Utix will either disclose known issues publicly or at the very least privately via a self-reported bug submission in order to allow for a more objective and streamlined mediation process to prove that an issue is known. Otherwise, assuming the bug report itself is valid, it would result in the bug report being considered in-scope and due 100% of the reward with respect to the bug bounty program terms. 

__Immunefi Standard Badge__

Utix has satisfied the requirements for the [Immunefi Standard Badge](https://immunefisupport.zendesk.com/hc/en-us/articles/6427157117713-The-Immunefi-Standard-Badge-), which is given to projects that adhere to our best practices.

