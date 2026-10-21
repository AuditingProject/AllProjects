# Ample Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/ample-smart-contracts
- Platform: **HackenProof** (company: Ample)
- Status: **Active** · no end date
- Max bounty: **$20,000**
- no KYC · **PoC required** · min reputation 150 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $0 – $20,000 |
| High | $0 – $5,000 |
| Medium | $0 – $1,000 |
| Low | $0 – $500 |

## Assets in scope (12)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://monadscan.com/address/0x4b8057e5cdFAf53222580DFAc54f327fE11C2078#code | Monad: `AmplePerspective` |
| 2 | Critical | Smart Contract | https://monadscan.com/address/0x9881464ade08eaea838d1ba06073a0c8f972b185#code | Monad: `AmpleEarnFactory` |
| 3 | Critical | Smart Contract | https://monadscan.com/address/0xc9086278b317d6316151945d720ce7b602fbe463#code | Monad: `AmpleEarnCrossChainRouter` |
| 4 | Critical | Smart Contract | https://basescan.org/address/0x801ad3167d1578d5035a25425796b79cb4a31cba#code | Base: `AmplePerspective` |
| 5 | Critical | Smart Contract | https://basescan.org/address/0x62b304519ee30e205621920454c2802fb99dca67#code | Base: `AmpleEarnFactory` |
| 6 | Critical | Smart Contract | https://basescan.org/address/0xf132654d677034c804cfb6432d27526088deb0c5#code | Base: `AmpleEarnCrossChainRouter` |
| 7 | Critical | Smart Contract | https://arbiscan.io/address/0x4b8057e5cdfaf53222580dfac54f327fe11c2078#code | Arbitrum: `AmplePerspective` |
| 8 | Critical | Smart Contract | https://arbiscan.io/address/0x9881464ade08eaea838d1ba06073a0c8f972b185#code |  Arbitrum: ``AmpleEarnFactory` |
| 9 | Critical | Smart Contract | https://arbiscan.io/address/0xcab6a41090e274efe7fe64cf0ec906f413686d36#code | Arbitrum: `AmpleEarnCrossChainRouter` |
| 10 | Critical | Smart Contract | https://katanascan.com/address/0x4b8057e5cdfaf53222580dfac54f327fe11c2078#code | Katana: `AmplePerspective` |
| 11 | Critical | Smart Contract | https://katanascan.com/address/0x9881464ade08eaea838d1ba06073a0c8f972b185#code | Katana: `AmpleEarnFactory` |
| 12 | Critical | Smart Contract | https://katanascan.com/address/0x7beb2204fd629bf686ce85c640a5bcd66b392e65#code | Katana: `AmpleEarnCrossChainRouter` |

## Repositories cloned

_No git repositories are listed in scope._

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **7 of 12** in-scope addresses have full source on disk.
- 5 have no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

Sources: sourcify (7).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x801ad3167d15` | Base: `AmplePerspective` | `src/ample/AmplePerspective.sol:AmplePerspective` | `deployed-source/0x801ad3167d15__Base_AmplePerspective/` |
| `0x62b304519ee3` | Base: `AmpleEarnFactory` | `src/ample/AmpleEarnFactory.sol:AmpleEarnFactory` | `deployed-source/0x62b304519ee3__Base_AmpleEarnFactory/` |
| `0xf132654d6770` | Base: `AmpleEarnCrossChainRouter` | `src/ample/AmpleEarnCrossChainRouter.sol:AmpleEarnCrossChainRouter` | `deployed-source/0xf132654d6770__Base_AmpleEarnCrossChainRouter/` |
| `0x4b8057e5cdfa` | Arbitrum: `AmplePerspective` | `src/ample/AmplePerspective.sol:AmplePerspective` | `deployed-source/0x4b8057e5cdfa__Arbitrum_AmplePerspective/` |
| `0x9881464ade08` | Arbitrum: ``AmpleEarnFactory` | `src/ample/AmpleEarnFactory.sol:AmpleEarnFactory` | `deployed-source/0x9881464ade08__Arbitrum_AmpleEarnFactory/` |
| `0xcab6a41090e2` | Arbitrum: `AmpleEarnCrossChainRouter` | `src/ample/AmpleEarnCrossChainRouter.sol:AmpleEarnCrossChainRouter` | `deployed-source/0xcab6a41090e2__Arbitrum_AmpleEarnCrossChainRouter/` |
| `0x9881464ade08` | Katana: `AmpleEarnFactory` | `src/ample/AmpleEarnFactory.sol:AmpleEarnFactory` | `deployed-source/0x9881464ade08__Katana_AmpleEarnFactory/` |

**No source retrieved** (by chain): monadscan.com (3), Katana (2).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.


## In-scope targets that are not git repos

Deployed contracts, packages, apps or docs. Explorer-verified source is fetched separately into `deployed-source/` where available.

- [Critical] Smart Contract — https://monadscan.com/address/0x4b8057e5cdFAf53222580DFAc54f327fE11C2078#code — Monad: `AmplePerspective`
- [Critical] Smart Contract — https://monadscan.com/address/0x9881464ade08eaea838d1ba06073a0c8f972b185#code — Monad: `AmpleEarnFactory`
- [Critical] Smart Contract — https://monadscan.com/address/0xc9086278b317d6316151945d720ce7b602fbe463#code — Monad: `AmpleEarnCrossChainRouter`
- [Critical] Smart Contract — https://basescan.org/address/0x801ad3167d1578d5035a25425796b79cb4a31cba#code — Base: `AmplePerspective`
- [Critical] Smart Contract — https://basescan.org/address/0x62b304519ee30e205621920454c2802fb99dca67#code — Base: `AmpleEarnFactory`
- [Critical] Smart Contract — https://basescan.org/address/0xf132654d677034c804cfb6432d27526088deb0c5#code — Base: `AmpleEarnCrossChainRouter`
- [Critical] Smart Contract — https://arbiscan.io/address/0x4b8057e5cdfaf53222580dfac54f327fe11c2078#code — Arbitrum: `AmplePerspective`
- [Critical] Smart Contract — https://arbiscan.io/address/0x9881464ade08eaea838d1ba06073a0c8f972b185#code — Arbitrum: ``AmpleEarnFactory`
- [Critical] Smart Contract — https://arbiscan.io/address/0xcab6a41090e274efe7fe64cf0ec906f413686d36#code — Arbitrum: `AmpleEarnCrossChainRouter`
- [Critical] Smart Contract — https://katanascan.com/address/0x4b8057e5cdfaf53222580dfac54f327fe11c2078#code — Katana: `AmplePerspective`
- [Critical] Smart Contract — https://katanascan.com/address/0x9881464ade08eaea838d1ba06073a0c8f972b185#code — Katana: `AmpleEarnFactory`
- [Critical] Smart Contract — https://katanascan.com/address/0x7beb2204fd629bf686ce85c640a5bcd66b392e65#code — Katana: `AmpleEarnCrossChainRouter`

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

A new way to compound onchain assets.

Deposit supported assets, retain full principal ownership, and earn variable upside.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

