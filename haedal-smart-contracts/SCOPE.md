# Haedal Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/haedal-smart-contracts
- Platform: **HackenProof** (company: Haedal)
- Status: **Active** · no end date
- Max bounty: **$200,000**
- KYC required · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $20,000 – $200,000 |
| High | $1,000 – $20,000 |
| Medium | $50 – $1,000 |
| Low | $5 – $50 |

## Assets in scope (2)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/hackenproof-public/hasui-bug-bounty | * Participation: Invite-only - https://discord.gg/g7u4afaYu7 * KYC Required |
| 2 | Critical | Smart Contract | https://github.com/hackenproof-public/hawal-bug-bounty | * Participation: Invite-only - https://discord.gg/g7u4afaYu7 * KYC Required |

## Repositories cloned

_No git repositories are listed in scope._

## Failures

- `https://github.com/hackenproof-public/hasui-bug-bounty` — fatal: repository 'https://github.com/hackenproof-public/hasui-bug-bounty.git/' not found
- `https://github.com/hackenproof-public/hawal-bug-bounty` — fatal: repository 'https://github.com/hackenproof-public/hawal-bug-bounty.git/' not found

## Focus area

## IN SCOPE VULNERABILITIES (Smart Contracts)
 We are looking for evidence and reasons for incorrect behavior of the smart contract, which could cause unintended functionality:
* Stealing or loss of funds
* Unauthorized transaction
* Transaction manipulation
* Attacks on logic (behavior of the code is different from the business description)
* Reentrancy
* Reordering
* Over and underflows


## OUT OF SCOPE VULNERABILITIES (Smart Contracts)
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

## Program description

Haedal is a prime liquid staking protocol natively built on Sui. It provides users with robust liquid staking infrastructure, allowing people to stake their SUI and Walrus token into validators to earn continual consensus rewards while unleashing LST liquidity to be used in DeFi. Haedal aims to become the ultimate place for users to stake and earn on Sui. 

Haedal helps secure the Sui blockchain, contributing to its long-term sustainability, governance and decentralization. Additionally, Haedal is building a series of wingman products around its liquid staking infra, including Haedal Market Maker, haeVault and more. Its systematic product matrix can help Haedal capture significant value from the active on-chain trading flows on Sui, further optimizing its advantage in yield performance and providing stronger liquidity depth and efficiency to Sui users.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

