# gamma — Immunefi scope

- Program: https://immunefi.com/bug-bounty/gamma/scope/
- Max bounty: **$50,000**
- KYC required: **no**
- Launched 2021-10-08, program updated 2024-12-07
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $50,000 |
| Smart contract | Medium | $5,000 |

## Assets in scope (3)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0x26805021988F1a45dC708B5FB75Fc75F21747D8c | xGamma |
| 2 | Smart contract | https://etherscan.io/address/0xa8076ae31e4b6c64d07b1ed27889924a962a70d3 | Hypervisor |
| 3 | Smart contract | https://etherscan.io/address/0x83de646a7125ac04950fea7e322481d4be66c71d | UniProxy |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `hypervisor/` | https://github.com/GammaStrategies/hypervisor | origin/stable | de902bf 2022-03-10 AE audit | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **3 of 3** in-scope addresses have full source on disk.

Sources: blockscout:eth.blockscout.com (3).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x26805021988F` | xGamma | `xGamma` | `deployed-source/0x26805021988F__xGamma/` |
| `0xa8076ae31e4b` | Hypervisor | `Hypervisor` | `deployed-source/0xa8076ae31e4b__Hypervisor/` |
| `0x83de646a7125` | UniProxy | `UniProxy` | `deployed-source/0x83de646a7125__UniProxy/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0x26805021988F1a45dC708B5FB75Fc75F21747D8c — xGamma
- [Smart contract] https://etherscan.io/address/0xa8076ae31e4b6c64d07b1ed27889924a962a70d3 — Hypervisor
- [Smart contract] https://etherscan.io/address/0x83de646a7125ac04950fea7e322481d4be66c71d — UniProxy

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds

**Smart contract — Medium**
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield
- Temporary freezing of funds
- Smart contract unable to operate due to lack of token funds

## Out of scope (from the program page)

- Attacks which require differing operational configuration than targets supplied
  - Best practice critiques

## Notes on assets

However, only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the Immunefi Vulnerability Severity Classification System. This is a simplified 5-level scale, with separate scales for websites/apps and smart contracts/blockchains, encompassing everything from consequence of exploitation to privilege required to likelihood of a successful exploit. 

All bug reports must come with a PoC in order to be considered for a reward. 

The following known issues would be considered as out-of-scope of this bounty program: 
  - For the UniProxy contract, its deposit configuration is its operational context. Attacks which depend on different configuration than provided for their example hypervisor contract are not to be considered
  - For the xGamma contract, an attack is possible wherein the attacker deposits just before and withdraws just after rebase. In our operational context, they do not send funds (rebase) to the xGamma contract outside of private rpc.

Payouts are handled by the __Gamma__ team directly and are denominated in USD. However, payouts are done in either __GAMMA__, __ETH__ or __USDC__, up to the discretion of the team.

## Program overview

Access active liquidity management on Uniswap v3. Gamma has developed a protocol, a management infrastructure, and a variety of strategies used by managers and market makers. As an LP, you can deposit your assets for Gamma to actively manage in Uniswap v3 positions, returning yield in the asset you deposit.

For more information about Gamma, please visit [https://www.gammastrategies.org/](https://www.gammastrategies.org/).   

This bug bounty program is focused on their smart contracts and is focused on preventing:

  - Loss of user funds
  - Theft of unclaimed yield or principal
  - Freezing of unclaimed yield

