# mETH — Immunefi scope

- Program: https://immunefi.com/bug-bounty/mETH/scope/
- Max bounty: **$500,000**
- KYC required: **no**
- Launched 2023-11-28, program updated 2025-03-18
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $100,000 – $500,000 (10% of funds at risk) |
| Smart contract | High | $20,000 – $100,000 |
| Smart contract | Medium | $5,000 |

## Assets in scope (10)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0xd5F7838F5C461fefF7FE49ea5ebaF7728bB0ADfa | mETH Token L1 |
| 2 | Smart contract | https://etherscan.io/address/0xe3cBd06D7dadB3F4e6557bAb7EdD924CD1489E8f | Staking |
| 3 | Smart contract | https://etherscan.io/address/0x38fDF7b489316e03eD8754ad339cb5c4483FDcf9 | UnstakeRequestsManager |
| 4 | Smart contract | https://etherscan.io/address/0x8735049F496727f824Cc0f2B174d826f5c408192 | Oracle |
| 5 | Smart contract | https://etherscan.io/address/0x92e56d2146D54d5AEcB25CA36c89D027a6ea0D90 | OracleQuorumManager |
| 6 | Smart contract | https://etherscan.io/address/0x1766be66fBb0a1883d41B4cfB0a533c5249D3b82 | ReturnsAggregator |
| 7 | Smart contract | https://etherscan.io/address/0xD4e11C28E04c0c2bf370b7a9989498B7eA02493f | ConsensusLayerReceiver |
| 8 | Smart contract | https://etherscan.io/address/0xD6E4aA932147A3FE5311dA1b67D9e73da06F9cEf | ExecutionLayerReceiver |
| 9 | Smart contract | https://etherscan.io/address/0x29Ab878aEd032e2e2c86FF4A9a9B05e3276cf1f8 | Pauser |
| 10 | Smart contract | https://explorer.mantle.xyz/address/0xcDA86A272531e8640cD7F1a92c01839911B90bb0 | mETH Token L2 |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `contracts` | https://github.com/mantle-lsp/contracts | main (default) | `bbc4e8bf7d3e3b4ca0c5be07aba409ac66611c76` | resolved from program-data.json link to github.com/mantle-lsp |
| `L2-token-contract` | https://github.com/mantle-lsp/L2-token-contract | main (default) | `628985e7f29375cb7f5dea8652c4dd21b9cba07c` | resolved from github.com/mantle-lsp org repo listing |

### How these repos were matched

- `contracts` — evidence: program-data.json links the `github.com/mantle-lsp` org; this is its "Mantle LSP Smart Contracts" repo. Verification: `src/Staking.sol`, `src/UnstakeRequestsManager.sol`, `src/Oracle.sol`, `src/OracleQuorumManager.sol`, `src/ReturnsAggregator.sol`, `src/ReturnsReceiver.sol`, `src/Pauser.sol`, `src/METH.sol` match assets 1-9 (ReturnsReceiver is the implementation behind both the ConsensusLayerReceiver and ExecutionLayerReceiver instances).
- `L2-token-contract` — evidence: repo in the same project-published `mantle-lsp` org. Verification: `src/METHL2.sol` (plus `L1mETHAdapter.sol` / `L2mETHAdapter.sol`) matches asset 10, "mETH Token L2" on Mantle.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **9 of 10** in-scope addresses have full source on disk.
- 1 has no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

