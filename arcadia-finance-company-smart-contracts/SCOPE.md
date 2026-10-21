# Arcadia Finance Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/arcadia-finance-company-smart-contracts
- Platform: **HackenProof** (company: Arcadia Finance)
- Status: **Active** · no end date
- Max bounty: **$25,000**
- KYC required · **PoC required** · min reputation 50 · submission fee 5 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $0 – $25,000 |
| High | $0 – $7,500 |
| Medium | $0 – $2,000 |

## Assets in scope (3)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/arcadia-finance/accounts-v2 | — |
| 2 | Critical | Smart Contract | https://github.com/arcadia-finance/lending-v2 | — |
| 3 | Critical | Smart Contract | https://github.com/arcadia-finance/asset-managers | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `accounts-v2/` | https://github.com/arcadia-finance/accounts-v2 | main | 2bb89249 2026-10-15 Merge pull request #359 from arcadia-finance/refactor/stable-trusted-reserves |
| `lending-v2/` | https://github.com/arcadia-finance/lending-v2 | main | a15f493 2026-10-15 Merge pull request #245 from arcadia-finance/chore/bump-accounts-v2 |
| `asset-managers/` | https://github.com/arcadia-finance/asset-managers | main | 71d2ec5 2026-10-15 Merge pull request #130 from arcadia-finance/refactor/external-rebalance-optimization-math |

## Explicitly out of scope (1)

HackenProof marks these targets out of scope on the program page. They were **not** cloned as in-scope assets.

- https://github.com/arcadia-finance/accounts-v2/blob/main/src/accounts/helpers/SpotToMarginMigrator.sol

## Focus area

## IN SCOPE VULNERABILITIES: Smart Contracts

All targets are deployed on Base, Optimism, Robinhood Chain and/or Unichain. Deployed contract addresses: https://docs.arcadia.finance/developers/contract-addresses
Only the Arcadia-developed code of the deployed contracts is in scope. Everything else (tests, pre-deployment code, mocks, scripts, deployment tooling, and third-party dependencies/imports) is out of scope.

The Max reward tier is the highest payout available for an asset, not a floor; each report's severity is set solely by its demonstrated impact.

## Severity Classification & In-Scope Impacts

This program follows the **Primacy of Impact** principle. A report is valid only if it demonstrates **(a)** one of the in-scope impacts below **AND (b)** a defect in contract logic that diverges from the protocol's intended, documented design. A bug class (reentrancy, overflow, reordering, etc.) is a root cause, not an impact. An outcome the protocol is designed to produce is not a vulnerability, even when it loses funds. Losses from market risk, asset volatility, or the normal operation of the liquidation, interest, or pricing mechanisms do not qualify.

Severity is assigned by demonstrated impact and blast radius, not by category. Definitions are illustrative, not exhaustive:

1. **Critical:** a largely single-transaction (atomic) exploit causing theft, permanent (irreversible) loss, or permanent freezing of all or a significant portion of all/many users' funds (protocol-wide/systemic). Also full protocol insolvency or catastrophic bad debt borne by users caused by a logic defect (not market risk), and unauthorized minting/burning/modification of balances at scale. Reserved for permanent, irreversible, systemic loss.
2. **High:** a largely single-transaction (atomic) exploit causing theft, permanent loss, or permanent freezing of all or a significant portion of a single user's funds, not extending to the wider protocol.
3. **Medium:** a one-off exploit with limited user-fund loss, foregone/unclaimable yield, or a significant continuous/permanent protocol-side loss from a logic defect (e.g. permanently preventing the protocol/treasury from recovering funds owed); or permanent, irreversible DoS with no remedy and no user-fund loss. Unrealistic/low-probability preconditions are Medium at most.
4. **Low / Informational (out of scope):** a one-off loss of protocol-/treasury-controlled funds; any issue with no material or no demonstrable fund impact; and any exposure-cap/concentration-limit issue (`maxExposure`/`maxUsdExposure` undercount, bypass, or accounting discrepancy) with no realized loss of funds.

### Program-Specific Severity Rules (overrides the above)

- **Recoverable/reversible is never Critical, and recoverable/temporary DoS is Low.** If funds can be recovered or the impact reversed (admin action, pausing, timelock, rescue), or a lock/DoS is cleared by a trusted-role action, ordinary protocol operation (a later bid, time, the Dutch price decay, a retry after a config fix), or any remedy, it is not "permanent."
- **Single-user vs. systemic.** Loss confined to a single user (or small set) is capped at High.
- **Protocol-/treasury-controlled funds** are not user funds: a one-off such loss is Low, a significant continuous/permanent such loss is Medium at most. Never High/Critical.
- **Trusted roles and trusted third parties** are an accepted trust assumption and out of scope: (i) anything a privileged/trusted role (admin, owner, governance, guardian, keeper, risk manager, asset-manager initiator) can do, including actions causing loss/freezing, plus centralization and governance vectors; and (ii) any trusted external party/integration (Chainlink oracles/sequencer feeds, the CoW Protocol settlement layer and its bonded solvers, ...) behaving maliciously, being compromised, or malfunctioning. Reports requiring such a role/party to misbehave, or describing what they could do, are not valid.
- **The liquidation, interest, and pricing mechanisms operating as documented are never a logic defect.** In particular, the Dutch auction freezes asset shares and `startDebt` at auction start and prices partial bids on those frozen values with no live re-valuation; a bidder may buy any subset of assets; the auction does not pool one asset's surplus to cover another's shortfall; bidders buy at a discount to live value; and an auction may reach cutoff and have remaining assets bought-in for manual handling. Any shortfall/bad-debt/leak whose existence depends on a post-snapshot price change is market risk, even if the account's live aggregate value transiently exceeds its debt mid-auction. Arguments mixing valuation domains (live spot vs frozen share, or "live solvency" vs amounts the mechanism intentionally does not use) do not show a defect.
- **Live on-chain state is the sole reference for "present/realistic."** Any impact depending on a configuration or risk-parameter value differing from current on-chain state (collateral/liquidation factors, exposure caps, allowed-asset list, auction parameters, account recipients, tranche setup, oracle/sequencer config) is out of scope. The reporter must show the precondition holds on a live, operational creditor/pool. Pre-launch/unconfigured states do not count.
- **These program rules may be clarified and/or amended at any time, every submission is evaluated against the rules in effect at the time of judging.**
- **No qualifying impact, no reward.**

### Submission Requirements

Include a clear description, the affected contract/function, the in-scope impact, and reproduction steps. A runnable Foundry PoC is mandatory for all Critical/High submissions, run against the in-scope commit or a mainnet fork, reproducing the qualifying impact **against the live on-chain configuration (or a faithful fork), not a hand-constructed config that does not match deployed state.** Asserted impact without a runnable PoC is out of scope. AI-generated reports without a runnable

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
* Do not over-inflate the severity of your reports. Reports will be rejected without further comment should it be obviously be over-inflated.
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

Arcadia is a non-custodial composable margin protocol on Base, Optimism, and Unichain for leveraged yield strategies on AMM liquidity positions.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

