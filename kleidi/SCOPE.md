# kleidi — Immunefi scope

- Program: https://immunefi.com/bug-bounty/kleidi/scope/
- Max bounty: **$50,000**
- KYC required: **yes**
- Launched 2026-02-13, program updated 2026-02-19
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $5,000 – $50,000 (10% of funds at risk) |

## Assets in scope (19)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0xE138136bFF8c6A9337805DE19177E3b29fef2783 | InstanceDeployer |
| 2 | Smart contract | https://etherscan.io/address/0xCe90BA68BbcdCCe9aed1fCDDcb114d1DCdBc68C9 | TimelockFactory |
| 3 | Smart contract | https://etherscan.io/address/0x56b6d03b995022A612aF6a212C74902f233F52Cc | RecoverySpellFactory |
| 4 | Smart contract | https://etherscan.io/address/0xFE49DD6d0CD41C4EC8F151C79f2d4019f5C5AD18 | Guard |
| 5 | Smart contract | https://etherscan.io/address/0xd1db2c4A9d2BEBd56d42E59F2d90F4136164faD6 | AddressCalculation |
| 6 | Smart contract | https://etherscan.io/address/0x146dfd96Da039FDE3B58D5964feF8E8357df2028 | BytesHelper |
| 7 | Smart contract | https://basescan.org/address/0xE138136bFF8c6A9337805DE19177E3b29fef2783 | InstanceDeployer |
| 8 | Smart contract | https://basescan.org/address/0xCe90BA68BbcdCCe9aed1fCDDcb114d1DCdBc68C9 | TimelockFactory |
| 9 | Smart contract | https://basescan.org/address/0x56b6d03b995022A612aF6a212C74902f233F52Cc | RecoverySpellFactory |
| 10 | Smart contract | https://basescan.org/address/0xFE49DD6d0CD41C4EC8F151C79f2d4019f5C5AD18 | Guard |
| 11 | Smart contract | https://basescan.org/address/0xd1db2c4A9d2BEBd56d42E59F2d90F4136164faD6 | AddressCalculation |
| 12 | Smart contract | https://basescan.org/address/0x146dfd96Da039FDE3B58D5964feF8E8357df2028 | BytesHelper |
| 13 | Smart contract | https://optimistic.etherscan.io/address/0xE138136bFF8c6A9337805DE19177E3b29fef2783 | InstanceDeployer |
| 14 | Smart contract | https://optimistic.etherscan.io/address/0xCe90BA68BbcdCCe9aed1fCDDcb114d1DCdBc68C9 | TimelockFactory |
| 15 | Smart contract | https://optimistic.etherscan.io/address/0x56b6d03b995022A612aF6a212C74902f233F52Cc | RecoverySpellFactory |
| 16 | Smart contract | https://optimistic.etherscan.io/address/0xFE49DD6d0CD41C4EC8F151C79f2d4019f5C5AD18 | Guard |
| 17 | Smart contract | https://optimistic.etherscan.io/address/0xd1db2c4A9d2BEBd56d42E59F2d90F4136164faD6 | AddressCalculation |
| 18 | Smart contract | https://optimistic.etherscan.io/address/0x146dfd96Da039FDE3B58D5964feF8E8357df2028 | BytesHelper |
| 19 | Smart contract | https://immunefi.com/bug-bounty/kleidi/information/ | Primacy of Impact |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `kleidi` | https://github.com/solidity-labs-io/kleidi | main (default) | `1290079776ed84e207196a3683b99cc8501ca1dd` | resolved from program-data.json links (Known issues / Previous Audits point at github.com/solidity-labs-io/kleidi) |

### How these repos were matched

- `kleidi` — evidence: the program's own "Public Disclosure of Known Issues" and "Previous Audits" sections link to `github.com/solidity-labs-io/kleidi/blob/main/docs/KNOWN_ISSUES.md` and `/tree/main/audit`. Verification: `src/InstanceDeployer.sol`, `src/TimelockFactory.sol`, `src/RecoverySpellFactory.sol`, `src/Guard.sol`, `src/BytesHelper.sol` and `src/views/AddressCalculation.sol` match in-scope assets 1-6 (and their Base / Optimism CREATE2 twins, assets 7-18) by contract name.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **18 of 18** in-scope addresses have full source on disk.

