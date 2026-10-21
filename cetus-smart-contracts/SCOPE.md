# Cetus Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/cetus-smart-contracts
- Platform: **HackenProof** (company: Cetus)
- Status: **Active** · no end date
- Max bounty: **$1,000,000**
- KYC required · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $30,000 – $1,000,000 |
| High | $3,000 – $30,000 |
| Medium | $100 – $1,000 |
| Low | $10 – $100 |

## Assets in scope (2)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/hackenproof-public/cetus-contract-bounty | !! Only smart contracts residing in the sources folder and dependencies are in scope. The rest is there to make testing easier !!  Please contact our  |
| 2 | Critical | Smart Contract | https://github.com/CetusProtocol/cetus-contracts | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `cetus-contract-bounty/` | https://github.com/hackenproof-public/cetus-contract-bounty | main | 0bf4c64 2026-10-15 Merge CetusProtocol/cetus-for-audit main into main |
| `cetus-contracts/` | https://github.com/CetusProtocol/cetus-contracts | main | b7c3a5a 2026-10-20 Merge pull request #10 from CetusProtocol/sync/clmm-phase1-tests-audit |

## Focus area

- Critical bounty: up to 10% of the TVL of the directly affected pool/contract, capped at $1,000,000
- A finding is considered Critical only if it is directly exploitable, does not depend on additional conditions, and can lead to direct loss of user funds

## IN SCOPE VULNERABILITIES: Smart Contracts
 We are looking for evidence and reasons for incorrect behavior of the smart contract, which could cause unintended functionality:
* Stealing or loss of funds
* Unauthorized transaction
* Transaction manipulation
* Attacks on logic (behavior of the code is different from the business description)
* Reentrancy
* Reordering
* Over and underflows

## OUT OF SCOPE VULNERABILITIES: Smart Contracts
* Theoretical vulnerabilities without any proof or demonstration
* Old compiler version
* The compiler version is not locked
* Vulnerabilities in imported contracts
* Code style guide violations
* Redundant code
* Gas optimizations
* Best practice issues
* Vulnerabilities that can be exploited through front-run attacks only

## Program rules

* Avoid using web application scanners for automatic vulnerability searching which generates massive traffic
* Make every effort not to damage or restrict the availability of products, services, or infrastructure
* Avoid compromising any personal data, interruption, or degradation of any service
* Don’t access or modify other user data, localize all tests to your accounts
* Perform testing only within the scope
* Don’t exploit any DoS/DDoS vulnerabilities, social engineering attacks, or spam
* Don’t spam forms or account creation flows using automated scanners
* In case you find chain vulnerabilities we’ll pay only for vulnerability with the highest severity.
* Don’t break any law and stay in the defined scope
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
* ONLY USE the EMAIL under which you registered your HackenProof account (in case of violation, no bounty can be awarded)
* Provide detailed but to-the point reproduction steps
* AI-generated reports without runable PoC are not accepted under this program.

## Program description

Cetus is a leading decentralized exchange in crypto. Live from the first day of Sui mainnet, Cetus is the leading DEX and aggregator on Sui, serving as the key liquidity and swap infra of the Sui ecosystem. The mission of Cetus is building a powerful and flexible underlying liquidity network to make trading easier for any users and assets.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

