# onre — Immunefi scope

- Program: https://immunefi.com/bug-bounty/onre/scope/
- Max bounty: **$100,000**
- KYC required: **yes**
- Launched 2026-05-11, program updated 2026-08-28
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $10,000 – $100,000 (10% of funds at risk) |
| Smart contract | High | $5,000 |
| Smart contract | Medium | $2,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (1)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://solscan.io/account/onreuGhHHgVzMWSkj2oQDLDtvvGvoepBPkqyaubFcwe | OnRe Program |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `onre-sol/` | https://github.com/onre-finance/onre-sol | mainnet-live | c049083 2026-09-21 Merge pull request #152 from onre-finance/feat/security-txt | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 1** in-scope addresses have full source on disk.
- 1 is on a chain this collection cannot fetch source for.

**No source retrieved** (by chain): Solana (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://solscan.io/account/onreuGhHHgVzMWSkj2oQDLDtvvGvoepBPkqyaubFcwe — OnRe Program

## Known issues (1) — not eligible

- The update_offer_fee instruction validated the new fee against `MAX_BASIS_POINTS` (10000 bps, 100%) instead of `MAX_ALLOWED_FEE_BPS` (1000 bps, 10%), the constant `make_offer` uses. This let an existing offer be updated to a fee above the protocol's 10% ceiling.  The instruction is gated to the protocol boss, which on mainnet is the Squads V4 multisig at `45YnzauhsBM8CpUz96Djf8UG5vqq2Dua62wuW9H3ja (https://github.com/onre-finance/onre-sol/commit/b1d24ca734b64d60ac72b06f2b69bd10f8aa4d9f)

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield from an unvetted address
- Permanent freezing of funds from an unvetted address
- Protocol insolvency from an unvetted address
- Manipulation of user roles inside the system via unvetted wallet or smart contract that may result in any critical severity issue
- Manipulation of governance voting result deviating from voted outcome and resulting in a direct change from intended effect of original results
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds

**Smart contract — High**
- Manipulation of user roles inside the system via unvetted wallet or smart contract that may result in any high severity issue
- Theft of unclaimed yield
- Theft of unclaimed royalties
- Permanent freezing of unclaimed yield
- Permanent freezing of unclaimed royalties
- Temporary freezing of funds

**Smart contract — Low**
- Contract fails to deliver promised returns, but doesn't lose value

**Smart contract — Medium**
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Notes on assets

Mentions of secrets, access tokens, API keys, private keys, etc. in Github will be considered out of scope without proof that they are in-use in production

## Rewards / payout terms

Rewards are distributed according to the impact the vulnerability could otherwise cause based on the Impacts in Scope table further below.
                                                                                                                
**Reward Calculation for Critical Level Reports**

For critical Smart Contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 100,000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted, and is bounded by on-chain assets exposed by the vulnerability, including but not limited to the offer and redemption vault balances and the value of any ONyc that could be minted without corresponding deposit. Capital held off-chain by On Re SAC Ltd in the regulated Bermuda SAC is not reachable from the Solana program and is therefore excluded from the funds-at-risk calculation. A minimum reward of USD 10,000 applies in order to incentivize security researchers against withholding a bug report.

**Deployed Contract Requirement**

To be eligible for a reward, the reported vulnerability must be present in the most recently deployed smart contract and must produce an eligible impact against an asset in scope.

Vulnerabilities that exist only in the GitHub source code, but not in the deployed contract, are not eligible for a reward. This may happen where a vulnerability has already been fixed in the deployed artifact or on-chain program before the public source code or related communication has been updated.

For the purpose of reward eligibility, the deployed contract takes precedence over the GitHub source code.

**Repeatable Attack Limitations**

In cases of repeatable attacks for smart contract bugs, only the first attack will be counted, regardless of whether the smart contract is upgradable, pausable, or killable.
                                                                                                                
**Previous Audits**

OnRe has provided these completed audit reports for reference. Any unfixed vulnerability mentioned in these     
reports is not eligible for a reward.                                  
                                                                                                                
**Proof of Concept (PoC) Requirements**                                                                           
                                                                                                                
A PoC is required for the following severity levels:
- Smart Contract, Critical Severity Level
- Smart Contract, High Severity Level
- Smart Contract, Medium Severity Level                                                                         
- Smart Contract, Low Severity Level
                                                                                                                
All PoCs submitted must comply with the Immunefi-wide [PoC Guidelines and Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules)
PoCs for the OnRe Solana program should be runnable in a deterministic local environment such as `solana-program-test`, `anchor-bankrun`, or LiteSVM, against the source at the commit specified in Assets in Scope. 
Bug report submissions without a PoC when a PoC is required will not be provided with a reward.

**Reward Payment Terms**

Payouts are handled by the OnRe team directly and are denominated in USD. However, payments are done in USDC.

## Program overview

OnRe issues ONyc, a yield-bearing Solana token backed by a portfolio of short-duration reinsurance contracts. Capital is held by On Re SAC Ltd (a Special Purpose Insurer regulated by the Bermuda Monetary Authority) and earns yield from real-world insurance premiums. The Solana program at `onreuGhHHgVzMWSkj2oQDLDtvvGvoepBPkqyaubFcwe` controls minting, redemption, and NAV computation. The collateral itself is held off-chain in the regulated Bermuda SAC and is therefore not reachable from the on-chain program; this bug bounty focuses on the on-chain Solana program and the supporting components listed under Assets in Scope.

For more information about OnRe, please visit https://onre.finance/. Technical and security documentation is available at https://docs.onre.finance/.

OnRe provides rewards in USDC. For more details about the payment process, please view the Rewards by Threat Level section further below.

**KYC Requirement**

The provision of KYC is required to receive a reward for this bug bounty program where the following information will be required to be provided:
- Identity Document
- Proof of Address

KYC information is only required on confirmation of the validity of a bug report and will be handled by [Onfido](https://onfido.com/).                                      

Researchers resident in [jurisdictions excluded under OnRe's policy](https://docs.onre.finance/legal/onyc-excluded-jurisdictions) and researchers in OFAC-sanctioned jurisdictions are not eligible to receive rewards.                                                                            

**Primacy of Impact vs Primacy of Rules**

OnRe adheres to the Primacy of Rules, which means that the whole bug bounty program is run strictly under the terms stated in this page.

