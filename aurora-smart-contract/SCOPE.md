# Aurora Smart Contract — HackenProof scope

- Program: https://hackenproof.com/programs/aurora-smart-contract
- Platform: **HackenProof** (company: Aurora)
- Status: **Active** · no end date
- Max bounty: **$300,000**
- KYC required · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $300,000 |
| High | $100,000 |
| Medium | $10,000 |
| Low | $1,000 |

## Assets in scope (14)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Engine | https://explorer.near.org/accounts/aurora | Aurora |
| 2 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/master/engine | Engine Master |
| 3 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/develop/engine | Engine Dev |
| 4 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/master/engine-precompiles | Engine Master Precompiles |
| 5 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/develop/engine-precompiles | EngineDevPrecompiles |
| 6 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/master/engine-sdk | Engine Master SDK |
| 7 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/develop/engine-sdk | Engine Dev SDK |
| 8 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/master/engine-transactions | Engine Master Transactions |
| 9 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/develop/engine-transactions | Engine Dev Transactions |
| 10 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/master/engine-types | Master Engine Types |
| 11 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/develop/engine-types | Dev Engine Types |
| 12 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/master/etc/eth-contracts | Master Eth Contracts |
| 13 | Critical | Engine | https://github.com/aurora-is-near/aurora-engine/tree/develop/etc/eth-contracts | Dev Eth Contracts |
| 14 | Critical | Engine | https://github.com/aurora-is-near/sputnikvm | Sputnik EVM |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `aurora-engine/` | https://github.com/aurora-is-near/aurora-engine | origin/master | f296f06a 2026-10-05 Release 3.11.1 (#1225) |
| `sputnikvm/` | https://github.com/aurora-is-near/sputnikvm | master | 3e0af33 2026-10-05 Release v3.1.0 (#130) |

In-scope paths inside `aurora-engine/` (6):

- `engine`
- `engine-precompiles`
- `engine-sdk`
- `engine-transactions`
- `engine-types`
- `etc/eth-contracts`

⚠️ `aurora-engine/` is referenced at more than one ref: origin/develop, origin/master. Checked out at `origin/master`.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **0 of 1** in-scope addresses have full source on disk.
- 1 is on a chain this collection cannot fetch source for.

**No source retrieved** (by chain): explorer.near.org (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.


## In-scope targets that are not git repos

Deployed contracts, packages, apps or docs. Explorer-verified source is fetched separately into `deployed-source/` where available.

- [Critical] Engine — https://explorer.near.org/accounts/aurora — Aurora

## Focus area

## GENERAL
* NOTE! Aurora is entitled to make payments in AURORA tokens - locked distribution within 1 year linearly unlock.
* All smart contracts of Aurora can be found at https://github.com/aurora-is-near. However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program. 
* The Aurora team aims to communicate any changes to the Assets in Scope table with HackenProof  as soon as possible.
* If an impact can be caused to any other asset managed by Aurora that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project. This only applies to Critical impacts.
* Only the following impacts are accepted within this bug bounty program. All other impacts are not considered as in-scope, even if they affect something in the assets in scope table.
* The total maximum reward for High and Critical severity bugs is capped at 10% of the funds that are practically affected by the discovered vulnerability: maxReward = min(10% TVL, maxSeverityBudget)
* All findings are limited by top reward in their severity:  
		  -- Low - up to $1000  
		  -- Medium - up to $10 000  
		  -- High - up to $100 000  
		  -- Critical - up to $1 000 000  


## IN-SCOPE – SMART CONTRACT VULNERABILITIES
 Only the following impacts are accepted within this bug bounty program. All other impacts are not considered  as in-scope, even if they affect something in the assets in scope table.
 
* Any governance voting result manipulation
* Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
* Permanent freezing of funds
* Insolvency
* Theft of unclaimed yield
* Permanent freezing of unclaimed yield
* Temporary freezing of funds
* Smart contract unable to operate due to lack of funds
* Block stuffing for profit
* Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
* Theft of gas
* Unbounded gas consumption
* Smart contract fails to deliver promised returns, but doesn’t lose value

## OUT OF SCOPE – SMART CONTRACT AND BLOCKCHAIN
* Incorrect data supplied by third party oracles
* Not to exclude oracle manipulation/flash loan attacks
* Basic economic governance attacks (e.g. 51% attack)
* Lack of liquidity
* Best practice critiques
* Sybil attacks
* Centralization risks

## Program rules

The following activities are prohibited by this bug bounty program:
* Any testing with mainnet or public testnet contracts; all testing should be done on private testnets
* Any testing with pricing oracles or third party smart contracts
* Attempting phishing or other social engineering attacks against our employees and/or customers
* Any testing with third party systems and applications (e.g. browser extensions) as well as websites (e.g. SSO providers, advertising networks)
* Any denial of service attacks
* Automated testing of services that generates significant amounts of traffic
* Public disclosure of an unpatched vulnerability in an embargoed bounty

## Disclosure guidelines

* As this is a private program, please do not discuss this program or any vulnerabilities (even resolved ones) outside of the program without express consent from the organization
* No vulnerability disclosure, including partial, is allowed for the moment.
* Please do NOT publish/discuss bugs

## Eligibility and coordinated disclosure

We are happy to thank everyone who submits valid reports, which help us improve the security. However, only those who meet the following eligibility requirements may receive a monetary reward:
* You must be the first vulnerability reporter.
* The vulnerability must be a qualifying vulnerability
* Any vulnerability found must be reported no later than 24 hours after discovery, and exclusively through hackenproof.com
* You must send a clear textual description of the report along with steps to reproduce the issue, including attachments such as screenshots or proof of concept code as necessary.
* You must not be a former or current employee of us or one of its contractors.
* ONLY USE YOUR HackenProof ADDRESS (in case of violation, no bounty can be awarded)
* Provide detailed but to-the-point reproduction steps, proof of concept is mandatory for all severity types of smart contract and webapp vulnerabilities.
* Hacker must successfully pass KYC in order to be eligible for the reward.

## Program description

Aurora Labs have created the Aurora Engine: an EVM layer that interconnects Ethereum and NEAR ecosystems.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 30,
 "time_to_reward": 5,
 "time_to_triage": 3
}
```

