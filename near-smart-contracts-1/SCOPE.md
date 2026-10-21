# NEAR Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/near-smart-contracts-1
- Platform: **HackenProof** (company: Near)
- Status: **Active** · no end date
- Max bounty: **$300,000**
- KYC required · **PoC required** · submission fee 5 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $100,000 – $300,000 |
| High | $10,000 – $100,000 |
| Medium | $2,500 – $10,000 |
| Low | $50 – $100 |

## Assets in scope (6)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/near/core-contracts/tree/master/lockup | lockup |
| 2 | Critical | Smart Contract | https://github.com/near/core-contracts/tree/master/staking-pool | staking pool |
| 3 | Critical | Smart Contract | https://github.com/near/core-contracts/tree/master/staking-pool-factory | staking pool factory |
| 4 | Critical | Smart Contract | https://github.com/near/core-contracts/tree/master/whitelist | whitelist |
| 5 | Critical | Smart Contract | https://github.com/near/core-contracts/tree/master/multisig | multisig |
| 6 | Critical | Smart Contract | https://github.com/near-daos/sputnik-dao-contract | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `core-contracts/` | https://github.com/near/core-contracts | origin/master | 1b0436c 2026-05-15 doc(multisig2): Update README to use correct assembly name (#207) |
| `sputnik-dao-contract/` | https://github.com/near-daos/sputnik-dao-contract | main | 5434a59 2026-05-28 chore: Fixed typos in comment (propolsal → proposal & covert → convert) in act_proposal (#235) |

In-scope paths inside `core-contracts/` (5):

- `lockup`
- `staking-pool`
- `staking-pool-factory`
- `whitelist`
- `multisig`

## Focus area

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
* Network-level DoS
* Vulnerabilities in the protocol that are unrelated to smart contract execution

## Program rules

* Make every effort not to damage or restrict the availability of products, services, or infrastructure
* Avoid compromising any personal data, interruption, or degradation of any service
* Don’t access or modify other user data, localize all tests to your accounts
* Perform testing only within the scope
* Don’t exploit any DoS/DDoS vulnerabilities, social engineering attacks, or spam
* In case you find chain vulnerabilities we’ll pay only for vulnerability with the highest severity.
* Don’t break any law and stay in the defined scope
* Any details of found vulnerabilities must not be communicated to anyone who is not a HackenProof Team or an authorized employee of this Company without appropriate permission
* Please note: Near company is entitled to make the payment in their native NEAR token
* In case that your finding is valid you might be asked for extra KYC verification to proceed with payments
* Perform testing on a private testnet wherever possible
* For more information, check: https://docs.near.org/

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
* Employees, spouses, partners, or families of employees, and former employees of Pagoda, Near, and the Near Foundation, and any subsidiaries, are not eligible to participate in the Bug Bounty program.

## Program description

NEAR is a simple, scalable, and secure blockchain platform designed to provide the best possible experience for developers and users, which is necessary to bridge the gap to mainstream adoption of decentralized applications. NEAR's unique nightshade sharding design allows the protocol to scale almost linearly with the number of shards. NEAR uses WebAssembly as its runtime for smart contracts and developers can write smart contracts in mainstream programming languages like JavaScript or Rust.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 30,
 "time_to_reward": 90,
 "time_to_triage": 5
}
```

