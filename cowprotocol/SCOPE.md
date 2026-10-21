# cowprotocol — Immunefi scope

- Program: https://immunefi.com/bug-bounty/cowprotocol/scope/
- Max bounty: **$1,000,000**
- KYC required: **yes**
- Launched 2021-06-15, program updated 2026-09-24
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $50,000 – $1,000,000 (10% of funds at risk) |
| Smart contract | High | $10,000 – $50,000 |
| Smart contract | Medium | $1,000 – $10,000 |

## Assets in scope (19)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/GPv2AllowListAuthentication.sol | GPv2AllowListAuthentication |
| 2 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/libraries/GPv2EIP1967.sol | GPv2EIP1967 |
| 3 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/GPv2Settlement.sol | GPv2Settlement |
| 4 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/mixins/GPv2Signing.sol | GPv2Signing.sol |
| 5 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/mixins/StorageAccessible.sol | StorageAccessible.sol |
| 6 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/libraries/GPv2Interaction.sol | GPv2Interaction.sol |
| 7 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/libraries/GPv2Order.sol | GPv2Order.sol |
| 8 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/libraries/GPv2Trade.sol | GPv2Trade.sol |
| 9 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/libraries/GPv2Transfer.sol | GPv2Transfer.sol |
| 10 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/libraries/GPv2SafeERC20.sol | GPv2SafeERC20.sol |
| 11 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/interfaces/GPv2Authentication.sol | GPv2Authentication.sol |
| 12 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/interfaces/GPv2EIP1271.sol | GPv2EIP1271.sol |
| 13 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/GPv2VaultRelayer.sol | GPv2VaultRelayer.sol |
| 14 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/mixins/Initializable.sol | Initializable.sol |
| 15 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/mixins/ReentrancyGuard.sol | ReentrancyGuard.sol |
| 16 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/libraries/SafeCast.sol | SafeCast.sol |
| 17 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/libraries/SafeMath.sol | SafeMath.sol |
| 18 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/interfaces/IERC20.sol | IERC20.sol |
| 19 | Smart contract | https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/interfaces/IVault.sol | IVault.sol |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `contracts/` | https://github.com/cowprotocol/contracts | 6ebbd810ff2da635fb6f88e9a15fde196f8c852a | 6ebbd81 2021-04-29 Typos (gnosis/gp-v2-contracts#582) | in-scope asset |

In-scope paths inside `contracts/` (19):

- `src/contracts/GPv2AllowListAuthentication.sol`
- `src/contracts/libraries/GPv2EIP1967.sol`
- `src/contracts/GPv2Settlement.sol`
- `src/contracts/mixins/GPv2Signing.sol`
- `src/contracts/mixins/StorageAccessible.sol`
- `src/contracts/libraries/GPv2Interaction.sol`
- `src/contracts/libraries/GPv2Order.sol`
- `src/contracts/libraries/GPv2Trade.sol`
- `src/contracts/libraries/GPv2Transfer.sol`
- `src/contracts/libraries/GPv2SafeERC20.sol`
- `src/contracts/interfaces/GPv2Authentication.sol`
- `src/contracts/interfaces/GPv2EIP1271.sol`
- `src/contracts/GPv2VaultRelayer.sol`
- `src/contracts/mixins/Initializable.sol`
- `src/contracts/mixins/ReentrancyGuard.sol`
- `src/contracts/libraries/SafeCast.sol`
- `src/contracts/libraries/SafeMath.sol`
- `src/contracts/interfaces/IERC20.sol`
- `src/contracts/interfaces/IVault.sol`

## Impacts in scope

**Smart contract — Critical**
- Changing the owner address of the authentication contract as well as adding a solver without authorization
- Forgery of a user’s signature that would allow them to execute a funded trade without using the user’s private key
- Execute arbitrary settlements without being a solver
- Executing a user’s trade that is expired or at a price worse than the limit price (also as a solver)
- Transferring in tokens more than once for the same fill-or-kill order in the same settlement (also as a solver)
- Access to user funds outside of a trade.

**Smart contract — High**
- Changing the order of a legitimate interaction, as well as skipping one, in a settlement
- Removing a solver without authorization (also as a solver)
- Making the contract unable to be operated by any solver, e.g., through self-destruction (also as a solver)

