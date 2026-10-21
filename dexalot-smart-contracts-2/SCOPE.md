# Dexalot Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/dexalot-smart-contracts-2
- Platform: **HackenProof** (company: Dexalot)
- Status: **Active** · no end date
- Max bounty: **$20,000**
- no KYC · **PoC required** · min reputation 100 · submission fee 5 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $10,000 – $20,000 |
| High | $4,000 – $6,000 |
| Medium | $1,000 – $2,000 |
| Low | $200 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/Dexalot/contracts/tree/cd/removeAuction | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `contracts/` | https://github.com/Dexalot/contracts | origin/cd/removeAuction | f7acdba 2026-03-20 removed obsolete files |

## Explicitly out of scope (1)

HackenProof marks these targets out of scope on the program page. They were **not** cloned as in-scope assets.

- constracts/MainnetRFQ.sol

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
* The following contracts:

```
constracts/BannedAccounts.sol
constracts/DelayedTransfers.sol
constracts/Exchange.sol
constracts/ExchangeMain.sol
constracts/ExchangeSub.sol
constracts/GasStation.sol
constracts/InventoryManager.sol
constracts/OrderBooks.sol
constracts/Portfolio.sol
constracts/PortfolioMain.sol
constracts/PortfolioSub.sol
constracts/PortfolioSubHelper.sol
constracts/PortfolioBridgeMain.sol
constracts/PortfolioBridgeSub.sol
constracts/PortfolioMinter.sol
constracts/TradePairs.sol
constracts/token/IncentiveDistributor.sol
constracts/bridgeApps/*.*
constracts/library/UtilsLibrary.sol
constracts/library/InventoryFeeCalculatorLibrary.sol
```


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
* The following contracts:
```
constracts/MainnetRFQ.sol
```


For the following contracts, raise issues at  https://hackenproof.com/audit-programs/dexalot-omnivault-dualdefense-audit

```
constracts/vaults/*.*
constracts/DexalotRFQ.sol
constracts/DexalotRouter.sol
```

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

Dexalot is a revolutionary non-custodial central limit order book dex aiming at bringing the traditional centralized exchange look and feel, through a decentralized on-chain application.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

