# Hyperbridge Protocol — HackenProof scope

- Program: https://hackenproof.com/programs/hyperbridge-protocol
- Platform: **HackenProof** (company: Hyperbridge)
- Status: **Active** · no end date
- Max bounty: **$50,000**
- no KYC · **PoC required** · submission fee 5 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $30,000 – $50,000 |
| High | $5,000 – $15,000 |
| Medium | $2,000 – $5,000 |
| Low | $200 – $1,000 |

## Assets in scope (2)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Bridge | https://github.com/polytope-labs/hyperbridge | — |
| 2 | Critical | Smart Contract | https://github.com/polytope-labs/solidity-merkle-trees | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `hyperbridge/` | https://github.com/polytope-labs/hyperbridge | main | 1c540c36 2026-10-20 [simplex]: refuse vault batches on undelegated wallets, honour maxRedeem, bound bid permits, check Binance deposits (#1411) |
| `solidity-merkle-trees/` | https://github.com/polytope-labs/solidity-merkle-trees | main | 6bbc83d 2026-06-26 Reject merkle multiproofs with unconsumed leaves (#57) |

## Focus area

## IN SCOPE VULNERABILITIES: Runtime, Pallets and Smart Contracts
 We are looking for evidence and reasons for incorrect behavior of the runtime, pallets and smart contracts, which could cause unintended functionality:
* Stealing or loss of funds
* Unauthorized transaction
* Transaction manipulation
* Attacks on logic (behavior of the code is different from the business description)
* Reentrancy
* Reordering
* Over and underflows


## OUT OF SCOPE VULNERABILITIES: Runtime, Pallets and Smart Contracts
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

Hyperbridge is a secure system that allows different blockchains to communicate with each other. This communication facilitates the transfer of assets on the blockchain.
Unlike older methods that relied on groups of people (multisig committees) to approve transactions, Hyperbridge uses a more robust approach. It leverages the collective agreement of the entire network (consensus) and verifiable proofs (state proofs) to ensure that all communication is fully secure, just as if it were happening on a single blockchain.
This decentralized method removes the main point of weakness that has led to billions of dollars in losses in the past. Hyperbridge is the first of its kind in the world.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

