# Whitechain Bridge — HackenProof scope

- Program: https://hackenproof.com/programs/whitechain-bridge
- Platform: **HackenProof** (company: WhiteBIT)
- Status: **Active** · no end date
- Max bounty: **$10,000**
- no KYC · **PoC required** · min reputation 50 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $2,000 – $10,000 |
| High | $500 – $2,000 |
| Medium | $300 – $500 |
| Low | $50 – $300 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/whitechain-labs/bridge-contracts | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `bridge-contracts/` | https://github.com/whitechain-labs/bridge-contracts | main | a9b7a82 2025-12-16 Merge pull request #1 from whitechain-labs/release-3.0.0 |

## Focus area

## IN SCOPE VULNERABILITIES: Smart Contracts
* Bridge contract (all logic: bridgeTokens, receiveTokens, withdrawCoinLiquidity, withdrawTokenLiquidity, gas accounting, usedHashes, setDailyLimit, etc.)
* Mapper contract (registering/removing/enabling mappings, mapInfo, withdraw/deposit types)
* Library and interface contracts only insofar as they affect Bridge/Mapper security (e.g., ECDSAChecks, IERC20, IERC20Mintable)
* UUPS proxy and _authorizeUpgrade flows, in context of possible upgrade capture or storage collision
* Business logic issues
* Unauthorized access / access control bypass (role escalation)
* Signature issues: replay, forgery, malleability, bad domain separation
* Reentrancy and callback attacks
* Bridging daily limits logic
* Upgradeability / proxy risks (UUPS, storage collision, uninitialized proxies)
* Integer arithmetic / overflow / underflow / precision errors
* Token handling issues (for standard ERC-20 tokens)
* External call abuses, delegatecall and arbitrary call execution
* Incorrect ETH/token accounting (gasAccumulated, contract balance errors)
* Denial-of-Service (on-chain) and block gas limit issues
* Oracle / external dependency manipulation (if used on-chain)
* Cryptography & randomness weaknesses
* Access to sensitive data / secrets leaked on-chain
* Incorrect type casting / address conversions (bytes32 ↔ address)
* Event/logging and monitoring omissions (auditability issues)
* Front-running / race conditions (MEV) affecting protocol invariants
* Self-destruct / funds locked by design mistakes
* Denial via malformed input / improper validation (input sanitization)
* Poor upgrade / governance locking policies (timelocks, multisig weaknesses)
* Any other on-chain issue with clear potential loss.


## OUT OF SCOPE VULNERABILITIES: Smart Contracts
* Frontend, backend services, relayer servers, multisig operators, CI/CD, cloud infra, RPC node configuration.
* Social engineering, physical access, compromise of org private keys (unless done by exploiting on-chain code).
* Theoretical or non-reproducible issues without a PoC.
* Architectural criticism of centralization, or design choices that are intentional.
* ERC-20 non-standard, fee-on-transfer.

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

Whitechain Bridge is a centralized cross-chain bridge for moving tokens between WCH-ETH and WCH-TRON. This program rewards vulnerabilities in smart contracts only that affect the safety of user funds. In-scope: on-chain contracts Bridge and Mapper and their direct dependencies as used by these contracts.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 14,
 "time_to_triage": 7
}
```

