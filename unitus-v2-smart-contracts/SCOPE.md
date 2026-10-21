# Unitus V2 Smart Contracts  — HackenProof scope

- Program: https://hackenproof.com/programs/unitus-v2-smart-contracts
- Platform: **HackenProof** (company: Unitus)
- Status: **Active** · no end date
- Max bounty: **$50,000**
- no KYC · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $50,000 |
| High | $5,000 |
| Medium | $2,000 |
| Low | $1,000 |

## Assets in scope (1)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/UnitusLabs/Contracts/wiki/Deployments#base-contracts | This bounty program is limited to contracts and their corresponding functions that have already been deployed on-chain and are currently active. Unitu |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `Contracts/` | https://github.com/UnitusLabs/Contracts | main | a03a718 2026-10-16 fix: align fixed-term withdrawal prototype |

## Focus area

## Introduction
Unitus has emerged as a pioneering lending protocol across our supported networks, boasting novel features such as sustainable tokenomics and an improved multi-chain user experience. With the growing mainstream adoption of DeFi, the demand for advanced lending solutions — offering efficiency, security, and flexibility — has reached unprecedented levels. In light of this, we are thrilled to announce the upcoming V2 of our protocol, which introduces a suite of innovative features aimed at enhancing capital efficiency and tailored risk management.
## Key Features
Unitus V2 introduces several new innovative features, for more details can be found in https://unitus.medium.com/introducing-unitus-v2-a-new-paradigm-for-dynamic-multichain-lending-protocol-a19c13eda600

### Segregated Mode
Segregated Mode creates markets where users can collateralize their supply to borrow exclusively from certain segregated markets.
### Supercharged Mode
Supercharged Mode is designed to maximize capital efficiency in scenarios where collateral and borrowed assets exhibit correlated prices.
### Time-Locked Withdrawal (Not activated, deprecated)
Time-locked withdrawal adds an extra layer of protection by introducing a delay mechanism for certain transactions, reducing the likelihood of unauthorized access or malicious activities.

## Bounty Program on Base Mainnet
* More resources regarding the Unitus can be found on their website https://app.unitus.finance
The bug bounty program is focused around its smart contracts and infrastructure and is mostly concerned with issues stated in the

**Impacts in Scope section.**

**All bug reports must come with a PoC in order to be considered for a reward, bug reports without a PoC will be rejected.**

* Critical vulnerabilities for smart contracts are further defined by the following conditions. All need to be met in order to get the classification of critical. Allow attacker(s) to take away collateral tokens for at least 10% in dollar value of collateral tokens from the system.
 * Are applied to a real situation and triggered through an attack vector rather than theory or hypothesis.
 * Occur in operation mode or emergency shutdown mode, excluding those occurring during or shortly after the deployment when the system is yet to become fully activated.

Please note this Bug Bounty Program does not cover vulnerabilities pertaining to 1) protocols built by third-party developers (i.e., smart contract wallet); 2) ownership of an admin key.

The reward of critical smart contract vulnerabilities is capped at 10% of economic damage, primarily taking into account the funds at risk. The Unitus team may, at their discretion, decide to increase the reward based on PR and branding aspects.

**Payouts are handled by the Unitus team directly and are denominated in USD.**

The target asset is a link of Github which lists all major contracts of Unitus suitable for bounty.

In addition to the smart contracts in this table, the following information has been provided for reference. However, only the smart contracts in the table will be considered as in-scope: https://github.com/UnitusLabs/Contracts, https://github.com/UnitusLabs/Oracle

## Impacts in scope
Only the following impacts are accepted within this bug bounty program. All other impacts are not considered as in-scope, even if they affect something in the assets in scope table.

### Description Severity Level
### Critical
* Major manipulation of governance voting results deviating from voted outcome, whenever protection mechanisms can’t mitigate the damage.
* Direct theft of any user funds classified as the principal, whether at-rest or in-motion
* Permanent locking of user funds classified as the principal or funds of the treasury
* Protocol insolvency

### High
* Direct theft of any funds in the Treasury
* Theft of yield, defined as funds not classified as the principal (not including yield yet to be earned)
* Permanent locking of unclaimed yield of users, defined as funds not classified as the principal (not including yield yet to be earned)
* Temporary locking of funds classified as the principal or funds of the treasury

### Medium
* Smart contract unable to operate due to lack of token funds
* Manipulation of interest rates (supply or borrow) with mechanisms not intended or limited by design
* Unexpected infrastructural behavior

### Low
* Contract fails to deliver promised returns, but doesn't lose value
* Imprecision on accounting (balances, rates)
* Theft of gas

## Out of Scope & Rules
The following vulnerabilities are excluded from the rewards for this bug bounty program:
* Attacks that the reporter has already exploited themselves, leading to damage
* Attacks requiring access to leaked keys/credential
* Attacks requiring access to privileged addresses (e.g. governance, strategist, multi-sig wallet, etc).

**Smart Contracts and Blockchain:**

* Incorrect data supplied by third party oracles
* Not to exclude oracle manipulation/flash loan attacks
* Basic economic governance attacks (e.g. 51% attack)
* Lack of liquidity
* Sybil attacks

## Disclaimer & Known Issues
Check the following link for disclaimer and known issues. Please keep in mind, we will continue to update the known issues list, but we cannot guarantee that we will cover every aspect. Please do your own research before submitting any reports.

https://github.com/UnitusLabs/Contracts/wiki/Bounty-Program-Disclaimers-&-Scope-Clarification

## Program rules

* Any testing with mainnet or public testnet contracts; all testing should be done on private testnets
* Any testing with pricing oracles or third party smart contracts
* Attempting phishing or other social engineering attacks against our employees and/or customers
* Any testing with third party systems and applications (e.g. browser extensions) as well as websites (e.g. SSO providers, advertising networks)
* Any denial of service attacks
* Automated testing of services that generates significant amounts of traffic
* Public disclosure of an unpatched vulnerability in an embargoed bounty
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

The next-generation multi-chain money market connecting assets, bridging Chains.

Unitus aims to become a cross-chain and omni money market, connecting liquidity across the globe, encompassing both crypto and real-world assets, and spanning the realms of on-chain and off-chain ecosystems.

For more details, please visit https://unitus.finance/, https://app.unitus.finance

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

