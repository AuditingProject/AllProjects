# KAST — Immunefi scope

- Program: https://immunefi.com/bug-bounty/KAST/scope/
- Max bounty: **$50,000**
- KYC required: **yes**
- Launched 2026-04-20, program updated 2026-06-24
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $21,000 – $50,000 (10% of funds at risk) |
| Smart contract | High | $10,000 – $20,000 |
| Smart contract | Medium | $5,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (2)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://solscan.io/account/extaykYu5AQcDm3qZAbiDN3yp6skqn6Nssj7veUUGZw | USDK Extension Program |
| 2 | Smart contract | https://solscan.io/account/extMahs9bUFMYcviKCvnSRaXgs5PcqmMzcnHRtTqE85 | USDKY Extension Program |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `solana-m-extensions/` | https://github.com/m0-foundation/solana-m-extensions | main | 104d2e4 2026-10-19 imp: Housekeeping after Dawn deployment (#69) | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 2** in-scope addresses have full source on disk.
- 2 are on a chain this collection cannot fetch source for.

**No source retrieved** (by chain): Solana (2).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://solscan.io/account/extaykYu5AQcDm3qZAbiDN3yp6skqn6Nssj7veUUGZw — USDK Extension Program
- [Smart contract] https://solscan.io/account/extMahs9bUFMYcviKCvnSRaXgs5PcqmMzcnHRtTqE85 — USDKY Extension Program

## Impacts in scope

**Smart contract — Critical**
- Incorrect calculation of multisig signers required for transaction processing
- Permanent freezing of funds
- Manipulation of governance voting result deviating from voted outcome and resulting in a direct change from intended effect of original results
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Protocol insolvency

**Smart contract — High**
- Permanent freezing of unclaimed yield
- Permanent freezing of unclaimed royalties
- Temporary freezing of funds
- Theft of unclaimed yield
- Theft of unclaimed royalties
- Prevention of governance participation despite design parameters providing participation rights

**Smart contract — Low**
- Smart contract fails to deliver promised token amounts but the remaining token amounts is not stolen or lost and can still be claimed
- Impacts caused by griefing with no economic damage other than transaction fees where fix requires a change or a pause of a smart contract

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Theft of coins or tokens (e.g gas) in a smart contract intended for transaction fees

## Out of scope (from the program page)

__All Categories:__

- Impacts requiring attacks that the reporter has already exploited themselves, leading to damage
- Impacts caused by attacks requiring access to leaked keys/credentials
- Impacts caused by attacks requiring access to privileged addresses (governance, strategist) except in such cases where the contracts are intended to have no privileged access to functions that make the attack possible
- Impacts relying on attacks involving the depegging of an external stablecoin where the attacker does not directly cause the depegging due to a bug in code
- Mentions of secrets, access tokens, API keys, private keys, etc. in Github will be considered out of scope without proof that they are in-use in production
- Best practice recommendations
- Feature requests
- Impacts on test files and configuration files unless stated otherwise in the bug bounty program
- Impacts requiring phishing or other social engineering attacks against project's employees and/or customers
- Impacts relying on theoretical user interactions without any demonstration of regular or significant occurrence

## Notes on impacts

__Public Disclosure of Known Issues__

Bug reports covering previously-discovered bugs (listed below) are not eligible for a reward within this program. This includes known issues that the project is aware of but has consciously decided not to “fix”, perform necessary code changes, or any implemented operational mitigating procedures that can lessen potential risk.

- Unsupported Mint Extensions - Acknowledged
- In m_ext , the code utilizes trunc and floor to convert multiplier * INDEX_SCALE_F64 into an integer index, which may result in discarding edge cases with small fractional parts such as .9995 , creating an off-by-one error
- Retroactive Fee Application for Crank Version of Extensions - Acknowledged
- Earners Will Lose Pending Yield When Removed - Acknowledged
- ext_mint Can Have CloseMintAuthority & PermanentDelegate Extensions Activated - Acknowledged

Any unfixed vulnerabilities mentioned in these reports are not eligible for a reward.

## Rewards / payout terms

#### Reward Calculation for Critical Level Reports

For critical smart contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of **USD 50 000**. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of **USD 21 000** is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

#### Repeatable Attack Limitations

* If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward.   
* The amount of funds at risk will be calculated with the impact of the first attack being at **100%** and then a reduction of **25%** from the amount of the first attack for every \[**300 blocks\]** the attack needs for subsequent attacks from the first attack, rounded down.

#### 

#### Reward Calculation for High Level Reports

High impacts concerning theft/permanent freezing of unclaimed yield/royalties are rewarded within a range of **USD 10 000 to USD 20 000**. with the reward calculated based on **100%** of the funds at risk, though capped at the maximum high reward. 

In the event of temporary freezing, the reward doubles from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. 

#### 

#### Reward Payment Terms

Payouts are handled by the KAST team directly and are denominated in USD. However, payments are done in USDC on Ethereum.

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

$62

