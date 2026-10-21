# DODOLimitOrder Smart Contract — HackenProof scope

- Program: https://hackenproof.com/programs/dodolimitorder-smart-contract
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
| Low | $100 – $500 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/DODOEX/dodo-limit-order/blob/main/src/DODOLimitOrder.sol | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `dodo-limit-order/` | https://github.com/DODOEX/dodo-limit-order | origin/main | 003de1f 2025-12-08 verify contracts on stablechain |

In-scope paths inside `dodo-limit-order/` (1):

- `src/DODOLimitOrder.sol`

## Focus area

## IMPACTS IN SCOPE
Only the following impacts are accepted within this bug bounty program. All other impacts are not considered as in-scope, even if they affect something in the assets in scope table.

## CRITICAL
Smart Contracts

* Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
* Permanent freezing of funds
* Miner-extractable value (MEV)
* Protocol Insolvency

## HIGH
Smart Contracts

* Theft of unclaimed yield
* Permanent freezing of unclaimed yield
* Temporary freezing of funds

## MEDIUM
Smart Contracts

* Smart contract unable to operate due to lack of token funds
* Block stuffing for profit
* Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
* Theft of gas
* Unbounded gas consumption

## LOW
Smart Contracts Contract fails to deliver promised returns, but doesn't lose value

These accepted impacts are then based on the severity classification system of this bug bounty program. When submitting a bug report, please select the severity level you feel best corresponds to the severity classification system as long as the impact itself is one of the listed items.

## OUT OF SCOPE & RULES
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

The following activities are prohibited by this bug bounty program:

* Any testing with mainnet or public testnet contracts; all testing should be done on private testnets
* Any testing with pricing oracles or third party smart contracts
* Attempting phishing or other social engineering attacks against our employees and/or customers
* Any testing with third party systems and applications (e.g. browser extensions) as well as websites (e.g. SSO providers, advertising networks)
* Any denial of service attacks
* Automated testing of services that generates significant amounts of traffic
* Public disclosure of an unpatched vulnerability in an embargoed bounty

## Program rules

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
* You must not be a former or current employee of us or one of its contractor. ONLY USE YOUR HackenProof ADDRESS (in case of violation, no bounty can be awarded)
* Provide detailed but to-the point reproduction steps

## Program description

DODOLimitOrder is a smart contract allows users to place limit orders, that later could be filled on-chain.

A limit order is an order that you place on the order book with a specific limit price. The limit price is determined by you. The trade will only be executed if the market price reaches your limit price.

Limit orders submitted on DODO will be filled by one of the following sources if they ever hit their limit price: liquidity pools on DODO, aggregated liquidity pools from other protocols, and limit buy/sell orders sent by other users.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 7,
 "time_to_reward": 14,
 "time_to_triage": 3
}
```

