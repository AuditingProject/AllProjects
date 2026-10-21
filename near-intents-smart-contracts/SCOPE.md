# NEAR Intents: Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/near-intents-smart-contracts
- Platform: **HackenProof** (company: Near)
- Status: **Active** · no end date
- Max bounty: **$300,000**
- KYC required · **PoC required** · submission fee 5 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $100,000 – $300,000 |
| High | $20,000 – $100,000 |
| Medium | $1,000 – $20,000 |
| Low | $100 – $1,000 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/near/intents | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `intents/` | https://github.com/near/intents | main | 75d29769 2026-10-20 feat: near kit update (#377) |

## Explicitly out of scope (1)

HackenProof marks these targets out of scope on the program page. They were **not** cloned as in-scope assets.

- https://github.com/near/intents/tree/main/escrow-swap

## Focus area

Please note that the main smart contract in the repository, under the directory defuse, is referred to as the "Verifier" in the ecosystem. Near Intents contains more components that work in tandem to achieve its purpose. Nevertheless, this smart contract, the Verifier, can be used independently without needing anything else.

**Documentation:**
* For more information on how to use the Intents ecosystem, please refer to the [documentation](https://dashboard.hackenproof.com/redirect?url=https://docs.near-intents.org/near-intents).
* For technical information about the Verifier smart contract programming primitives (and other smart contracts here), please refer to the [cargo documentation page](https://dashboard.hackenproof.com/redirect?url=https://near.github.io/intents/defuse/index.html).


## IN-SCOPE VULNERABILITIES
The list is not limited to the following submissions but it gives an overview of what issues we care about:

* Stealing or loss of funds
* Unauthorized transaction
* Transaction manipulation
* Price manipulation
* Fee payment bypass
* Balance manipulation
* Contracts execution flows
* Cryptographic flaws

## OUT-OF-SCOPE VULNERABILITIES
* Unbounded gas or storage consumption
* Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
* Network-level DoS
* Vulnerabilities in the protocol that are unrelated to smart contract execution

If an impact can be caused to any other asset or service that isn’t in Scope, you are encouraged to submit it for the consideration by the project.

## Program rules

* Make every effort not to damage or restrict the availability of products, services, or infrastructure
* Avoid compromising any personal data, interruption, or degradation of any service
* Don’t access or modify other user data, localize all tests to your accounts
* Perform testing only within the scope
* Don’t exploit any DoS/DDoS vulnerabilities, social engineering attacks, or spam
* In case you find chain vulnerabilities we’ll pay only for vulnerability with the highest severity.
* Don’t break any law and stay in the defined scope
* Any details of found vulnerabilities must not be communicated to anyone who is not a HackenProof Team or an authorized employee of this Company without appropriate permission
* Please note: company is entitled to make the payment in their native NEAR token vested over 1 year.
* In case that your finding is valid you might be asked for extra KYC verification to proceed with payments
* Perform testing on a private testnet wherever possible
* The total maximum reward for High and Critical severity bugs is capped at 10% of the funds that are practically affected by the discovered vulnerability: maxReward = min(10% TVL, maxSeverityBudget).

All findings are limited by top reward in their severity:
* Low - up to $1000
* Medium - up to $20 000
* High - up to $100 000
* Critical - up to $ 300 000

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
* ONLY USE YOUR HackenProof ADDRESS (in case of violation, no bounty can be awarded)
* Provide detailed but to-the point reproduction steps
* Employees, spouses, partners, or families of employees, and former employees of Pagoda, Near, and the Near Foundation, Aurora, Defuse Labs and any subsidiaries or contractors, are not eligible to participate in the Bug Bounty program.

## Program description

NEAR Intents is a smart contract developed for the NEAR blockchain. It facilitates atomic P2P transactions among peers, by allow trustless transactions in the smart contract.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 90,
 "time_to_reward": 30,
 "time_to_triage": 5
}
```