**Smart contract — Medium**
- Freeing storage without being a solver
- Invalidate an order without the permission of the user who created it

## Out of scope (from the program page)

The default Immunefi exclusions apply. The program-specific exclusions below also apply and prevail where they are more restrictive:


## For Smart Contracts:

Any vulnerabilities mentioned in CoW Swap’s official audits are considered out-of-scope. Audits can be found in the official contracts repository.

Any vulnerability that has already been reported to the CoW team or the CoW DAO, whether publicly or privately, is not eligible for a bounty. We recommend checking if the reported vulnerability is discussed in the issue tracker of the CoW Swap contracts repository.

Some known vulnerability may not (yet) have been publicly reported but are already privately known to the CoW team or have already been discovered by other parties and communicated to the CoW Team, but not yet fixed. Any such reports are not eligible.

The decision of eligibility of any submitted bug reports and their assessment is at the sole discretion of the Cow Team.

The following are also considered as out-of-scope:

- Migration methods.
- Services that build and submit the settlement transaction (e.g., denial of service, exploiting settlement transactions to extract value via sandwich attacks).
- Gas efficiency improvements.
- Any issues relating to networks other than the Ethereum Mainnet and Gnosis.
- Steal funds from the settlement contract as a solver.
- Price manipulation from the solver, for example:
    - Choosing the prices in a settlement so as to receive a premium from an order.
    - Reusing the same token twice in a settlement to give different prices to different orders.

The following vulnerabilities are excluded from the rewards for this bug bounty program:

- Running out of gas

The following activities are prohibited by bug bounty program:

- Any testing with mainnet or public testnet contracts; all testing should be done on private testnets
- Attempting phishing or other social engineering attacks against the CoW Team and/or customers
- Any denial of service attacks
- Automated testing of services that generates significant amounts of traffic
- Public disclosure of an unpatched vulnerability in an embargoed bounty

## For Websites & Applications:

- Backend APIs, including api.cow.fi, bff.cow.fi and cms.cow.fi
- The widget configurator and widget.cow.fi
- Cosmos code and the testing/, tools/ and patches/ directories
- Defects specific to IPFS or ENS delivery, including defects that reproduce only through cowswap.eth or cowswap.eth.limo
- examples/ in the SDK repository, .env.example files and docs/
- apps/explorer and the hosted CoW Explorer; a defect in otherwise in-scope shared code does not become excluded solely because it was first observed through Explorer
- The host page embedding a widget, including its content security policy, response headers and deployment pipeline
- An integrator's widget configuration, custom code, infrastructure or any other component not supplied by CoW
- PreSign orders submitted for another address through a backend API, where no valid on-chain pre-signature exists and the order cannot execute
- Preview, pull-request, staging, testnet and other non-production deployments
- The develop branch, unless the finding also reproduces on the release branch
- Forks, mirrors or copies republished outside the repositories and npm packages listed in Assets in Scope
- Superseded, deprecated, yanked or unpublished versions.
- Findings that require a configuration contrary to CoW's published documentation, unless that configuration is currently present on a CoW-controlled production deployment
- Defects solely in a third-party service, dependency, browser extension, wallet, RPC provider or other system outside CoW's control
- Transaction or signing-request changes caused solely by a host page, browser extension or wallet, without exploiting a defect in an in-scope CoW component
- Source-level observations without demonstrated execution and impact
- Reports generated without researcher analysis, including unverified LLM output

A finding is not eligible merely because a hypothetical misconfiguration could create an impact. If the unsafe configuration is currently present on an in-scope CoW-controlled production deployment, the report is assessed under the normal scope and impact rules.

### External dependency discount

Where exploitation requires a system outside CoW’s control to deviate from its documented or expected behavior, the reward may be reduced by up to 50%. Reliance on an external system that is behaving normally is not grounds for a discount.
The discount affects the reward amount only. It does not change the severity assigned under the Classification System.64:T

## Notes on assets

## For Smart Contracts:

We only accept reports for issues that can be reproduced in the smart contracts deployed at the following addresses:
0x9008d19f58aabd9ed0d60971565aa8510560ab41