Sources: blockscout:eth.blockscout.com (16), blockscout:explorer.optimism.io (2).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xE138136bFF8c` | InstanceDeployer | `InstanceDeployer` | `deployed-source/0xE138136bFF8c__InstanceDeployer/` |
| `0xCe90BA68Bbcd` | TimelockFactory | `TimelockFactory` | `deployed-source/0xCe90BA68Bbcd__TimelockFactory/` |
| `0x56b6d03b9950` | RecoverySpellFactory | `RecoverySpellFactory` | `deployed-source/0x56b6d03b9950__RecoverySpellFactory/` |
| `0xFE49DD6d0CD4` | Guard | `Guard` | `deployed-source/0xFE49DD6d0CD4__Guard/` |
| `0xd1db2c4A9d2B` | AddressCalculation | `AddressCalculation` | `deployed-source/0xd1db2c4A9d2B__AddressCalculation/` |
| `0x146dfd96Da03` | BytesHelper | `BytesHelper` | `deployed-source/0x146dfd96Da03__BytesHelper/` |
| `0xE138136bFF8c` | InstanceDeployer | `InstanceDeployer` | `deployed-source/0xE138136bFF8c__InstanceDeployer/` |
| `0xCe90BA68Bbcd` | TimelockFactory | `TimelockFactory` | `deployed-source/0xCe90BA68Bbcd__TimelockFactory/` |
| `0x56b6d03b9950` | RecoverySpellFactory | `RecoverySpellFactory` | `deployed-source/0x56b6d03b9950__RecoverySpellFactory/` |
| `0xFE49DD6d0CD4` | Guard | `Guard` | `deployed-source/0xFE49DD6d0CD4__Guard/` |
| `0xd1db2c4A9d2B` | AddressCalculation | `AddressCalculation` | `deployed-source/0xd1db2c4A9d2B__AddressCalculation/` |
| `0x146dfd96Da03` | BytesHelper | `BytesHelper` | `deployed-source/0x146dfd96Da03__BytesHelper/` |
| `0xE138136bFF8c` | InstanceDeployer | `InstanceDeployer` | `deployed-source/0xE138136bFF8c__InstanceDeployer/` |
| `0xCe90BA68Bbcd` | TimelockFactory | `TimelockFactory` | `deployed-source/0xCe90BA68Bbcd__TimelockFactory/` |
| `0x56b6d03b9950` | RecoverySpellFactory | `RecoverySpellFactory` | `deployed-source/0x56b6d03b9950__RecoverySpellFactory/` |
| `0xFE49DD6d0CD4` | Guard | `Guard` | `deployed-source/0xFE49DD6d0CD4__Guard/` |
| `0xd1db2c4A9d2B` | AddressCalculation | `AddressCalculation` | `deployed-source/0xd1db2c4A9d2B__AddressCalculation/` |
| `0x146dfd96Da03` | BytesHelper | `BytesHelper` | `deployed-source/0x146dfd96Da03__BytesHelper/` |

## In-scope assets with no repo to clone

**Coverage update:** all 18 deployed-contract assets (InstanceDeployer, TimelockFactory, RecoverySpellFactory, Guard, AddressCalculation, BytesHelper across Ethereum / Base / Optimism) are now covered by the cloned `kleidi` repo. Only asset 19 (the "Primacy of Impact" placeholder, not a contract) remains without a repo.

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0xE138136bFF8c6A9337805DE19177E3b29fef2783 — InstanceDeployer
- [Smart contract] https://etherscan.io/address/0xCe90BA68BbcdCCe9aed1fCDDcb114d1DCdBc68C9 — TimelockFactory
- [Smart contract] https://etherscan.io/address/0x56b6d03b995022A612aF6a212C74902f233F52Cc — RecoverySpellFactory
- [Smart contract] https://etherscan.io/address/0xFE49DD6d0CD41C4EC8F151C79f2d4019f5C5AD18 — Guard
- [Smart contract] https://etherscan.io/address/0xd1db2c4A9d2BEBd56d42E59F2d90F4136164faD6 — AddressCalculation
- [Smart contract] https://etherscan.io/address/0x146dfd96Da039FDE3B58D5964feF8E8357df2028 — BytesHelper
- [Smart contract] https://basescan.org/address/0xE138136bFF8c6A9337805DE19177E3b29fef2783 — InstanceDeployer
- [Smart contract] https://basescan.org/address/0xCe90BA68BbcdCCe9aed1fCDDcb114d1DCdBc68C9 — TimelockFactory
- [Smart contract] https://basescan.org/address/0x56b6d03b995022A612aF6a212C74902f233F52Cc — RecoverySpellFactory
- [Smart contract] https://basescan.org/address/0xFE49DD6d0CD41C4EC8F151C79f2d4019f5C5AD18 — Guard
- [Smart contract] https://basescan.org/address/0xd1db2c4A9d2BEBd56d42E59F2d90F4136164faD6 — AddressCalculation
- [Smart contract] https://basescan.org/address/0x146dfd96Da039FDE3B58D5964feF8E8357df2028 — BytesHelper
- [Smart contract] https://optimistic.etherscan.io/address/0xE138136bFF8c6A9337805DE19177E3b29fef2783 — InstanceDeployer
- [Smart contract] https://optimistic.etherscan.io/address/0xCe90BA68BbcdCCe9aed1fCDDcb114d1DCdBc68C9 — TimelockFactory
- [Smart contract] https://optimistic.etherscan.io/address/0x56b6d03b995022A612aF6a212C74902f233F52Cc — RecoverySpellFactory
- [Smart contract] https://optimistic.etherscan.io/address/0xFE49DD6d0CD41C4EC8F151C79f2d4019f5C5AD18 — Guard
- [Smart contract] https://optimistic.etherscan.io/address/0xd1db2c4A9d2BEBd56d42E59F2d90F4136164faD6 — AddressCalculation
- [Smart contract] https://optimistic.etherscan.io/address/0x146dfd96Da039FDE3B58D5964feF8E8357df2028 — BytesHelper

## Known issues (2) — not eligible

- EDGECASES.md (https://github.com/solidity-labs-io/kleidi/blob/main/docs/EDGECASES.md)
- KNOWN_ISSUES.md (https://github.com/solidity-labs-io/kleidi/blob/main/docs/KNOWN_ISSUES.md)

## Impacts in scope

**Smart contract — Critical**
- Manipulation of governance voting result deviating from voted outcome and resulting in a direct change from intended effect of original results
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

## Notes on impacts

Deployed Instances. All Timelock, Safe, and RecoverySpell instances deployed through the in-scope factory contracts are also considered in-scope assets. However, vulnerabilities arising from user misconfiguration — such as whitelisting unsafe calldata, failing to configure a guardian, adding an unsafe module, using compromised signing keys, or setting incompatible delay parameters, or setting insecure parameters — are out of scope. See KNOWN_ISSUES.md and EDGECASES.md for documented configuration risks.

[https://github.com/solidity-labs-io/kleidi/blob/main/docs/KNOWN_ISSUES.md](https://github.com/solidity-labs-io/kleidi/blob/main/docs/KNOWN_ISSUES.md)

[https://github.com/solidity-labs-io/kleidi/blob/main/docs/EDGECASES.md](https://github.com/solidity-labs-io/kleidi/blob/main/docs/EDGECASES.md)

## Rewards / payout terms

__Reward Calculation for Critical Level Reports__

For critical smart contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of **USD 50 000**.  The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of **USD 5 000** is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

__Repeatable Attack Limitations__

- If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward.
- The amount of funds at risk will be calculated with the impact of the first attack being at **100%** and then a reduction of **25%** from the amount of the first attack for every **[300 blocks]** the attack needs for subsequent attacks from the first attack, rounded down.

__Reward Payment Terms__

Payouts are handled by the Kleidi team directly and are denominated in USD. However, payments are done in USDC on Ethereum.

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

The Kleidi Wallet is a collection of smart contracts that can be used to create a full self-custody wallet system for DeFi users. The protocol enables users to access DeFi yields and protocols, pull funds in case of emergency, and recover funds in case of lost keys either through social recovery or predefined backups.

A Timelock module enforces time-delayed execution on all Safe transactions, a Gnosis Guard contract prevents the Safe from bypassing the Timelock, and Recovery Spells enable emergency owner rotation via EIP-712 signatures. Hot signers can execute pre-approved operations immediately through an on-chain calldata whitelisting engine. The system is deployed deterministically via CREATE2, so all contracts share the same addresses across Ethereum, Base, and Optimism. Kleidi Timelocks hold user-deposited ERC-20 tokens and native ETH.

For more information about Kleidi, please visit [https://kleidi.io/](https://kleidi.io/).

Kleidi provides rewards in USDC on Ethereum, denominated in USD. For more details about the payment process, please view the Rewards by Threat Level section further below.

__Responsible Publication__

Kleidi adheres to  Category 2: Notice Required . This Policy determines what information researchers are allowed to make public from their submitted bug reports. For more information about the category selected, please refer to our [Responsible Publication](https://immunefi.com/responsible-publication/) page.

__Primacy of Impact vs Primacy of Rules__

Kleidi adheres to the Primacy of Impact for the following impacts:
Smart Contract  —  Critical

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. 

For more information, please see [Best Practices: Primacy of Impact ](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact)

When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact for this program. Instead, check if those other projects have a bug bounty program on Immunefi.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms and conditions set within this program.

__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the [Immunefi PoC Guidelines and Rules.](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules)

__Public Disclosure of Known Issues__

Bug reports covering previously-discovered bugs (listed below) are not eligible for a reward within this program. This includes known issues that the project is aware of but has consciously decided not to “fix”, necessary code changes, or any implemented operational mitigating procedures that can lessen potential risk. 

[https://github.com/solidity-labs-io/kleidi/blob/main/docs/KNOWN_ISSUES.md](https://github.com/solidity-labs-io/kleidi/blob/main/docs/KNOWN_ISSUES.md)

[https://github.com/solidity-labs-io/kleidi/blob/main/docs/EDGECASES.md](https://github.com/solidity-labs-io/kleidi/blob/main/docs/EDGECASES.md)

__Previous Audits__

Kleidi’s completed audit reports can be found at [https://github.com/solidity-labs-io/kleidi/tree/main/audit](https://github.com/solidity-labs-io/kleidi/tree/main/audit). Any unfixed vulnerabilities mentioned in these reports are not eligible for a reward.63:T4e1,__

