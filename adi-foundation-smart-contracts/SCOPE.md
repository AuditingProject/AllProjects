# ADI Foundation Smart Contracts — HackenProof scope

- Program: https://hackenproof.com/programs/adi-foundation-smart-contracts
- Platform: **HackenProof** (company: ADI Foundation)
- Status: **Active** · no end date
- Max bounty: **$10,000**
- KYC required · **PoC required** · min reputation 150 · submission fee 7 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $10,000 |
| High | $5,000 |
| Medium | $2,000 |
| Low | $200 |

## Assets in scope (3)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/ADI-Foundation-Labs/ADI-Stack-Contracts/tree/9ddc915c85d1f44c79b5d55e160d384138ed5105/l1-contracts | — |
| 2 | Critical | Smart Contract | https://github.com/ADI-Foundation-Labs/ADI-Stack-Contracts/tree/9ddc915c85d1f44c79b5d55e160d384138ed5105/l2-contracts | — |
| 3 | High | Smart Contract | https://github.com/ADI-Foundation-Labs/ADI-Stack-Contracts/tree/9ddc915c85d1f44c79b5d55e160d384138ed5105/da-contracts | — |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `ADI-Stack-Contracts/` | https://github.com/ADI-Foundation-Labs/ADI-Stack-Contracts | 9ddc915c85d1f44c79b5d55e160d384138ed5105 | 9ddc915c8 2025-12-11 chore: prepare contracts for v1.3.1 upgrade |

In-scope paths inside `ADI-Stack-Contracts/` (3):

- `l1-contracts`
- `l2-contracts`
- `da-contracts`

## Explicitly out of scope (1)

HackenProof marks these targets out of scope on the program page. They were **not** cloned as in-scope assets.

- https://github.com/ADI-Foundation-Labs/ADI-Stack-Contracts/tree/9ddc915c85d1f44c79b5d55e160d384138ed5105/system-contracts

## Focus area

## IN SCOPE VULNERABILITIES
 We are looking for evidence and reasons for incorrect behavior of the smart contract, which could cause unintended functionality. Examples include (but aren’t limited to):
* Theft or permanent loss of funds (direct or via fee/interest/accounting bugs)
* Unauthorized actions: bypassing access control
* Transaction ordering assumptions where state can be corrupted or assets stolen when calls are reordered by an adversary (not simple MEV PnL; must break invariants)
* Attacks on logic (behavior of the code is different from the business description)
* Upgradeable proxy misconfig (wrong impl slot, delegatecall hazards, unsafe UUPS/Beacon usage)
* Admin/key/guardian logic that allows unintended upgrades, self-destructs, or parameter changes that bypass intended checks
* Finalization or message processing without a valid verifier result due to miswiring (e.g., contract never calls the verifier, ignores boolean return, or binds wrong inputs around the call)
* Reentrancy
* Over and underflows
* Balance manipulation
* Contracts execution flows

**Use only the zkos-v0.30.2 tag (commit 9ddc915c85d1f44c79b5d55e160d384138ed5105) of the source code. This is the version currently deployed on ADI mainnet. Reports against any other version will be rejected.**

**Reports submitted before 05-10-2026 against zkos-v0.29.11 will still be reviewed against that version.**

**Deployed contracts: Ethereum mainnet (L1)**

If your PoC uses a fork, use only these L1 addresses. Do not take addresses from other sources.