- Ethereum: https://etherscan.io/address/0x9008d19f58aabd9ed0d60971565aa8510560ab41#code
- Gnosis Chain: https://gnosis.blockscout.com/address/0x9008d19f58aabd9ed0d60971565aa8510560ab41?tab=contract
0x9e7ae8bdba9aa346739792d219a808884996db67

- Ethereum: https://etherscan.io/address/0x9e7ae8bdba9aa346739792d219a808884996db67#code
- Gnosis Chain: https://gnosis.blockscout.com/address/0x9e7ae8bdba9aa346739792d219a808884996db67?tab=contract
0xc92e8bdf79f0507f65a392b0ab4667716bfe0110

- Ethereum: https://etherscan.io/address/0xc92e8bdf79f0507f65a392b0ab4667716bfe0110#code
- Gnosis Chain: https://gnosis.blockscout.com/address/0xc92e8bdf79f0507f65a392b0ab4667716bfe0110?tab=contract
0x2c4c28ddbdac9c5e7055b4c863b72ea0149d8afe

- Ethereum: https://etherscan.io/address/0x2c4c28ddbdac9c5e7055b4c863b72ea0149d8afe#code
- Gnosis Chain: https://gnosis.blockscout.com/address/0x2c4c28ddbdac9c5e7055b4c863b72ea0149d8afe?tab=contract

