# Volo Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/volo-smart-contracts
- Platform: **HackenProof** (company: NAVI Protocol)
- Status: **Active** · no end date
- Max bounty: **$150,000**
- no KYC · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $15,000 – $150,000 |
| High | $2,500 – $15,000 |
| Medium | $500 – $2,500 |
| Low | $150 – $500 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/Sui-Volo/volo-smart-contracts | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `volo-smart-contracts/` | https://github.com/Sui-Volo/volo-smart-contracts | main | bf034aa 2026-09-10 Merge pull request #3 from Sui-Volo/sync/deployed-source-2026-09 |

## Focus area

## Scope

**Low-Medium**
Minor vulnerabilities that affect protocol accuracy, reliability, or availability, with limited financial or operational impact.	
- Rounding errors in interest accrual that accumulate over time
- Edge cases in execution that may result in partial fund loss
- Gas griefing attacks that make protocol operations prohibitively expensive
- Denial of service vulnerabilities affecting protocol availability
- Improper state updates that cause incorrect interest accrual or reward distribution

**High**
Significant vulnerabilities in core protocol logic or state transitions that could result in unauthorized actions or notable financial consequences, without fully compromising the protocol.	
- Staking logic flaws that prevent proper delegation or allow unfair allocations
- Exchange rate calculation errors that significantly benefit suppliers unfairly

**Critical**
Severe vulnerabilities leading to direct financial loss, unauthorized fund access, or complete protocol compromise, allowing full control over core assets or operations.	
- Unauthorized fund extraction that enables draining protocol treasury or user
deposits
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

Ultimate Onchain Structured Fund.

## SLA

```
{
 "first_response": 6,
 "resolution_time": 14,
 "time_to_reward": 6,
 "time_to_triage": 6
}
```

