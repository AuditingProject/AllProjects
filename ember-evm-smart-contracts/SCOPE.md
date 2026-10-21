# Ember EVM Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/ember-evm-smart-contracts
- Platform: **HackenProof** (company: Ember Protocol)
- Status: **Active** · no end date
- Max bounty: **$15,000**
- KYC required · **PoC required** · min reputation 150 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $10,000 – $15,000 |
| High | $5,000 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/ember-protocol/Ember-Vaults-EVM | !! Only smart contracts residing in the "contracts" folder are in scope. Additionally, the folders "test" and "testing" along with other functions/fil |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `Ember-Vaults-EVM/` | https://github.com/ember-protocol/Ember-Vaults-EVM | main | 102ed27 2026-08-14 Ember Atomic |

## Focus area

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
* **All communication regarding the program must take place exclusively through the HackenProof platform.
Contacting the project team directly through support channels, social media, or any other external communication channels is strictly prohibited.
Researchers who violate this rule may be disqualified from the program and may face account suspension.**

## Disclosure guidelines

* Do not discuss this program or any vulnerabilities (even resolved ones) outside of the program without express consent from the organization.
* No vulnerability disclosure, including partial is allowed for the moment.
* Platform-Only Disclosure: Disclosure is only possible through the HackenProof Disclosure function. 
 * Researchers may request disclosure (Limited or Full) within the report ticket;
 * We reserve the right to approve, redact, or deny disclosure requests at our sole discretion.
* Mutual Required: Any publication requires explicit mutual agreement. Reports must remain Private until the status is officially changed to "Public" on the HackenProof platform by the team.

## Eligibility and coordinated disclosure

We are happy to thank everyone who submits valid reports which help us improve the security. However, only those that meet the following eligibility requirements may receive a monetary reward:

* You must be the first reporter of a vulnerability.
* The vulnerability must be a qualifying vulnerability.
* Any vulnerability found must be reported no later than 24 hours after discovery and exclusively through hackenproof.com
* You must send a clear textual description of the report along with steps to reproduce the issue, include attachments such as screenshots or proof of concept code as necessary.
* You must not be a former or current employee of us or one of its contractor.
* ONLY USE the EMAIL under which you registered your HackenProof account (in case of violation, no bounty can be awarded).
* Provide detailed but to-the point reproduction steps.
* AI-generated reports without runable PoC are not accepted under this program.

## Program description

One vault platform powering all strategies
One liquidity layer connecting Web2 and Web3
One brand driving the next wave of tokenized assets

This is Ember Protocol.

Everything Vaults. Everything Liquidity.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

