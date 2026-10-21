# STON.fi DEX Smart Contracts v2 — HackenProof scope

- Program: https://hackenproof.com/programs/ston-dot-fi-dex-smart-contracts-v2
- Platform: **HackenProof** (company: STON.fi)
- Status: **Active** · no end date
- Max bounty: **$100,000**
- KYC required · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $100,000 |
| High | $20,000 |
| Medium | $5,000 |

## Assets in scope (5)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/ston-fi/dex-core-v2/blob/main/contracts/lp_account.fc | LP Account |
| 2 | Critical | Smart Contract | https://github.com/ston-fi/dex-core-v2/blob/main/contracts/lp_wallet.fc | LP Wallet |
| 3 | Critical | Smart Contract | https://github.com/ston-fi/dex-core-v2/blob/main/contracts/pool.fc | Pool |
| 4 | Critical | Smart Contract | https://github.com/ston-fi/dex-core-v2/blob/main/contracts/router.fc | Router |
| 5 | Critical | Smart Contract | https://github.com/ston-fi/dex-core-v2/blob/main/contracts/vault.fc | Vault |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `dex-core-v2/` | https://github.com/ston-fi/dex-core-v2 | origin/main | af0a955 2025-03-31 bump v2.2 |

In-scope paths inside `dex-core-v2/` (5):

- `contracts/lp_account.fc`
- `contracts/lp_wallet.fc`
- `contracts/pool.fc`
- `contracts/router.fc`
- `contracts/vault.fc`

## Focus area

## IN SCOPE VULNERABILITIES (Smart Contracts)
Currently the scope of program only includes contracts v2.2.0, the same ones that are used by DEX in the mainnet. The scope might be extended with other versions in the future.

Only the following impacts are accepted within this Bug Bounty program. All other impacts are not considered as in-scope, even if they affect something in the assets in scope table.

**Critical**
* Direct theft of any user funds	
* Permanent freezing of funds
* Protocol insolvency

**High**
* Theft of unclaimed yield	
* Freeze ability of other users to trade	
* Temporary freezing of funds	

**Medium**
* Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)	


## OUT OF SCOPE VULNERABILITIES (Smart Contracts)

The following issues are excluded from the rewards for this Bug Bounty program:

* Lack of liquidity
* Best practice critiques
* Centralization risks
* Issues with information about user balances
* Cases with disguising one asset with another asset
* Any kind of optimization/logic improvements/coding style improvements
* Issues related to lp jetton wallets
* Issues related to contract deletion caused by inability to pay rent
* Issues related to gas optimisation
* Issues related to loss of funds caused by price slippage: frontrunning, backrunning, sandwich attacks, etc.
* Issues that only affect pool implementations not deployed on STON.fi mainnet. Currently deployed pool types are constant_product, stableswap, weighted_stableswap, and weighted_const_product
* constant_sum is a reference implementation and is not in production.

## Program rules

The following activities are prohibited by this Bug Bounty program:

* Any testing with mainnet.
* Any testing with pricing oracles or third party Smart Contracts.
* Attempting phishing or other social engineering attacks against our employees and/or customers.
* Any testing with third party systems and applications (e.g. browser extensions) as well as websites (e.g. SSO providers, advertising networks).
* Automated testing of services that generates significant amounts of traffic.
* Any denial of service attacks.
* All testing should be done on testnet. We specifically deployed smart contracts on the testnet.

Router address - `kQAFpeGFJQA9KqiCxXZ8J4l__vSYAxFSirSOvPHn6SSX4ztn`. Also you can see on [tonscan](https://dashboard.hackenproof.com/redirect?url=https://testnet.tonscan.org/address/kQAFpeGFJQA9KqiCxXZ8J4l__vSYAxFSirSOvPHn6SSX4ztn).

And please see dex-core [repo](https://dashboard.hackenproof.com/redirect?url=https://github.com/ston-fi/dex-core-v2).

## Disclosure guidelines

* Do not discuss this program or any vulnerabilities (even resolved ones) outside of the program without express consent from the organization.
* No vulnerability disclosure, including partial is allowed for the moment.
* Please do NOT publish/discuss bugs.

## Eligibility and coordinated disclosure

We appreciate and thank everyone who submits valid reports that help us improve our security. However, only those reports meeting the following eligibility requirements may qualify for a monetary reward:

* You must be the first reporter of the vulnerability.
* The vulnerability reported must qualify under our listed criteria.
* Vulnerabilities must be reported within 24 hours of discovery, exclusively through hackenproof.com.
* Your report must include a clear textual description of the vulnerability, concise and detailed steps to reproduce the issue, and must include a proof-of-concept (PoC) with code demonstrating the vulnerability clearly.
* Attachments such as screenshots should be included as necessary alongside your PoC code.
* You must not be a current or former employee or contractor of our company.
* Reports must be submitted using ONLY the email address registered to your HackenProof account (violations will result in disqualification).

Providing a detailed, precise, and reproducible PoC is mandatory for report eligibility.

## Program description

STON.fi is a decentralized automated market maker (AMM) built on the TON blockchain providing virtually zero fees, low slippage, an extremely easy interface, and direct integration with TON wallets.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

