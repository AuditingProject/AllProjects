# hermetica — Immunefi scope

- Program: https://immunefi.com/bug-bounty/hermetica/scope/
- Max bounty: **$100,000**
- KYC required: **no**
- Launched 2026-02-12, program updated 2026-07-11
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $20,000 – $100,000 (10% of funds at risk) |
| Smart contract | High | $1,000 – $20,000 |

## Assets in scope (13)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://explorer.hiro.so/txid/0x834662426960938e9d483ebfb7ecae90a6c5c0d4327e2cb4011700387d2167bf?chain=mainnet | HQ |
| 2 | Smart contract | https://explorer.hiro.so/txid/0x0f1ad52bafc2099b9b75ecff15933546dc09a4c60ed93f902998c7eb570563e9?chain=mainnet | Blacklist |
| 3 | Smart contract | https://explorer.hiro.so/txid/0x99e0e204634af511074897cae5d7b79602a808b1b4569a7f900fedb0ec2af245?chain=mainnet | Token |
| 4 | Smart contract | https://explorer.hiro.so/txid/0x49512dd2cf400a9b1ace64687d386b3d3d1ad40444de83f6dda1c29cebe01919?chain=mainnet | State |
| 5 | Smart contract | https://explorer.hiro.so/txid/0xdd73e479841dbedba4fa6eee29be9dcef5d64e6093b905016ec1ba74dabba2ba?chain=mainnet | Reserve Fund |
| 6 | Smart contract | https://explorer.hiro.so/txid/0xb8ce9c1fb139bc4338ae3b6d6c5fa4525fafb87ed9f9ce515b213a0cc0022449?chain=mainnet | Reserve |
| 7 | Smart contract | https://explorer.hiro.so/txid/0x8a6cfafb63b1fb9549d42789cf2b9a160bcf5859257f4c578451d77dafd0a2e0?chain=mainnet | Controller |
| 8 | Smart contract | https://explorer.hiro.so/txid/0x87f8c3bc9625579280050678cdddf46b00f678009be32aab76e5d9beca4e7056?chain=mainnet | Fee Collector |
| 9 | Smart contract | https://explorer.hiro.so/txid/0xc1c3face1d66819ce2cd6f28876b07577c252812c4c43b2145ac89af61819117?chain=mainnet | Hermetica Interface |
| 10 | Smart contract | https://explorer.hiro.so/txid/0x570b90c20a3b63e431a387a50ee3c9f6a3a709527731a8cbde75b731e9c7369a?chain=mainnet | Zest Interface |
| 11 | Smart contract | https://explorer.hiro.so/txid/0x9e2cd7bdd7cc29cf30750835155060a42ebd26943c1f35d2a83b8e6e81f90a35?chain=mainnet | Trading |
| 12 | Smart contract | https://hermetica.fi/ | Primacy of Impact |
| 13 | Smart contract | https://explorer.hiro.so/txid/0xb8e567a6f918e041e1fa5a9ca317fdf3048d14f57b0fefdd836cba9da14d3c6e?chain=mainnet | Vault |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `hermetica-contracts/` | https://github.com/hermetica-fi/hermetica-contracts | master | 5e13e43 2026-04-02 feat: add redeem-peg-out-many to hbtc vault (#186) | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **12 of 13** in-scope addresses have full source on disk.
- 1 is on a chain this collection cannot fetch source for.