This corresponds to commit 6ebbd810ff2da635fb6f88e9a15fde196f8c852a in the [official repository](https://github.com/cowprotocol/contracts/blob/6ebbd810ff2da635fb6f88e9a15fde196f8c852a/src/contracts/).

For the Initializable, ReentrancyGuard, SafeCast, SafeMath, IERC20, and IVault smart contracts, this bug bounty program only accepts bug reports for the changes that were performed compared to the original, as well as any improper use of them that leads to actual issues in the contracts previously mentioned to be in scope. Any bug that is reproducible in the original vendored contract is out of scope.

Any vulnerabilities mentioned in this [audit report](https://github.com/gnosis/gp-v2-contracts/blob/main/audits/GnosisProtocolV2May2021.pdf) are considered as out-of-scope.

## For Web & Applications:

The following versions are eligible:

For repository assets, the release branch at the time of submission, currently `main`. The `develop` branch is not in scope unless the finding also reproduces on the release branch.

- For a CoW-controlled deployment, the code served by that deployment at the time of submission.
- For a published npm package, its latest public version at the time of submission.
- A tag or release that does not satisfy one of these rules is not independently in scope. Superseded, deprecated, yanked and unpublished versions are otherwise out of scope.

Preview, pull-request, staging, testnet and other non-production deployments are out of scope.

The `npm` scope is limited to packages whose source is contained in one of the repositories or paths listed above. A package is not in scope merely because it is published under the `@cowprotocol` namespace.

The CoW Swap service worker and its `emergency.js` reset path are in scope.

For a report to be eligible, both the affected asset and the demonstrated impact must be listed in scope, and no Out of Scope rule may apply.

## Notes on impacts

Rewards and severity are determined according to the demonstrated impact under the [Immunefi Vulnerability Severity Classification System V2.3](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/), including its rules concerning elevated privileges and uncommon user interaction.

Only the following Smart Contracts and Websites & Applications impacts are accepted. All other impacts are out of scope, even if they affect an asset listed above.

## Rewards / payout terms

## Reward calculation and severity

Rewards are distributed according to the demonstrated impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/), which provides separate severity scales for Smart Contracts and for Websites and Applications. Only the impacts expressly listed in the Impacts in Scope section are eligible.

The maximum reward for eligible critical vulnerabilities is:

- **Smart Contracts: USD 1,000,000**
- **Websites and Applications: USD 50,000**

The CoW Protocol bounty program considers a number of variables in determining rewards. Determinations of eligibility, score, and all terms related to an award are at the sole and final discretion of the CoW team bug bounty panel, on behalf of CoW DAO.

SDK, widget, frontend, signing, `postMessage`, package-publishing and release-pipeline findings do not receive a separate severity merely because of the affected component or vulnerability type. The report must demonstrate one of the impacts listed in the Impacts in Scope section, and that impact determines severity under the Classification System.

For example, a mismatch between displayed order terms and an EIP-712 payload is critical only where the proof of concept demonstrates direct theft, an unauthorized state-modifying action, or a malicious interaction with an already-connected wallet. JavaScript execution by itself does not establish a particular severity; the demonstrated impact controls.

## Critical rewards for Websites and Applications

For eligible Websites and Applications findings classified as Critical, the reward is up to USD 50,000 where the proof of concept demonstrates at least one of the following:

- Direct theft of user funds through an attack requiring no action by the user.
- An unauthorized transfer, approval, order or other malicious interaction through an already-connected wallet, including where it is caused by substitution of a contract address, modification of transaction arguments, submission of a transaction the user did not authorize, or a material divergence between displayed order terms and the EIP-712 payload presented for signature.
- Retrieval or leakage of a private key or key-generation material through exploitation of the reported vulnerability, leading to unauthorized access to user funds.

All other eligible Websites and Applications findings classified as Critical are rewarded up to USD 25,000, subject to the published minimum reward for that category.

These criteria determine the reward amount only. They do not change the severity assigned under the Classification System or expand the assets or impacts in scope.

## Reward eligibility

The CoW core team (whether paid directly or indirectly, including Grant Core Contributors and external auditors), including current and former team members, is not eligible for rewards. This exclusion includes anyone currently or formerly paid by CoW DAO, its Service Providers, or Gnosis.

In order to be eligible for a reward, bug reports must include:

- An explanation of how the bug can be reproduced.
- A failing test case.
- A valid scenario in which the bug can be exploited.

## Proof of Concept

A Proof of Concept demonstrating execution and impact is required for all Smart Contract and Websites and Applications reports, regardless of severity.

For Websites and Applications reports, the Proof of Concept must isolate the defect in the in-scope CoW component and use one of the following reproduction routes:

- **CoW-controlled deployment.** Reproduce on swap.cow.fi or cow.fi. Do so without disrupting the service, affecting other users, submitting unauthorized transactions, or publishing malicious content.

- **Reporter-built integration.** Reproduce using a minimal integration built from CoW's published documentation, and include its complete source in the report. The demonstrated behavior must arise from the in-scope CoW component rather than from a value, configuration or custom behavior chosen by the researcher. A reporter-built integration is a reproduction environment, not a separate asset or severity category, and does not itself increase or reduce severity.

- **Controlled local reproduction.** For source, service-worker, build, release or publishing defects that cannot be tested safely through a CoW-controlled deployment or naturally through a reporter-built integration, reproduce from an eligible release in an isolated environment and provide the steps and evidence needed for CoW to verify the affected production path. Claimed impact must not depend only on mock, test or example code.

## Safe testing

A controlled proof of capability may be used for a release, publishing, service-worker or denial-of-service finding where demonstrating the impact against production would be unsafe or prohibited. The report must establish the affected production path and the listed impact without publishing malicious code, replacing a production bundle or disrupting the service.

Testing must not be performed against a third party's production deployment without that party's permission.

Researchers may use [dev.swap.cow.fi](https://dev.swap.cow.fi) as a safer environment for demonstrating a vulnerability, provided the report establishes that the same issue affects an in-scope production version.

Destructive testing against CoW production, including actual package publication, bundle replacement or denial of service, is prohibited.

## Disclosure and remediation

Once the CoW team bug bounty panel accepts an eligible bug, the team shall have the right to decide on and implement the mitigation and publishing steps of the eligible bug on their own terms and timeline.

By submitting a bug report on this platform, the submitter agrees to extend our timeline for resolving the issue (and to not disclose the report elsewhere or to any other party, keeping the information confidential and

## Program overview

The CoW team, for and on behalf of and at the expense of [CoW DAO](https://forum.cow.fi/), is running a bug bounty program focused on CoW Protocol, a fully permissionless protocol that leverages batch auctions to provide MEV protection, plus integrates with on-chain liquidity sources to offer traders the best prices.

For background information, please refer to [the docs](https://docs.cow.fi/).

The bug bounty program is focused around the smart contracts and web components and is mostly concerned with the loss of user funds. It is a seamless continuation of the bug bounty program formerly run by Gnosis.

