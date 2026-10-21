# Starknet Staking — HackenProof scope

- Program: https://hackenproof.com/programs/starknet-staking
- Platform: **HackenProof** (company: Starknet)
- Status: **Active** · no end date
- Max bounty: **$100,000**
- KYC required · **PoC required** · min reputation 150 · submission fee 5 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $15,000 – $100,000 |
| High | $1,500 – $10,000 |
| Medium | $1,000 |

## Assets in scope (18)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/stake/RewardSupplierStorage.sol | RewardSupplierStorage.sol |
| 2 | Critical | Smart Contract | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/stake/RewardSupplierExternalInterfaces.sol | RewardSupplierExternalInterfaces.sol |
| 3 | Critical | Smart Contract | https://github.com/starkware-libs/starknet-staking/tree/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/stake/RewardSupplier.sol | RewardSupplier.sol |
| 4 | Critical | Smart Contract | https://github.com/starkware-libs/starknet-staking/tree/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/stake/MintManager.sol | MintManager.sol |
| 5 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/tree/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/libraries | L1 Solidity Libraries |
| 6 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/tree/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/interfaces | L1 Solidity Interfaces |
| 7 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/tree/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/components | L1 Solidity Components |
| 8 | Critical | Smart Contract | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/upgrade/ProxySupportImpl.sol | Upgrade_ProxySupportImpl.sol |
| 9 | Critical | Smart Contract | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/L1/starkware/solidity/stake/PeriodMintLimit.sol | PeriodMintLimit.sol |
| 10 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/utils.cairo | utils.cairo |
| 11 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/staking/staking.cairo | staking.cairo |
| 12 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/staking/interface.cairo | staking_interface.cairo |
| 13 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/reward_supplier/reward_supplier.cairo | reward_supplier.cairo |
| 14 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/reward_supplier/interface.cairo | reward_supplier_interface.cairo |
| 15 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/pool/pool.cairo | Pool.cairo |
| 16 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/pool/interface.cairo | Pool_interface.cairo |
| 17 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/minting_curve/minting_curve.cairo | minting_curve.cairo |
| 18 | Critical | Protocol | https://github.com/starkware-libs/starknet-staking/blob/%40staking/contracts-v1.0.1-dev.854/workspace/apps/staking/contracts/src/minting_curve/interface.cairo | minting_curve_interface,cairo |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `starknet-staking/` | https://github.com/starkware-libs/starknet-staking | @staking/contracts-v1.0.1-dev.854 | 5c11a568 2025-08-20 chore(staking): optimize is_btc_active |

In-scope paths inside `starknet-staking/` (18):

- `workspace/apps/staking/L1/starkware/solidity/stake/RewardSupplierStorage.sol`
- `workspace/apps/staking/L1/starkware/solidity/stake/RewardSupplierExternalInterfaces.sol`
- `workspace/apps/staking/L1/starkware/solidity/stake/RewardSupplier.sol`
- `workspace/apps/staking/L1/starkware/solidity/stake/MintManager.sol`
- `workspace/apps/staking/L1/starkware/solidity/libraries`
- `workspace/apps/staking/L1/starkware/solidity/interfaces`
- `workspace/apps/staking/L1/starkware/solidity/components`
- `workspace/apps/staking/L1/starkware/solidity/upgrade/ProxySupportImpl.sol`
- `workspace/apps/staking/L1/starkware/solidity/stake/PeriodMintLimit.sol`
- `workspace/apps/staking/contracts/src/utils.cairo`
- `workspace/apps/staking/contracts/src/staking/staking.cairo`
- `workspace/apps/staking/contracts/src/staking/interface.cairo`
- `workspace/apps/staking/contracts/src/reward_supplier/reward_supplier.cairo`
- `workspace/apps/staking/contracts/src/reward_supplier/interface.cairo`
- `workspace/apps/staking/contracts/src/pool/pool.cairo`
- `workspace/apps/staking/contracts/src/pool/interface.cairo`
- `workspace/apps/staking/contracts/src/minting_curve/minting_curve.cairo`
- `workspace/apps/staking/contracts/src/minting_curve/interface.cairo`

## Focus area

Staking on Starknet involves locking STRK tokens in the staking protocol, in order to contribute to network security and performance. Users can either stake directly or delegate their tokens to others, with staking rewards based on their level of participation and contribution.

For more information about Starknet Staking, please visit https://docs.starknet.io/staking/overview/

**StarkWare provides rewards in USDC or STRK, denominated in USD, at its discretion.**

## IN SCOPE VULNERABILITIES: Smart Contracts
**Critical**
* Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
* Protocol insolvency

**High**
* Theft of unclaimed yield
* Theft of unclaimed royalties
* Permanent freezing of unclaimed yield
* Permanent freezing of unclaimed royalties
* Temporary freezing of funds

**Medium**
* Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
* Unbounded gas consumption

## Prohibition On Simultaneous Submissions 
Researchers are not permitted to submit the same vulnerability report simultaneously on multiple platforms. Violation of this rule will result in the blocking of the researcher's account.

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
* Impacts caused by attacks requiring access to privileged addresses (including, but not limited to: governance and strategist contracts) without additional modifications to the privileges attributed.
* Vulnerabilities that can be reverted by upgrading the contract will have reduced severity.

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

Staking on Starknet involves locking STRK tokens, and/or BTC wrappers in the staking protocol, in order to contribute to network security and performance. Users can either stake directly or delegate their tokens to others (BTC can only be delegated), with staking rewards based on their level of participation and contribution.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