| Contract | Address |
|---|---|
| Diamond Proxy (ADI chain, ID 36900) | `0x0583Ef2B6416cb7B287406438B940E4d99680C5B` |
| AdminFacet | `0xf9DD56364E3878056654C756cEBA692e577f8466` |
| MailboxFacet | `0xB0D33d94aD4048070f510eF0086F12d20595dd07` |
| GettersFacet | `0xFA565846c217Bc0bA0f75027D4eECccdD68a9708` |
| ExecutorFacet | `0x56767eB2E3197A1dfa030faaD4A65cF38E807c81` |
| L1Bridgehub | `0x7a38c18a229Ef8a0AE7104Ba272A46280f2d59Cb` |
| ZKsyncOSChainTypeManager | `0x08A1D2962fC29AA46e869A1E7561112cc1026EfA` |
| ValidatorTimelock | `0xE28cAc160C2a79dFA1fbd2169AC5fa5d061cf186` |
| ZKsyncOSDualVerifier | `0xccbdfd7f9A8e60d0C1e79fa620205d14121e7a39` |
| L1AssetRouter | `0xf25227EFAD2046d19777A4CA540b5C016Df7fe7A` |
| L1NativeTokenVault | `0x0A0F8912162Ff83A036883dbaDA42efF647a3065` |
| L1Nullifier | `0x5E5a72077dFB354Dfe61200b8f31fa491F9B9Cea` |
| L1ERC20Bridge (proxy) | `0x0057Ec1859EF305AA91bc6C3Efc53eb9BE9d1Aa1` |
| L1MessageRoot | `0x783e8Cb57366888F84d815fd53c3aeE99b2d6d37` |
| L1ChainAssetHandler | `0x924E0145347243a94C5C69e372Ca52c77f8e6CF1` |
| CTMDeploymentTracker | `0xaCD4a320f8a45abE71756B85DF519201d041EA5f` |
| L1GenesisUpgrade | `0x03174e2BE35A2Dd4380c93385181B1299949eE28` |
| BlobsL1DAValidatorZKsyncOS | `0xFB630a206E6D7485cB9DFa929859E1a977F0a211` |
| ServerNotifier | `0xd477bd7f14F9A26ebd51827EFB1d40a41f71b70C` |
| Base Token (ADI) | `0x8B1484d57abBE239bB280661377363b03c89CaEa` |
| Governance | `0x8253F33026c49A430963FE3991441c02175bda95` |
| ChainAdminOwnable (ADI chain) | `0x0a8a2473cc5731575a94f58F470851Bc6695B5B8` |
| ChainAdminOwnable (ecosystem) | `0x2d6E82F1f8fba89a67cc8d742B12633db4732Ca7` |
| ProxyAdmin #1 | `0x34f56Ba641aC59E897c6179ffeCAe9769fbfC90C` |
| ProxyAdmin #2 | `0x8140aBB60c9AfB5241D90af948Cfa7644b2D3217` |

