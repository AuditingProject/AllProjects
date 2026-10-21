# hashflow — Immunefi scope

- Program: https://immunefi.com/bug-bounty/hashflow/scope/
- Max bounty: **$50,000**
- KYC required: **no**
- Launched 2022-03-29, program updated 2026-06-08
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $5,000 – $50,000 (20% of funds at risk) |
| Smart contract | Low | $1,000 – $2,500 |

## Assets in scope (4)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0xdE828fdc3F497F16416D1bB645261C7C6a62DAb5 | Hashflow Factory |
| 2 | Smart contract | https://etherscan.io/address/0xCa310B1B942A30Ff4b40a5E1b69AB4607eC79Bc1 | Hashflow Pool |
| 3 | Smart contract | https://etherscan.io/address/0x55084eE0fEf03f14a305cd24286359A35D735151 | Hashflow Router |
| 4 | Smart contract | https://etherscan.io/address/0x0a09B370950f69ADC4c2FbF8677C7b0047599c9F | Hashflow Wormhole Messenger |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `x-protocol` | https://github.com/hashflownetwork/x-protocol | main | e41cfaa | resolved from Hashflow's own docs (`docs.hashflow.com`, linked from the program overview via `https://www.hashflow.com/`) |

### How these repos were matched

- `x-protocol` — Evidence: `program-data.json` has `programCodebases: null` and no GitHub link, so the repo was resolved through the project's own site/docs. Hashflow's documentation page `https://docs.hashflow.com/hashflow/market-making/getting-started-api-v3` links directly to `github.com/hashflownetwork/x-protocol/blob/main/evm/contracts/HashflowFactory.sol`, `…/evm/contracts/pools/HashflowPool.sol` and `…/evm/contracts/xchain/HashflowWormholeMessenger.sol`, and `…/hashflow/taker/getting-started-api-v3` links to `…/evm/abi/IHashflowRouter.json` and `…/evm/deployed-contracts/IHashflowRouter.json`. Verification: Sourcify (`/v2/contract/1/<address>`) gives the on-chain verified names `contracts/HashflowFactory.sol:HashflowFactory` (`0xdE82…DAb5`), `contracts/pools/HashflowPool.sol:HashflowPool` (`0xCa31…9Bc1`), `contracts/HashflowRouter.sol:HashflowRouter` (`0x5508…5151`) and `contracts/xchain/HashflowWormholeMessenger.sol:HashflowWormholeMessenger` (`0x0a09…c9F`) — an exact path-and-name match for this repo's `evm/contracts/` tree (`evm/` is the Hardhat root), for all four in-scope assets.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **4 of 4** in-scope addresses have full source on disk.

Sources: sourcify (4).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0xdE828fdc3F49` | Hashflow Factory | `contracts/HashflowFactory.sol:HashflowFactory` | `deployed-source/0xdE828fdc3F49__Hashflow_Factory/` |
| `0xCa310B1B942A` | Hashflow Pool | `contracts/pools/HashflowPool.sol:HashflowPool` | `deployed-source/0xCa310B1B942A__Hashflow_Pool/` |
| `0x55084eE0fEf0` | Hashflow Router | `contracts/HashflowRouter.sol:HashflowRouter` | `deployed-source/0x55084eE0fEf0__Hashflow_Router/` |
| `0x0a09B370950f` | Hashflow Wormhole Messenger | `contracts/xchain/HashflowWormholeMessenger.sol:HashflowWormholeMessenger` | `deployed-source/0x0a09B370950f__Hashflow_Wormhole_Messenger/` |

## In-scope assets with no repo to clone

**Coverage after this pass:** all 4 in-scope assets (Hashflow Factory, Hashflow Pool, Hashflow Router, Hashflow Wormhole Messenger) are now covered by the cloned `x-protocol` repo. **Nothing remains unidentified.**

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0xdE828fdc3F497F16416D1bB645261C7C6a62DAb5 — Hashflow Factory
- [Smart contract] https://etherscan.io/address/0xCa310B1B942A30Ff4b40a5E1b69AB4607eC79Bc1 — Hashflow Pool
- [Smart contract] https://etherscan.io/address/0x55084eE0fEf03f14a305cd24286359A35D735151 — Hashflow Router
- [Smart contract] https://etherscan.io/address/0x0a09B370950f69ADC4c2FbF8677C7b0047599c9F — Hashflow Wormhole Messenger

## Impacts in scope

**Smart contract — Critical**
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Direct theft of any user NFTs, whether at-rest or in-motion, other than unclaimed royalties
- Protocol insolvency

**Smart contract — Low**
- Contract fails to deliver promised returns, but doesn't lose value

## Notes on assets

If an impact can be caused to any other asset managed by Hashflow that isn’t on this table but for which the impact is in the Impacts in Scope section, you are encouraged to submit it for the consideration of the project. However the submitted bug for out of scope subdomains is not subject to this program impact ranking and bounty amount listed below

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps and smart contracts/blockchains, encompassing everything from consequence of exploitation to privilege required to likelihood of a successful exploit.

All web/app bug reports must come with a PoC with an end-effect impacting an asset-in-scope in order to be considered for a reward. Explanations and statements are not accepted as PoC and code is required.

Payouts are handled by the __Hashflow__ team directly and are denominated in USD. However, payouts are done in __USDC__, __USDT__ __and__ __DAI__, with the choice of the ratio at the discretion of the team.

## Program overview

Hashflow is the most powerful DeFi trading experience that gives you tight spreads, zero slippage and MEV-resistance.

For more information about Hashflow, please visit [https://www.hashflow.com/](https://www.hashflow.com/). 

This bug bounty program is focused on their website and app, and is focused on preventing:

  - Ability to execute system commands
  - Extract Sensitive data/files from the server such as /etc/passwd
  - Stealing User Cookies
  - Taking Down the application/website
  - Bypassing Authentication
  - Signing transactions for other users
  - Redirection of user deposits and withdrawals
  - Subdomain takeover resulting in financial loss (applicable for subdomains with addresses published)
  - Wallet interaction modification resulting in financial loss
  - Direct theft of user funds 
  - Tampering with transactions submitted to the user’s wallet
  - Submitting malicious transactions to an already-connected wallet

