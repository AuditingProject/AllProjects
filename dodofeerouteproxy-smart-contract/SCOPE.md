# DODOFeeRouteProxy Smart Contract — HackenProof scope

- Program: https://hackenproof.com/programs/dodofeerouteproxy-smart-contract
- Platform: **HackenProof** (company: DODOEX)
- Status: **Active** · no end date
- Max bounty: **$10,000**
- no KYC · **PoC required** · min reputation 100 · submission fee 5 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $5,000 – $10,000 |
| High | $1,000 – $5,000 |
| Medium | $500 – $1,000 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/DODOEX/dodo-route-contract | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `dodo-route-contract/` | https://github.com/DODOEX/dodo-route-contract | main | e6f35d5 2022-12-22 fix |

## Focus area

## Impacts in Scope

Only the following impacts are accepted within this bug bounty program. All other impacts are not considered as in-scope, even if they affect something in the assets in scope table.

## Critical	 
Smart Contracts

* Any governance voting result manipulation
* Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
* Permanent freezing of funds
* Miner-extractable value (MEV)
* Protocol Insolvency

## High	 
Smart Contracts

* Theft of unclaimed yield
* Permanent freezing of unclaimed yield
* Temporary freezing of funds

## Medium	 
Smart Contracts

* Smart contract unable to operate due to lack of token funds
* Block stuffing for profit
* Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
* Theft of gas
* Unbounded gas consumption

## Low	 
Smart Contracts
Contract fails to deliver promised returns, but doesn't lose value

These accepted impacts are then based on the severity classification system of this bug bounty program. When submitting a bug report, please select the severity level you feel best corresponds to the severity classification system as long as the impact itself is one of the listed items. 



## Out of Scope & Rules 

The following vulnerabilities are excluded from the rewards for this bug bounty program:

* Attacks that the reporter has already exploited themselves, leading to damage
* Attacks requiring access to leaked keys/credentials
* Attacks requiring access to privileged addresses (governance, strategist)
* Incorrect data supplied by third party oracles
* Not to exclude oracle manipulation/flash loan attacks
* Basic economic governance attacks (e.g. 51% attack)
* Lack of liquidity
* Best practice critiques
* Sybil attacks
* Arbitrary token sweep in DODOFeeRouteProxy is a known risk, it isn't an issue as the DODORouteProxy should not contain any ERC20 tokens.

FeeRouteProxy exclusions: FeeRouteProxy.sol won't left any tokens in normal swap, so we don't abandon using tokens in the proxy through specific swap method
 

The following activities are prohibited by this bug bounty program:


* Any testing with mainnet or public testnet contracts; all testing should be done on private testnets
* Any testing with pricing oracles or third party smart contracts
* Attempting phishing or other social engineering attacks against our employees and/or customers
* Any testing with third party systems and applications (e.g. browser extensions) as well as websites (e.g. SSO providers, advertising networks)
* Any denial of service attacks
* Automated testing of services that generates significant amounts of traffic
* Public disclosure of an unpatched vulnerability in an embargoed bounty

## Program rules

* All tests of hardhat are included in github. 
* Come up bugs and at least one method to solve the problem
* Better to have hack example
* Any details of found vulnerabilities must not be communicated to anyone who is not a HackenProof Team or an authorized employee of this Company without appropriate permission

## Disclosure guidelines

* Do not discuss this program or any vulnerabilities (even resolved ones) outside of the program without express consent from the organization
* No vulnerability disclosure, including partial is allowed for the moment.
* Please do NOT publish/discuss bugs

## Eligibility and coordinated disclosure

We are happy to thank everyone who submits valid reports which help us improve the security. However, only those that meet the following eligibility requirements may receive a monetary reward:

* You must be the first reporter of a vulnerability.
* The vulnerability must be a qualifying vulnerability
* Any vulnerability found must be reported no later than 24 hours after discovery and exclusively through hackenproof.com
* You must send a clear textual description of the report along with steps to reproduce the issue, include attachments such as screenshots or proof of concept code as necessary.
* You must not be a former or current employee of us or one of its contractor.
ONLY USE YOUR HackenProof ADDRESS (in case of violation, no bounty can be awarded)
* Provide detailed but to-the point reproduction steps

## Program description

Main Contract: ./contracts/SmartRoute/DODORouteProxy.sol

DODOFeeRouteProxy is a new routeProxy contract with fee rebate to manage all route. It provides three methods to swap, including mixSwap, multiSwap and externalSwap.  Dodo and front-end users could take certain route fee rebate from each swap.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 7,
 "time_to_reward": 14,
 "time_to_triage": 3
}
```

