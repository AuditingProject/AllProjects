# gnosischain — Immunefi scope

- Program: https://immunefi.com/bug-bounty/gnosischain/scope/
- Max bounty: **$2,000,000**
- KYC required: **no**
- Launched 2022-02-11, program updated 2026-10-09
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $50,000 – $2,000,000 (10% of funds at risk) |
| Smart contract | High | $10,000 – $50,000 |
| Smart contract | Medium | $1,000 – $10,000 |

## Assets in scope (4)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://etherscan.io/address/0x4aa42145Aa6Ebf72e164C9bBC74fbD3788045016 | XDaiForeignBridge: DAI-xDAI TokenBridge contract on the Ethereum Mainnet |
| 2 | Smart contract | https://blockscout.com/xdai/mainnet/address/0x7301CFA0e1756B71869E93d4e4Dca5c7d0eb0AA6 | HomeBridgeErcToNative: DAI-xDAI TokenBridge contract on the Gnosis chain |
| 3 | Smart contract | https://etherscan.io/address/0x88ad09518695c6c3712AC10a214bE5109a655671 | ForeignOmnibridge: OmniBridge contract on the Ethereum Mainnet |
| 4 | Smart contract | https://blockscout.com/xdai/mainnet/address/0xf6A78083ca3e2a662D6dd1703c939c8aCE2e268d | HomeOmnibridge: OmniBridge contract on the Gnosis chain |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `omnibridge/` | https://github.com/gnosischain/omnibridge | origin/master | ccd9003 2026-09-09 Merge pull request #4 from zengzengzenghuy/chore/verify | program codebase link |
| `tokenbridge-contracts/` | https://github.com/gnosischain/tokenbridge-contracts | origin/xdaibridge | 52afd25 2025-11-10 Merge pull request #7 from gnosischain/feat/xdai-usds-migration | program codebase link |

Repos marked *program codebase link* are not asset rows themselves. They are the source repositories Immunefi lists for this program, cloned because the in-scope assets are deployed contracts. Confirm which deployed address maps to which contract before relying on them.

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **3 of 4** in-scope addresses have full source on disk.
- 1 has no verified source available from Sourcify, the chain's Blockscout instance or Routescan.