Sources: hiro-stacks-tx (12).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x834662426960` | HQ | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.hq-v1` | `deployed-source/0x834662426960__HQ/` |
| `0x0f1ad52bafc2` | Blacklist | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.blacklist-v1` | `deployed-source/0x0f1ad52bafc2__Blacklist/` |
| `0x99e0e204634a` | Token | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.token-hbtc` | `deployed-source/0x99e0e204634a__Token/` |
| `0x49512dd2cf40` | State | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.state-hbtc-v1` | `deployed-source/0x49512dd2cf40__State/` |
| `0xdd73e479841d` | Reserve Fund | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.reserve-fund-hbtc-v1` | `deployed-source/0xdd73e479841d__Reserve_Fund/` |
| `0xb8ce9c1fb139` | Reserve | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.reserve-hbtc-v1` | `deployed-source/0xb8ce9c1fb139__Reserve/` |
| `0x8a6cfafb63b1` | Controller | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.controller-hbtc-v1` | `deployed-source/0x8a6cfafb63b1__Controller/` |
| `0x87f8c3bc9625` | Fee Collector | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.fee-collector-hbtc-v1` | `deployed-source/0x87f8c3bc9625__Fee_Collector/` |
| `0xc1c3face1d66` | Hermetica Interface | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.hermetica-interface-hbtc-v1` | `deployed-source/0xc1c3face1d66__Hermetica_Interface/` |
| `0x570b90c20a3b` | Zest Interface | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.zest-interface-hbtc-v1` | `deployed-source/0x570b90c20a3b__Zest_Interface/` |
| `0x9e2cd7bdd7cc` | Trading | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.trading-hbtc-v1` | `deployed-source/0x9e2cd7bdd7cc__Trading/` |
| `0xb8e567a6f918` | Vault | `SP1S1HSFH0SQQGWKB69EYFNY0B1MHRMGXR3J1FH4D.vault-hbtc-v1-1` | `deployed-source/0xb8e567a6f918__Vault/` |

