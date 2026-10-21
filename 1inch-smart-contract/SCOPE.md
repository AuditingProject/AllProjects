# 1inch Smart Contract — HackenProof scope

- Program: https://hackenproof.com/programs/1inch-smart-contract
- Platform: **HackenProof** (company: 1inch)
- Status: **Active** · no end date
- Max bounty: **$500,000**
- KYC required · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $30,000 – $500,000 |
| High | $10,000 – $30,000 |
| Medium | $2,000 – $10,000 |
| Low | $100 – $2,000 |

## Assets in scope (8)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/1inch/limit-order-protocol/tree/4.3.4 | Limit order protocol |
| 2 | Critical | Smart Contract | https://github.com/1inch/fusion-protocol/tree/3.1.1 | Limit order settlement |
| 3 | Critical | Smart Contract | https://github.com/1inch/token-plugins/tree/2.0.0 | Token-plugins |
| 4 | Critical | Smart Contract | https://github.com/1inch/farming/tree/4.0.0 | Farming contracts |
| 5 | Critical | Smart Contract | https://github.com/1inch/delegating/tree/2.0.0 | Delegating contracts |
| 6 | Critical | Smart Contract | https://github.com/1inch/solana-crosschain-protocol/tree/1.1.0 | — |
| 7 | Critical | Smart Contract | https://github.com/1inch/solana-crosschain-protocol | — |
| 8 | Critical | Smart Contract | https://github.com/1inch/solana-fusion/tree/1.0.0-release | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `limit-order-protocol/` | https://github.com/1inch/limit-order-protocol | 4.3.4 | 7da2988 2026-04-07 Merge pull request #421 from 1inch/feature/handlebars-fix |
| `fusion-protocol/` | https://github.com/1inch/fusion-protocol | 3.1.1 | c45a481 2025-05-29 Merge pull request #200 from 1inch/deploy/settlement-with-surplus |
| `token-plugins/` | https://github.com/1inch/token-plugins | 2.0.0 | d46dbd9 2025-07-02 Merge pull request #51 from 1inch/feature/rename-plugins-to-hooks |
| `farming/` | https://github.com/1inch/farming | 4.0.0 | c10ef53 2025-07-03 Merge pull request #93 from 1inch/update/token-hooks-deps |
| `delegating/` | https://github.com/1inch/delegating | 2.0.0 | 6382454 2025-07-03 Merge pull request #34 from 1inch/feature/token-hooks |
| `solana-crosschain-protocol/` | https://github.com/1inch/solana-crosschain-protocol | 1.1.0 | b2124f6 2025-08-08 Merge pull request #117 from 1inch/audit/remove-redundant-instruction-parameters |
| `solana-fusion/` | https://github.com/1inch/solana-fusion | 1.0.0-release | 84ecfdd 2025-04-25 deploy v1.0.0.1 |

## Focus area

# In-scope vulnerabilities
The following vulnerabilities are considered in-scope:
* Reentrancy
* Reordering
* Overflows and underflows
* Stealing or loss of funds
* Unauthorized transaction
* Transaction manipulation
* Attacks on logic (behavior of the code is different from the business description)

All in-scope vulnerability reports must include a Proof of Concept (PoC) that demonstrates real-world impact. Submissions without a PoC will not be considered.

# Out-of-scope vulnerabilities
Vulnerabilities identified in out-of-scope resources are generally not eligible for rewards unless they present a significant business risk, as determined at our sole discretion.

The following items are generally excluded from reward eligibility due to insufficient severity or lack of relevance to the program’s defined scope:
* Redundant code
* Best practice issues
* Old compiler version
* Code style guide violations
* The compiler version is not locked
* Vulnerabilities in imported contracts
* Micro gas optimizations (less than 1k of gas)
* Lack of support for Fee-on-Transfer (FoT) tokens
* Theoretical or purely speculative exploits without demonstrated business impact

## Known issues 
https://github.com/1inch/1inch-audits/tree/master

## Program rules

* AI-generated reports will not be considered
* Automated scanning results will not be considered
* The program applies only to the latest tag/release
* Do not access or modify data belonging to other users
* Non-production vulnerabilities are limited to High severity
* Perform testing only within the scope described in this program
* Do not spam forms or account creation flows using automated tools
* Avoid compromising any personal data, interruption, or degradation of any service
* Do not exploit any DoS/DDoS vulnerabilities, social engineering attacks, or spam methods
* Remain compliant with all applicable laws and operate strictly within the defined testing scope
* Avoid causing any disruption to the availability of products, services, or infrastructure
* Bounty reward is determined by the proportion of potential damage and is limited by a severity rewards range
* Do not share details of any vulnerabilities with anyone outside the authorized team without explicit written permission from the organization

## Disclosure guidelines

* All information related to this program, including any discovered vulnerabilities (resolved or unresolved), must be kept strictly confidential. Public disclosure — including partial disclosure or discussion in any public forum, channel, or platform — is strictly prohibited without the organization's explicit written consent

## Eligibility and coordinated disclosure

We value all valid reports that help us strengthen our security. To qualify for a monetary reward, the following eligibility conditions must be fulfilled:
* You must be the first reporter of a vulnerability
* The vulnerability must be a qualifying (in-scope) vulnerability
* Any vulnerability found must be reported no later than 24 hours after discovery
* You must send a clear textual description of the report and detailed steps to reproduce the issue. Include attachments such as screenshots or proof-of-concept code if necessary
* You must not be a former or current employee of our company or any of its contractors
* Include clear and concise reproduction steps to help us verify and assess the impact of the reported issue efficiently

## Program description

The 1inch ecosystem comprises interconnected smart contracts that aggregate liquidity from various decentralized exchanges to execute optimal token swaps.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 90,
 "time_to_triage": 3
}
```

