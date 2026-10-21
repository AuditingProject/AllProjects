# FlowX CLMM Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/flowx-clmm-smart-contracts
- Platform: **HackenProof** (company: FlowX Finance)
- Status: **Active** · no end date
- Max bounty: **$5,000**
- KYC required · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $5,000 |
| High | $2,000 |
| Medium | $700 |
| Low | $200 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/hackenproof-public/flowx-clmm | * Participation: Invite-only - https://discord.gg/g7u4afaYu7 * KYC Required  !! Only smart contracts residing in the sources folder and dependencie |

## Repositories cloned

_No git repositories are listed in scope._

## Failures

- `https://github.com/hackenproof-public/flowx-clmm` — fatal: repository 'https://github.com/hackenproof-public/flowx-clmm.git/' not found

## Focus area

**IN SCOPE VULNERABILITIES: Smart Contracts**

We are looking for evidence and reasons for incorrect behavior of the smart contract, which could cause unintended functionality:

* Stealing or loss of funds
* Unauthorized transaction
* Transaction manipulation
* Attacks on logic (behavior of the code is different from the business description)
* Reentrancy
* Reordering
* Over and underflows


**OUT OF SCOPE VULNERABILITIES: Smart Contracts**

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

FlowX is a one-stop service for trading needs on Sui.

🥇Best rate - Security - Zero fees and Instant swaps with FlowX Aggregator.
🚜High-yield incentives for LPs at FlowX Liquidity. 
💰Sharing revenue to token staker
🤝Reach out to the Sui community through FlowX Launchpad

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