**No source retrieved** (by chain): hermetica.fi (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://explorer.hiro.so/txid/0x834662426960938e9d483ebfb7ecae90a6c5c0d4327e2cb4011700387d2167bf?chain=mainnet — HQ
- [Smart contract] https://explorer.hiro.so/txid/0x0f1ad52bafc2099b9b75ecff15933546dc09a4c60ed93f902998c7eb570563e9?chain=mainnet — Blacklist
- [Smart contract] https://explorer.hiro.so/txid/0x99e0e204634af511074897cae5d7b79602a808b1b4569a7f900fedb0ec2af245?chain=mainnet — Token
- [Smart contract] https://explorer.hiro.so/txid/0x49512dd2cf400a9b1ace64687d386b3d3d1ad40444de83f6dda1c29cebe01919?chain=mainnet — State
- [Smart contract] https://explorer.hiro.so/txid/0xdd73e479841dbedba4fa6eee29be9dcef5d64e6093b905016ec1ba74dabba2ba?chain=mainnet — Reserve Fund
- [Smart contract] https://explorer.hiro.so/txid/0xb8ce9c1fb139bc4338ae3b6d6c5fa4525fafb87ed9f9ce515b213a0cc0022449?chain=mainnet — Reserve
- [Smart contract] https://explorer.hiro.so/txid/0x8a6cfafb63b1fb9549d42789cf2b9a160bcf5859257f4c578451d77dafd0a2e0?chain=mainnet — Controller
- [Smart contract] https://explorer.hiro.so/txid/0x87f8c3bc9625579280050678cdddf46b00f678009be32aab76e5d9beca4e7056?chain=mainnet — Fee Collector
- [Smart contract] https://explorer.hiro.so/txid/0xc1c3face1d66819ce2cd6f28876b07577c252812c4c43b2145ac89af61819117?chain=mainnet — Hermetica Interface
- [Smart contract] https://explorer.hiro.so/txid/0x570b90c20a3b63e431a387a50ee3c9f6a3a709527731a8cbde75b731e9c7369a?chain=mainnet — Zest Interface
- [Smart contract] https://explorer.hiro.so/txid/0x9e2cd7bdd7cc29cf30750835155060a42ebd26943c1f35d2a83b8e6e81f90a35?chain=mainnet — Trading
- [Smart contract] https://hermetica.fi/ — Primacy of Impact
- [Smart contract] https://explorer.hiro.so/txid/0xb8e567a6f918e041e1fa5a9ca317fdf3048d14f57b0fefdd836cba9da14d3c6e?chain=mainnet — Vault

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds
- Protocol insolvency

**Smart contract — High**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds

## Rewards / payout terms

__Reward Calculation for Critical Level Reports__

For critical smart contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 100 000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 20 000 is to be rewarded in order to incentivize security researchers against withholding a critical bug report.

The rest of the severity levels are paid out according to the Impact in Scope table.  


__Repeatable Attack Limitations__

- If the smart contract where the vulnerability exists can be upgraded or paused, only the initial attack will be considered for a reward
- The amount of funds at risk will be calculated with the impact of the first attack being at **100%** and then a reduction of **25%** from the amount of the first attack for every **[300 blocks]** the attack needs for subsequent attacks from the first attack, rounded down.


__Reward Calculation for High Level Reports__

High vulnerabilities concerning theft/permanent freezing of unclaimed yield/royalties are rewarded within a range of **USD 1 000 to USD 20 000** depending on the funds at risk, capped at the maximum high reward.  

In the event of temporary freezing, the reward doubles from the full frozen value for every additional 24h that the funds are temporarily frozen, up until a max cap of the high reward. This is because as the duration of the freezing lengthens, the potential for greater damage and subsequent reputational harm intensifies. Thus, by increasing the reward proportionally with the frozen duration, the project ensures stronger incentives for bug disclosure of this nature.


__Reward Payment Terms__

Payouts are handled by the Hermetica team directly and are denominated in USD. However, payments are done in USDC on Ethereum.

The calculation of the net amount rewarded is based on the average price between CoinMarketCap.com and CoinGecko.com at the time the bug report was submitted. No adjustments are made based on liquidity availability.

## Program overview

Hermetica brings decades of experience from leading crypto and financial institutions, including Kraken, to build Bitcoin finance.

Hermetica believes a decentralized, Bitcoin-powered financial system is a foundational pillar of a prosperous and free society. Hermetica builds open, durable financial infrastructure designed to operate globally and at scale, empowering individuals with resilient financial tools in their pursuit of financial freedom.

There’s one product in scope for the program: hBTC, a Bitcoin yield vault written in Clarity with ERC-4626–style share mint/redeem, daily NAV updates, and strategy execution via external protocol integrations.

For more information about Hermetica, please visit [https://docs.hermetica.fi/](https://docs.hermetica.fi/)

Hermetica provides rewards in USDC on Ethereum, denominated in USD. For more details about the payment process, please view the Rewards by Threat Level section further below.

__Responsible Publication__

Hermetica adheres to  Category 3: Approval Required . This Policy determines what information researchers are allowed to make public from their submitted bug reports. For more information about the category selected, please refer to our Responsible Publication page.

__Primacy of Impact vs Primacy of Rules__

Hermetica adheres to the Primacy of Impact for the following impacts:

- Smart Contract  —  Critical
- Smart Contract  —  High

Primacy of Impact means that the impact is prioritized rather than a specific asset. This encourages security researchers to report on all bugs with an in-scope impact, even if the affected assets are not in scope. 

For more information, please see [Best Practices: Primacy of Impact ](https://immunefisupport.zendesk.com/hc/en-us/articles/12340245635089-Best-Practices-Primacy-of-Impact)

When submitting a report on Immunefi’s dashboard, the security researcher should select the Primacy of Impact asset placeholder. If the team behind this project has multiple programs, those other programs are not covered under Primacy of Impact for this program. Instead, check if those other projects have a bug bounty program on Immunefi.

If the project has any testnet and/or mock files, those will not be covered under Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms and conditions set within this program.


__Proof of Concept (PoC) Requirements__

A PoC, demonstrating the bug's impact, is required for this program and has to comply with the I[mmunefi PoC Guidelines and Rules](https://immunefisupport.zendesk.com/hc/en-us/articles/9946217628561-Proof-of-Concept-PoC-Guidelines-and-Rules).

__Previous Audits__

Hermetica’s completed audit reports can be found at [https://docs.hermetica.fi/hbtc/audits](https://docs.hermetica.fi/hbtc/audits). Any unfixed vulnerabilities mentioned in these reports are not eligible for a reward.63:T814,__Re

