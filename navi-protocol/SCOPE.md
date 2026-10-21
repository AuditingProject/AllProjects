# NAVI Protocol — HackenProof scope

- Program: https://hackenproof.com/programs/navi-protocol
- Platform: **HackenProof** (company: NAVI Protocol)
- Status: **Active** · no end date
- Max bounty: **$300,000**
- no KYC · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $30,000 – $300,000 |
| High | $5,000 – $30,000 |
| Medium | $1,000 – $5,000 |
| Low | $300 – $1,000 |

## Assets in scope (2)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/naviprotocol/navi-smart-contracts/tree/main/lending_core | — |
| 2 | Critical | Smart Contract | https://github.com/naviprotocol/navi-smart-contracts/tree/main/oracle | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `navi-smart-contracts/` | https://github.com/naviprotocol/navi-smart-contracts | origin/main | 77fdf79 2026-10-16 Merge pull request #18 from naviprotocol/docs/test-coverage |

In-scope paths inside `navi-smart-contracts/` (2):

- `lending_core`
- `oracle`

## Explicitly out of scope (2)

HackenProof marks these targets out of scope on the program page. They were **not** cloned as in-scope assets.

- https://github.com/naviprotocol/navi-smart-contracts/blob/main/lending_core/sources/incentive_v2.move
- https://github.com/naviprotocol/navi-smart-contracts/blob/main/lending_core/sources/incentive.move

## Focus area

## Scope

**Low-Medium**
Minor vulnerabilities that affect protocol accuracy, reliability, or availability, with limited financial or operational impact.	- Rounding errors in interest accrual that accumulate over time
- Edge cases in execution that may result in partial fund loss
- Gas griefing attacks that make protocol operations prohibitively expensive
- Denial of service vulnerabilities affecting protocol availability
- Improper state updates that cause incorrect interest accrual or reward distribution

**High**
Significant vulnerabilities in core protocol logic or state transitions that could result in unauthorized actions or notable financial consequences, without fully compromising the protocol.	- Liquidation logic flaws that prevent proper liquidations or allow unfair liquidations
- Incorrect health factor calculations leading to improper loan-to-value ratios
- Flash loan attack vectors that can manipulate protocol state
- Interest rate calculation errors that significantly benefit borrowers or lenders
unfairly

**Critical**
Severe vulnerabilities leading to direct financial loss, unauthorized fund access, or complete protocol compromise, allowing full control over core assets or operations.	- Price oracle manipulation that allows attackers to manipulate asset prices, leading to unauthorized liquidations or unfair
borrowing
- Unauthorized fund extraction that enables draining protocol treasury or user
deposits
- Collateral bypass vulnerabilities allowing users to borrow without sufficient
collateral
- Permission escalation allowing unauthorized access to admin functions
(pause, upgrade, withdrawal)
- Direct theft of user funds


## Out of Scope

The following issues are NOT eligible for bug bounty rewards:

**Gas Optimization**
- Gas inefficiencies in contract operations
- Suboptimal gas usage patterns
- Gas cost improvements

**Code Quality & Style**

- Code formatting and style issues
- Missing or inconsistent comments
- Non-security related code refactoring suggestions
- Best practice recommendations without security impact

**Known Issues**
- Issues already reported or acknowledged by the team
- Publicly disclosed vulnerabilities
- Issues listed in audit reports or documentation

**Other Exclusions**
- Attacks that the reporter has already exploited themselves, leading to damage
- Theoretical vulnerabilities without proof of concept
- Issues in third-party dependencies (unless directly exploitable in our protocol)
- Issues requiring highly unlikely conditions or user errors
- Economic/game theory concerns without a direct exploit path
- Eligibility follows impact: a vulnerability in an out-of-scope file is eligible if its impact lands on in-scope contracts.

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

NAVI is the first Native One-Stop Liquidity Protocol on Sui. It enables users to participate as liquidity providers or borrowers within the Sui Ecosystem.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 6,
 "time_to_triage": 3
}
```