## OUT OF SCOPE VULNERABILITIES
* Theoretical vulnerabilities without any proof or demonstration
* Compiler concerns: “old version” or “pragma not pinned” without an exploit
* Vulnerabilities in imported contracts
* Style, redundancy, best practices, gas/packing optimizations
* Best practice issues
* Front-run/MEV-only profit scenarios that do not break invariants or cause loss/theft
* Attacks that rely on social engineering
* zkProof verification algorithm (it's a part of another bounty program)
* Public Zero-day vulnerabilities
* Vendor-specific or third-party modules not maintained by ADI Foundation, including but not limited to Matter Labs libraries or any components delivered by external vendors that are:
    * Not part of the officially tagged source code repositories specified in scope
    * Not under ADI Foundation’s direct maintenance or review process
* Reason: The program only intends to cover code under direct project control; vulnerabilities in third-party vendor libraries should be raised with the respective vendor bounty program or governance. Example: the zkProof verification algorithm is out of scope because it belongs to another bounty program.
* Imported contracts or dependencies not written by the core ADI team unless:
    * They are modified and part of the deployed on-chain ABI targeted in scope
    * They are explicitly mentioned in our in-scope targets
* Vulnerabilities that are shared with vendor-maintained code (e.g., Matter Labs) and were already fixed in the vendor’s public codebase prior to report submission are out of scope, regardless of whether the fix had been deployed to ADI Foundation contracts at that time.

**Deprecated deployments (out of scope)**

These addresses are not part of the current deployment. Findings based only on them are out of scope.

| Contract | Address |
|---|---|
| ValidatorTimelock (old) | `0x406f329645E323B1bd1C020a219e30E6DAf4f899` |
| Governance (old) | `0x7200B8B09950b27bdF785c4c8E592c4AB141e5f7` |
| DualVerifier (old) | `0x28E31e2B74bc38c6cd58CF282807fCBa8C00C529` |
| Rollup DA Validator | `0x45D594304087A359dC60a502f5c35d62DfeCDDA7` |
| Avail DA Validator | `0x2A7343629Ba7125BC7822aA132fee77bC0516Db4` |
| Validium DA Validator | `0x3dBBd9f8e558E36398C9B366435121642b5d7aae` |
| Default Upgrade | `0x5400558dC0F72Da34260C946147dEB8711Cde491` |
| Bytecode Supplier | `0x6E369e616dd5A5Cb0Cd410f541C784033de89042` |

## Program rules

## General Conduct
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
* Testing on mainnet or public testnet deployments is strictly prohibited. All testing must be done on a local environment or a local fork.
* Do not test against third-party contracts, oracles, bridges, or infrastructure that are not listed in scope.
    - Reports that test an Ethereum mainnet (L1) deployment other than those listed under "Deployed contracts", including the deprecated addresses, will be closed as Out of scope.


## AI-Generated and Automated Reports
* AI-generated reports will be ignored straight away. Only manually written reports are accepted.
* This applies to any report where the description, root-cause analysis, impact analysis, or PoC was produced by AI tools (e.g. ChatGPT, Claude, Gemini, Copilot), AI auditing agents, or automated scanners and static analysers (e.g. Slither, Mythril, Aderyn) and submitted without the researcher independently verifying and reproducing it.
* Raw or lightly edited output from any automated tool is not accepted as a report.
* You are fully responsible for every statement in your report. You must personally understand the issue, reproduce it yourself, and write the report in your own words.
* Reports showing signs of AI generation will be closed without review. Signs include: references to functions, files, variables, or line numbers that do not exist in the in-scope code; generic impact statements not tied to our code; attack paths that cannot be executed; PoCs that do not compile or run; and boilerplate recommendations.
* The decision of the program team on whether a report is AI-generated is final.
* Researchers who repeatedly submit AI-generated, automated, or low-quality reports will be removed from the program and reported to HackenProof for further action on their account.

## Proof of Concept (PoC) Requirements
* Reports without a Proof of Concept (PoC) and a video will not be accepted.
* The PoC must be working code. Written explanations, pseudocode, diagrams, or theoretical scenarios are not accepted as a PoC.
* The PoC must be runnable end-to-end (e.g. a Foundry or Hardhat test for smart contracts, or a Rust test for prover/verifier issues) against the exact in-scope version listed in this program.
* The PoC must include: exact commands to run it, tool and dependency versions, fork block number (if a fork is used), expected result vs actual result, and output proving the impact (e.g. balances before and after, broken invariant, accepted invalid proof).
* The PoC must demonstrate real impact on an in-scope asset. PoCs that modify in-scope code, mock core components, or rely on privileged roles acting maliciously are not accepted, unless the vulnerability itself is gaining that privilege.
* If the program team cannot reproduce the issue using the PoC provided, the report will be closed.

## Video Requirements
* Every report must include a video recording of the PoC being executed from start to finish.
* The video must clearly show: the in-scope repository and commit/tag being tested, the command(s) being run, the full terminal output, and the final result proving the impact.
* The video must be a continuous, unedited screen recording. Screenshots, slideshows, edited or AI-generated videos are not accepted.
* The video must be attached to the report on HackenProof or shared through a private link accessible only to the program team. Uploading the video publicly counts as public disclosure and will lead to disqualification.
* A video does not replace the PoC. Both are required.

## Report Quality
* Submit one vulnerability per report. Related issues with the same root cause must be submitted in a single report.
* Each report must include: a clear title, affected contract/file/function with line numbers at the in-scope commit, root cause, step-by-step attack scenario, impact, severity justification, PoC, video, and recommended fix.
* Placeholder reports (vague title, very few details, no reproducible steps) will be closed without review.
* Reports against any code version other than the in-scope version will be rejected.

## Violations
* Breaking any of these rules may result in the report being closed without reward, forfeiture of any bounty, removal from the program, and referral to HackenProof for account suspension.

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

The ADI Foundation is an Abu Dhabi-based organization building sovereign-grade blockchain infrastructure to help modernize public systems across emerging markets. Founded by Sirius International, the digital arm of IHC, ADI is focused on powering national-scale services that work at the policy level.
The program covers all smart-contract logic outside the proof verification procedures themselves (bridging, finalization, governance, upgrades, message passing, accounting, etc.).

## SLA

```
{
 "first_response": 3,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 3
}
```

