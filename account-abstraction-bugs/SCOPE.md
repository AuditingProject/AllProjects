# Account Abstraction Bugs — HackenProof scope

- Program: https://hackenproof.com/programs/account-abstraction-bugs
- Platform: **HackenProof** (company: Ethereum Foundation)
- Status: **Active** · no end date
- Max bounty: **$250,000**
- KYC required · **PoC required** · submission fee 7
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $100,000 – $250,000 |
| High | $25,000 – $50,000 |
| Medium | $5,000 – $10,000 |
| Low | $1,000 – $2,000 |

## Assets in scope (3)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/eth-infinitism/account-abstraction | Only includes `core` and `utils` folders |
| 2 | Critical | Protocol | https://github.com/ethereum/ercs/blob/master/ERCS/erc-4337.md | — |
| 3 | Critical | Protocol | https://github.com/ethereum/ercs/blob/master/ERCS/erc-7562.md | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `account-abstraction/` | https://github.com/eth-infinitism/account-abstraction | develop | 1c6b669 2025-12-17 Add audit for release v0.9 (#612) |
| `ercs/` | https://github.com/ethereum/ercs | origin/master | 48dc87a2 2026-10-19 Update ERC-8107: Accept a deadline from the pinned expiry in the execution-window check |

In-scope paths inside `ercs/` (2):

- `ERCS/erc-4337.md`
- `ERCS/erc-7562.md`

## Focus area

# IN-SCOPE VULNERABILITIES
* Implementation bugs that enable any malicious behavior
* Denial of service (DOS) vectors against the protocol (not against specific bundlers)
* Inconsistencies in assumptions, like situations where staked entities can be banned at a low cost to the attacker

# SEVERITY
### Critical: 
#### EntryPoint bugs that can cause major financial damage and may require EntryPoint redeployment.

For example:
* Executing a call in an account without passing validation (or executing it more than once for a single validation).
* Stealing deposits or stakes.

### High 
#### On-chain griefing or censorship of an ERC-4337 compliant component.

For example:
* UserOps that would pass off-chain simulation but cause an entire bundle to revert on-chain.
* Ability to put a valid UserOp on-chain and force it to revert after validation - effectively censoring it.

### Medium
#### Off-chain DoS vectors against the AA mempool, which are not solved by the ERC-7562 rules, and are unique to AA.  i.e. not general libp2p attacks that would affect CL as well.

For example:
* Invalidating N UserOps at O(1) attack cost, effectively DoSing the entire mempool.
* Exploiting the staked reputation rules to censor a staked entity by getting it banned at O(1) attack cost (or O(n) if iteration cost is cheap enough).

### Low
#### Bugs that cause negligible financial damage or inconvenience

For example:
* Gas calculation bug that can cause users to slightly overpay

### The extent of the potential financial damage will be taken into account when determining the severity level

# OUT-OF-SCOPE VULNERABILITIES
* Network-level DoS
* Attacks on any specific bundler, account or paymaster.  Our bounties cover the contracts and the protocol definitions, not their implementations

Documentation: https://eips.ethereum.org/EIPS/eip-4337

# COMMIT IDs
Code marked by the following commit IDs and tags is eligible for the audit.
Code that is not present on either of these tags is not eligible for the bounty program.
https://github.com/eth-infinitism/account-abstraction/releases/tag/v0.9.0
Commit ID: b36a1ed52ae00da6f8a4c8d50181e2877e4fa410
https://github.com/eth-infinitism/account-abstraction/releases/tag/v0.8.0
Commit ID: 4cbc06072cdc19fd60f285c5997f4f7f57a588de
https://github.com/eth-infinitism/account-abstraction/releases/tag/v0.7.0
Commit ID: 7af70c8993a6f42973f520ae0752386a5032abe7
https://github.com/eth-infinitism/account-abstraction/releases/tag/v0.6.0
Commit ID: abff2aca61a8f0934e533d0d352978055fddbd96

## Program rules

* Make every effort not to damage or restrict the availability of products, services, or infrastructure
* Avoid compromising any personal data, interruption, or degradation of any service
* Don’t access or modify other user data, localize all tests to your accounts
* Perform testing only within the scope
* Don’t exploit any DoS/DDoS vulnerabilities, social engineering attacks, or spam
* In case you find chain vulnerabilities we’ll pay only for vulnerability with the highest severity.
* Don’t break any law and stay in the defined scope
* Any details of found vulnerabilities must not be communicated to anyone who is not a HackenProof Team or an authorized employee of this Company without appropriate permission
* In case that your finding is valid you will be asked for extra KYC verification to proceed with payments
* Perform testing on a private testnet wherever possible

## For more information, check:

- [ERC-4337 website](https://dashboard.hackenproof.com/redirect?url=https://erc4337.io)

## Disclosure guidelines

* Do not discuss this program or any vulnerabilities (even resolved ones) outside of the program without express consent from the organization
* No vulnerability disclosure, including partial is allowed for the moment.
* Please do NOT publish/discuss bugs

## Eligibility and coordinated disclosure

We are happy to thank everyone who submits valid reports which help us improve the security. However, only those that meet the following eligibility requirements may receive a monetary reward:

* You must be the first reporter of a vulnerability. This includes disclosures discovered by a security audit or made available to the ERC-4337 team through other channels, such as GitHub, Ethereum Magicians website, Discord, Telegram, e-mail etc.
* The vulnerability must be a qualifying vulnerability
* Any vulnerability found must be reported no later than 24 hours after discovery and exclusively through hackenproof.com
* You must send a clear textual description of the report along with steps to reproduce the issue, include attachments such as screenshots or proof of concept code as necessary.
* You must not be an employee of the Ethereum Foundation Account Abstraction team or one of its contractors.
* ONLY USE YOUR HackenProof ADDRESS (in case of violation, no bounty can be awarded)
* Provide detailed but to-the point reproduction steps
* The Account Abstraction bounty program considers a number of variables in determining rewards. Determinations of eligibility, score and all terms related to an award are at the sole and final discretion of the Ethereum Foundation bug bounty panel.
* You must not publicly disclose approval of your submissions or the awarded bounties without prior permission from the ERC-4337 team.
* Violation of any of the above listed bug bounty rules will lead to immediate exclusion from the bug bounty program regardless of the validity of the submissions.

## Program description

Account Abstraction Bugs

## SLA

```
{
 "first_response": 3,
 "resolution_time": 90,
 "time_to_reward": 14,
 "time_to_triage": 14
}
```