Sources: blockscout:eth.blockscout.com (9).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xd5F7838F5C46` | mETH Token L1 | `TransparentUpgradeableProxy` | `deployed-source/0xd5F7838F5C46__mETH_Token_L1/` |
| `0xe3cBd06D7dad` | Staking | `TransparentUpgradeableProxy` | `deployed-source/0xe3cBd06D7dad__Staking/` |
| `0x38fDF7b48931` | UnstakeRequestsManager | `TransparentUpgradeableProxy` | `deployed-source/0x38fDF7b48931__UnstakeRequestsManager/` |
| `0x8735049F4967` | Oracle | `TransparentUpgradeableProxy` | `deployed-source/0x8735049F4967__Oracle/` |
| `0x92e56d2146D5` | OracleQuorumManager | `TransparentUpgradeableProxy` | `deployed-source/0x92e56d2146D5__OracleQuorumManager/` |
| `0x1766be66fBb0` | ReturnsAggregator | `TransparentUpgradeableProxy` | `deployed-source/0x1766be66fBb0__ReturnsAggregator/` |
| `0xD4e11C28E04c` | ConsensusLayerReceiver | `TransparentUpgradeableProxy` | `deployed-source/0xD4e11C28E04c__ConsensusLayerReceiver/` |
| `0xD6E4aA932147` | ExecutionLayerReceiver | `TransparentUpgradeableProxy` | `deployed-source/0xD6E4aA932147__ExecutionLayerReceiver/` |
| `0x29Ab878aEd03` | Pauser | `TransparentUpgradeableProxy` | `deployed-source/0x29Ab878aEd03__Pauser/` |

**No source retrieved** (by chain): Mantle (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

**Coverage update:** all 10 assets are now covered — assets 1-9 by `contracts`, asset 10 (mETH Token L2) by `L2-token-contract`. None remain unidentified.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0xd5F7838F5C461fefF7FE49ea5ebaF7728bB0ADfa — mETH Token L1
- [Smart contract] https://etherscan.io/address/0xe3cBd06D7dadB3F4e6557bAb7EdD924CD1489E8f — Staking
- [Smart contract] https://etherscan.io/address/0x38fDF7b489316e03eD8754ad339cb5c4483FDcf9 — UnstakeRequestsManager
- [Smart contract] https://etherscan.io/address/0x8735049F496727f824Cc0f2B174d826f5c408192 — Oracle
- [Smart contract] https://etherscan.io/address/0x92e56d2146D54d5AEcB25CA36c89D027a6ea0D90 — OracleQuorumManager
- [Smart contract] https://etherscan.io/address/0x1766be66fBb0a1883d41B4cfB0a533c5249D3b82 — ReturnsAggregator
- [Smart contract] https://etherscan.io/address/0xD4e11C28E04c0c2bf370b7a9989498B7eA02493f — ConsensusLayerReceiver
- [Smart contract] https://etherscan.io/address/0xD6E4aA932147A3FE5311dA1b67D9e73da06F9cEf — ExecutionLayerReceiver
- [Smart contract] https://etherscan.io/address/0x29Ab878aEd032e2e2c86FF4A9a9B05e3276cf1f8 — Pauser
- [Smart contract] https://explorer.mantle.xyz/address/0xcDA86A272531e8640cD7F1a92c01839911B90bb0 — mETH Token L2

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of staked funds

**Smart contract — High**
- Protocol insolvency
- Theft of unclaimed yield or tokenized staking yield
- Permanent freezing of unclaimed or tokenized staking yield
- Acquiring owner/admin rights without contract’s owner/admin action

**Smart contract — Medium**
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Unbounded gas consumption
- Susceptibility to frontrunning

## Out of scope (from the program page)

- Any issues identified in Published Audits [https://docs.mantle.xyz/meth/security/audits](https://docs.mantle.xyz/meth/security/audits)
- Impact of future improper configuration of contracts that are not deployed
- Impacts from an assumption of a malicious majority of oracles
- Gas optimization

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.3. ](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/)

__Reward Calculation for Critical Level Reports__

For critical smart contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 500 000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 100 000 is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

__Repeatable Attack Limitations__

If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attacks within the first hour will be considered for a reward. This is because the project can mitigate the risk of further exploitation by upgrading or pausing the component where the vulnerability exists. The reward amount will depend on the severity of the impact and the funds at risk. 

__Reward Calculation for High Level Reports__

- High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are considered at the full amount of funds at risk, capped at the maximum high reward. This is to incentivize security researchers to uncover and responsibly disclose vulnerabilities that may have not have significant monetary value today, but could still be damaging to the project if it goes unaddressed.   
- In the event of temporary freezing, the reward increases at a multiplier of two from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. This is because as the duration of the freezing lenghents, the potential for greater damage and subsequent reputational harm intensifies. Thus, by increasing the reward proportionally with the frozen duration, the project ensures stronger incentives for bug disclosure of this nature.    

__Reward Payment Terms__

Payouts are handled by the mETH Protocol team directly and are denominated in USD. However, payments are done in USDC

## Program overview

mETH Protocol is a permissionless, non-custodial ETH liquid staking protocol deployed on Ethereum L1 and[ governed by mETH Protocol. ](https://docs.mantle.xyz/governance/introduction/overview)Mantle Staked Ether (mETH) serves as the value-accumulating receipt token.

mETH Protocol Bug Bounty Program is a program designed to incentivize security researchers to identify and report vulnerabilities in the mETH Protocol. The program is open to all security researchers, regardless of experience or affiliation.

For more information about mETH Protocol, please visit [https://docs.mantle.xyz/meth/introduction/overview](https://docs.mantle.xyz/meth/introduction/overview)

mETH Protocol provides rewards in USDC, denominated in USD. For more details about the payment process, please view the Rewards by Threat Level section further below. 


__Primacy of Impact vs Primacy of Rules__

mETH Protocol adheres to the Primacy of Rules, which means that the whole bug bounty program is run strictly under the terms stated in this page.

__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the [Immunefi PoC Guidelines and Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules)

__Known Issue Assurance__

mETH Protocol commits to providing Known Issue Assurance to bug submissions through their program. This means that mETH Protocol will either disclose known issues publicly, or at the very least, privately via a self-reported bug submission. 

In a potential scenario of a mediation, this allows for a more objective and streamlined process, in order to prove that an issue is known. Otherwise, assuming the bug report is valid, it would result in the report being considered as in-scope, and due a reward.

Known issues:
- [https://github.com/lidofinance/lido-dao/issues/803](https://github.com/lidofinance/lido-dao/issues/803)

__Previous Audits__

mETH Protocol’s completed audit reports can be found at [https://docs.mantle.xyz/meth/security/audits.](https://docs.mantle.xyz/meth/security/audits) Any unfixed vulnerabilities  mentioned in these reports are not eligible for a reward.

__Immunefi Standard Badge__

By adhering to Immunefi’s best practice recommendations, mETH Protocol has satisfied the requirements for the [Immunefi Standard Badge.](https://immunefisupport.zendesk.com/hc/en-us/articles/15006865432209)63:T