Sources: blockscout:eth.blockscout.com (3).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x4aa42145Aa6E` | XDaiForeignBridge: DAI-xDAI TokenBridge contract on the Ethe | `EternalStorageProxy` | `deployed-source/0x4aa42145Aa6E__XDaiForeignBridge_DAI-xDAI_TokenBridge_c/` |
| `0x7301CFA0e175` | HomeBridgeErcToNative: DAI-xDAI TokenBridge contract on the  | `EternalStorageProxy` | `deployed-source/0x7301CFA0e175__HomeBridgeErcToNative_DAI-xDAI_TokenBrid/` |
| `0x88ad09518695` | ForeignOmnibridge: OmniBridge contract on the Ethereum Mainn | `EternalStorageProxy` | `deployed-source/0x88ad09518695__ForeignOmnibridge_OmniBridge_contract_on/` |

**No source retrieved** (by chain): blockscout.com (1).
These remain listed as addresses only. Fetching them needs an explorer that publishes verified source for that chain — for Etherscan-family chains that means a working Etherscan V2 API key, and the Cronos explorers require their own API key.

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0x4aa42145Aa6Ebf72e164C9bBC74fbD3788045016 — XDaiForeignBridge: DAI-xDAI TokenBridge contract on the Ethereum Mainnet
- [Smart contract] https://blockscout.com/xdai/mainnet/address/0x7301CFA0e1756B71869E93d4e4Dca5c7d0eb0AA6 — HomeBridgeErcToNative: DAI-xDAI TokenBridge contract on the Gnosis chain
- [Smart contract] https://etherscan.io/address/0x88ad09518695c6c3712AC10a214bE5109a655671 — ForeignOmnibridge: OmniBridge contract on the Ethereum Mainnet
- [Smart contract] https://blockscout.com/xdai/mainnet/address/0xf6A78083ca3e2a662D6dd1703c939c8aCE2e268d — HomeOmnibridge: OmniBridge contract on the Gnosis chain

## Known issues (4) — not eligible

- callback through onTokenBridged() is not checked for success. Any failure in onTokenBridged() is silently swallowed. (https://immunefi.com/bug-bounty/gnosischain/information/)
- Validator signature collection on Home uses a static validator set defined at the time of transaction execution while signature verification uses the currently active validator set (potentially updated). (https://immunefi.com/bug-bounty/gnosischain/information/)
- Omnibridge onTokenTransfer() function does not verify msg.sender and anyone can call this function to create fake bridge token. (https://immunefi.com/bug-bounty/gnosischain/information/)
- The minter allowance granted by tokens to the USDCTransmuter can be exhausted to prevent successful USDC.e and EURC.e transfers. (https://immunefi.com/bug-bounty/gnosischain/information/)

## Impacts in scope

**Smart contract — Critical**
- Any governance voting result manipulation
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Direct theft of any user NFTs, whether at-rest or in-motion, other than unclaimed royalties
- Permanent freezing of funds
- Permanent freezing of NFTs
- Unauthorized minting of NFTs
- Predictable or manipulable RNG that results in abuse of the principal or NFT
- Unintended alteration of what the NFT represents (e.g. token URI, payload, artistic content)

**Smart contract — High**
- Temporary freezing of funds for at least  1 week
- Temporary freezing NFTs for at least  1 week
- Miner-extractable value (MEV)
- Theft of unclaimed yield
- Theft of unclaimed royalties
- Permanent freezing of unclaimed yield
- Permanent freezing of unclaimed royalties

**Smart contract — Medium**
- Block stuffing for profit
- Smart contract unable to operate due to lack of token funds
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

- Best practice critiques
- The minter allowance granted by tokens to the `USDCTransmuter` can be exhausted to prevent successful USDC.e and EURC.e transfers.
- Omnibridge `onTokenTransfer()` function does not verify `msg.sender` and anyone can call this function to create fake bridge token.
- Validator signature collection on Home uses a static validator set defined at the time of transaction execution while signature verification uses the currently active validator set (potentially updated).
- callback through `onTokenBridged()` is not checked for success. Any failure in `onTokenBridged()` is silently swallowed.

test

## Notes on assets

The smart contract regarding native xDAI bridging (XDaiForeignBridge and HomeBridgeErcToNative)  can be found at [https://github.com/gnosischain/tokenbridge-contracts/tree/xdaibridge](https://github.com/gnosischain/tokenbridge-contracts/tree/xdaibridge). The smart contracts regarding arbitrary ERC20 bridging (ForeignOmnibridge and HomeOmnibridge) can be found at [https://github.com/gnosischain/omnibridge/tree/master](https://github.com/gnosischain/omnibridge/tree/master).

Only those in the Assets in Scope table are considered as in-scope of the bug bounty program.

If an impact can be caused to any other asset managed by Gnosis that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project.

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [Immunefi Vulnerability Severity Classification System V2.2](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-2). This is a simplified 5-level scale, with separate scales for websites/apps and smart contracts/blockchains, encompassing everything from consequence of exploitation to privilege required to likelihood of a successful exploit.

All smart contract bug reports must come with a PoC with an end-effect impacting an asset-in-scope in order to be considered for a reward.

Critical and High smart contract vulnerabilities are capped at 10% of economic damage, primarily taking into consideration funds at risk, but also PR and branding aspects, at the discretion of the team.

Payouts are handled by the __Gnosis Chain__ team directly and are denominated in __USD__. However, payouts are done in __USDC or xDAI__.

## Program overview

Gnosis Chain is an EVM compatible, community-owned network that prioritizes credible neutrality and resiliency, open to everyone without privilege or prejudice. Secured by over 165k validators around the world, Gnosis Chain has all the tooling you are used to and trust-minimized bridges to mainnet.

For more information about Gnosis Chain, please visit [https://www.gnosis.io/](https://www.gnosis.io/).

This bug bounty program is focused on the bridges smart contracts that move assets in between Mainnet and Gnosis chain. The xDai bridge is used to bridge DAI on mainnet and the native xDai coin on Gnosis chain. For more information see [https://docs.gnosischain.com/bridges/tokenbridge/xdai-bridge](https://docs.gnosischain.com/bridges/tokenbridge/xdai-bridge). The OmniBridge is a native token bridge that mints the canonical representation of bridged assets on Gnosis. For more information see [https://docs.gnosischain.com/bridges/tokenbridge/omnibridge](https://docs.gnosischain.com/bridges/tokenbridge/omnibridge).

__Disclosure of Information relating to Bug Reports:__ Security researchers may not publish any information about their bug reports (even after any vulnerabilities have been fixed and the security researcher has been paid) unless Gnosis provides written consent in the bug report submission thread.

