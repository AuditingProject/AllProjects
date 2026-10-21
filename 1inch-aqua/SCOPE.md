# 1inch Aqua — HackenProof scope

- Program: https://hackenproof.com/programs/1inch-aqua
- Platform: **HackenProof** (company: 1inch)
- Status: **Active** · no end date
- Max bounty: **$100,000**
- no KYC · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $20,000 – $100,000 |
| High | $5,000 – $20,000 |
| Medium | $2,000 – $5,000 |
| Low | $100 – $2,000 |

## Assets in scope (3)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/1inch/aqua | /blob/v1.0.0/src/Aqua.sol /blob/v1.0.0/src/AquaRouter.sol /blob/v1.0.0/src/libs/Balance.sol |
| 2 | Critical | Smart Contract | https://github.com/1inch/swap-vm | /blob/v1.0.2/src/SwapVM.sol /blob/v1.0.2/src/instructions/Balances.sol /blob/v1.0.2/src/instructions/Controls.sol /blob/v1.0.2/src/instructions/Decay. |
| 3 | Critical | Smart Contract | https://github.com/1inch/solidity-utils/ | /blob/6.9.16/contracts/libraries/Calldata.sol /blob/7.0.0/contracts/libraries/CalldataPtr.sol /blob/7.0.0/contracts/libraries/ECDSA.sol /blob/7.0.0/co |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `aqua/` | https://github.com/1inch/aqua | main | a249379 2026-10-16 Merge pull request #147 from 1inch/feat/shared-ci |
| `swap-vm/` | https://github.com/1inch/swap-vm | main | 0e712ae 2026-10-20 Merge pull request #221 from 1inch/fix/supress-warnings |
| `solidity-utils/` | https://github.com/1inch/solidity-utils | main | 82c6192 2026-10-20 Merge pull request #294 from 1inch/chore/tryPermit/erc7597 |

## Explicitly out of scope (2)

HackenProof marks these targets out of scope on the program page. They were **not** cloned as in-scope assets.

- https://github.com/1inch/sdks
- https://github.com/1inch/swap-vm/src/strategies/AquaAMM.sol

## Focus area

## In-scope vulnerabilities
The following vulnerabilities are considered in-scope:
* Reordering
* Reentrancy
* Stealing or loss of funds
* Unauthorized transaction
* Transaction manipulation
* Overflows and underflows
* Attacks on logic (the behavior of the code is different from the business description)

All in-scope vulnerability reports must include a Proof of Concept (PoC) that demonstrates real-world impact. Submissions without a PoC will not be considered.

## Out-of-scope vulnerabilities
Vulnerabilities identified in out-of-scope resources are generally not eligible for rewards unless they present a significant business risk, as determined at our sole discretion.

The following items are generally excluded from reward eligibility due to insufficient severity or lack of relevance to the program’s defined scope:
* Redundant code
* TWAP-related issues
* Best-practice issues
* Old compiler version
* Code style guide violations
* The compiler version is not locked
* Vulnerabilities in imported contracts
* Lack of support for Fee-on-Transfer (FoT) tokens
* Known third-party bugs (except for our misconfiguration issues)
* Theoretical or purely speculative exploits without demonstrated business impact

## In-scope improvement proposals
The following proposals are in scope for this program:
* Enhancements to existing protocol mechanics that materially improve user value, safety, or capital efficiency without introducing fundamentally new functionality
* Integration fixes where 1inch-specific configuration/initialization of third-party libraries creates risk
* MEV/price-manipulation resistance (oracle usage, slippage/deadline handling, sandwich protection, excluding TWAP)
* Substantial gas efficiency improvements (≥1k gas net savings per typical user transaction on hot paths)
* Security hardening of existing contracts (tighter authorization/roles, reentrancy mitigations, invariant enforcement)

Improvement proposals are accepted only for the aqua and swap-vm repositories. The solidity-utils repository is excluded from improvement proposals. Improvement proposal reports must target the current release. Accepted proposals may be implemented on the `main` branch.

We invite contributors to submit thoughtful and constructive proposals. Each proposal should describe the rationale and expected impact, identify affected contracts or components, outline minimal tests and benchmarks, and, if relevant, note any migration considerations. A good PoC typically includes clear before/after evidence, a minimal reproducible example, and a brief implementation outline demonstrating how the change would be applied.

While we reserve the right to decline proposals, our aim is to encourage constructive discussion and contribution from the community.

Regardless of the severity ranges listed in the Rewards section, the maximum reward payable for any accepted improvement proposal is $25,000. The severity ranges below apply only to vulnerability reports.

## Out-of-scope improvement proposals
The following proposals are out of scope for this program:
* Changes that weaken security/correctness or materially increase complexity risk
* Pure refactors (style/naming/comments) without measurable security or cost impact
* Compiler/pragma/lint/config changes that do not demonstrably improve safety or efficiency
* New features or protocol mechanics (feature requests) rather than improvements to existing contracts
* Duplicates of known issues/roadmap items, unless providing substantial new insight or a materially better solution
* Micro gas optimizations (< 1k gas net savings per typical user transaction on hot paths) or changes that merely shift costs between paths without net benefit
* Proposals dependent on third-party code we do not control, or targeting imported libraries, except where 1inch-specific integration/initialization causes the issue
* Off-chain only suggestions (UI, backend, indexers, docs) unless they directly and materially improve on-chain security
* Improvement proposals targeting the solidity-utils repository are out of scope

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
* You must be the first reporter of a vulnerability or proposer of an improvement
* The submission must be a qualifying (in-scope) vulnerability or improvement proposal
* Any vulnerability or improvement found must be reported no later than 24 hours after discovery or completion
* You must send a clear textual description of the report and detailed steps to reproduce the issue. Include attachments such as screenshots or code if necessary
* Include clear and concise reproduction steps to help us verify and assess the impact of the reported issue efficiently
* Reports and payout details may be checked against OFAC/EU/UK sanctions lists. Payment may be withheld or delayed if prohibited by applicable law or sanctions
* Keep all report details strictly confidential until a fix is deployed. After coordinated disclosure, only minimal technical details may be shared. Publishing modified core source code or binaries is prohibited

## Program description

1inch Aqua is a decentralized protocol for creating and managing custom liquidity positions with flexible strategies and advanced features.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 90,
 "time_to_triage": 3
}
```

