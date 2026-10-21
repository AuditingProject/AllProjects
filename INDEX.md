# Bug bounty scope collection — index

- Built 2026-10-20 · **100 programs** across two platforms (**60 Immunefi**, **40 HackenProof**)
- **174 repositories cloned** · **1,166 of 1,531 in-scope deployed contracts have explorer-verified source on disk** · **2,152 in-scope assets catalogued**
- Each `<slug>/` holds the cloned repos, `SCOPE.md`, the raw program data (`program-data.json`, plus `program-hackenproof.json` for HackenProof programs) and, where the program lists deployed contracts, `deployed-source/`.
- `deployed-source/<address>__<label>/` holds verified source with its full dependency tree plus `meta.json` (explorer, match type, contract name, compiler). `deployed-source/manifest.json` is the machine-readable record.
- Repos linked at a specific `/tree/<ref>` or `/blob/<ref>/path` are checked out at that ref; in-scope sub-paths are listed per repo in `SCOPE.md`.
- For address-only programs, repos were cloned only on evidence the project itself published **and** confirmed against the on-chain verified source name. Nothing was guessed from a similar name.
- HackenProof programs also record each asset's **severity** and any targets the program marks **explicitly out of scope** (those are listed, never cloned as in-scope).

## Immunefi programs (60)

| # | Program | Repos | Assets | Source on disk | Max bounty | Notes |
|---|---|---|---|---|---|---|
| 1 | aave | 10 | 83 | **3/3** | $1,000,000 | — |
| 2 | aera | 1 | 29 | **26/29** | $500,000 | Repo resolved via docs.aera.finance. The 3 gaps are bgBTC on Morph, which publishes no verified source. |
| 3 | Aevo | 0 | 2 | **2/2** | $300,000 | No repo published; both in-scope contracts have full verified source in `deployed-source/`. |
| 4 | antefinance | 1 | 7 | **7/7** | $25,000 | — |
| 5 | arbitrum | 4 | 181 | — | $2,000,000 | — |
| 6 | autonolas | 4 | 80 | **78/79** | $5,000 | — |
| 7 | balancer | 3 | 24 | **24/24** | $1,000,000 | — |
| 8 | beets | 2 | 3 | **1/3** | $200,000 | — |
| 9 | charm | 1 | 3 | — | $6,000 | — |
| 10 | cowprotocol | 1 | 19 | — | $1,000,000 | — |
| 11 | debridge | 1 | 90 | **63/90** | $200,000 | — |
| 12 | dexeprotocol | 1 | 11 | **9/10** | $500,000 | SphereXEngine / PoolSphereXEngine are third-party. |
| 13 | dhedge | 1 | 7 | **5/7** | $50,000 | — |
| 14 | enzyme-onyx | 1 | 46 | — | $200,000 | `enzymefinance/protocol-onyx-dev` is private (404 to your `gh` login too). 1 clone failure(s) — see SCOPE.md. |
| 15 | enzymefinance | 1 | 304 | **295/303** | $200,000 | — |
| 16 | extrafinance | 2 | 9 | **8/8** | $100,000 | Repos found via the project's docs → Sherlock audit. EXTRA token and VeToken have no published source. |
| 17 | fbtc | 1 | 36 | **34/36** | $100,000 | The 6 "Factory Contract" assets have no repo match. |
| 18 | fluxfinance | 1 | 9 | **9/9** | $550,000 | — |
| 19 | folksfinance | 1 | 21 | **0/21** | $100,000 | Only xALGO matched a repo; Algorand publishes no contract source, so none could be fetched. |
| 20 | gamma | 1 | 3 | **3/3** | $50,000 | — |
| 21 | gammaswap | 7 | 27 | **27/27** | $40,000 | Deployments embed their repo paths in the verified metadata. ⚠️ Immunefi's own table appears to swap assets 14/15. |
| 22 | gearbox | 7 | 2 | — | $150,000 | Asset #2 is a scope *file* naming 6 repos, all cloned. Rewards recovered by a second pass. |
| 23 | gmtrade | 1 | 6 | **0/3** | $100,000 | — |
| 24 | gnosischain | 2 | 4 | **3/4** | $2,000,000 | — |
| 25 | hashflow | 1 | 4 | **4/4** | $50,000 | — |
| 26 | hermetica | 1 | 13 | **12/13** | $100,000 | Stacks: Clarity source for 12 of 13 contracts pulled from the Hiro deploy transactions. |
| 27 | ichi | 1 | 5 | **4/4** | $50,000 | — |
| 28 | immutable | 1 | 10 | **9/9** | $1,000,000 | — |
| 29 | ipor | 2 | 13 | **12/12** | $1,000 | `ipor-power-tokens` holds no in-scope address but is published as review scope. |
| 30 | justlenddao | 1 | 55 | **0/55** +10 meta | $50,000 | TRON publishes no source via public API; 10 addresses carry a name record. Full source is in the cloned repo. |
| 31 | KAST | 1 | 2 | **0/2** | $50,000 | — |
| 32 | katana | 7 | 23 | **12/22** | $80,000 | Jitosol OFT and OptimismPortal are third-party/upstream. `yearn-vaults-v3` holds no in-scope address but is published as review scope. |
| 33 | kleidi | 1 | 19 | **18/18** | $50,000 | — |
| 34 | listadao | 5 | 57 | **57/57** | $1,000,000 | All 57 addresses have verified source. 7 Oracle instances and the OFT pair have no repo source. |
| 35 | livepeer | 2 | 23 | **23/23** | $40,000 | — |
| 36 | magpiexyz | 1 | 2 | **1/1** | $50,000 | — |
| 37 | maple | 9 | 43 | **43/43** | $500,000 | All 43 addresses have verified source. PoolDelegateCover has no standalone repo. |
| 38 | marinade | 1 | 1 | — | $250,000 | — |
| 39 | mETH | 2 | 10 | **9/10** | $500,000 | — |
| 40 | nexusmutual | 1 | 3 | — | $25,000 | — |
| 41 | ondofinance | 5 | 123 | **97/123** | $1,000,000 | ~70 of 112 assets map to `rwa-contracts`; the LayerZero bridge set, KYCRegistry and rUSDY have no public repo source. |
| 42 | onre | 1 | 1 | **0/1** | $100,000 | — |
| 43 | orca | 2 | 2 | **0/2** +1 meta | $500,000 | Solana: no on-chain source; one record holds the OtterSec verified-build repo and commit. |
| 44 | pragmaoracle | 2 | 2 | **0/2** | $10,000 | Starknet: Voyager publishes no source via API; both repos are cloned. |
| 45 | raydium | 3 | 74 | — | $505,000 | — |
| 46 | rhinofi | 1 | 9 | **7/9** | $2,000,000 | — |
| 47 | rocketpool | 1 | 77 | — | $150,000 | — |
| 48 | silofinance-v2 | 2 | 29 | **0/8** | $100,000 | The 8 Sonic deployments need an Etherscan-family key. Full source is in the two cloned repos. |
| 49 | staderforeth | 1 | 22 | **21/21** | $1,000,000 | — |
| 50 | sushiswap | 3 | 3 | **0/3** | $200,000 | Red Snwapper is not published in any SushiSwap org repo; its 3 assets are docs pages. |
| 51 | symbiosis | 1 | 4 | **4/4** | $100,000 | — |
| 52 | trufin | 1 | 2 | **0/1** +1 meta | $20,000 | — |
| 53 | twyne | 2 | 17 | **14/16** | $50,000 | — |
| 54 | usdt0 | 0 | 47 | **28/46** | $6,000,000 | No contract repo published; 28 of 46 addresses have verified source. The audit repo's README maps every address to its contract name. |
| 55 | utix | 1 | 1 | **1/1** | $500,000 | Ownership evidence is the GitHub org's homepage rather than a link from the site itself. |
| 56 | veda | 1 | 52 | **52/52** | $1,000,000 | — |
| 57 | velvet-capital-v2 | 1 | 14 | **11/13** | $10,000 | `velvet-v4` in the same org was deliberately not cloned (adds out-of-scope contracts). |
| 58 | velvetcapital | 1 | 31 | **30/30** | $51,000 | Two ERC1967Proxy assets are an OpenZeppelin dependency, not repo files. |
| 59 | xoxno | 1 | 2 | **0/1** | $20,000 | — |
| 60 | yearnfinance | 7 | 47 | **46/47** | $200,000 | Immunefi links only `yearn-security`; the 6 contract repos were resolved from on-chain verified source paths in the `yearn` org. |

## HackenProof programs (40)

| # | Program | Repos | Assets | Source on disk | Max bounty | Notes |
|---|---|---|---|---|---|---|
| 1 | 1inch-aqua | 3 | 3 | — | $100,000 | 2 target(s) marked out of scope by the program. |
| 2 | 1inch-smart-contract | 7 | 8 | — | $500,000 | — |
| 3 | account-abstraction-bugs | 2 | 3 | — | $250,000 | Cross-protocol ERC-4337 program. |
| 4 | adi-foundation-smart-contracts | 1 | 3 | — | $10,000 | 1 target(s) marked out of scope by the program. |
| 5 | adi-predictstreet-smart-contracts | 0 | 1 | — | $10,000 | `hackenproof-public/predictstreet-dd` is private — request access via HackenProof. 1 clone failure(s) — see SCOPE.md. |
| 6 | ample-smart-contracts | 0 | 12 | **7/12** | $20,000 | — |
| 7 | arcadia-finance-company-smart-contracts | 3 | 3 | — | $25,000 | 1 target(s) marked out of scope by the program. |
| 8 | astros-smart-contracts | 1 | 1 | — | $150,000 | — |
| 9 | aurora-smart-contract | 2 | 14 | **0/1** | $300,000 | — |
| 10 | bluefin-coin-contracts | 0 | 1 | — | $15,000 | `hackenproof-public/bluefin-coin-contracts` is private and not visible to your `gh` login — request access via HackenProof. 1 clone failure(s) — see SCOPE.md. |
| 11 | bluefin-dex-contracts | 0 | 1 | — | $15,000 | `hackenproof-public/bluefin-dex-contracts-v3` is private — request access via HackenProof. 1 clone failure(s) — see SCOPE.md. |
| 12 | bluefin-spot-contracts | 0 | 1 | — | $15,000 | `hackenproof-public/bluefin-spot-contracts` is private — request access via HackenProof. 1 clone failure(s) — see SCOPE.md. |
| 13 | bucket-protocol-smart-contracts | 1 | 1 | — | $15,000 | — |
| 14 | cetus-smart-contracts | 2 | 2 | — | $1,000,000 | The private `hackenproof-public/cetus-contract-bounty` cloned successfully via your `gh` login. |
| 15 | cronos-smart-contracts | 0 | 60 | **5/60** | $250,000 | Cronos explorer API needs its own key and most contracts are not on Sourcify, so these are largely addresses only. |
| 16 | cronos-zkevm-smart-contracts | 0 | 103 | **8/103** | $200,000 | 103 targets, mostly zkEVM system/standard contracts; only 8 had verified source available. |
| 17 | dexalot-smart-contracts-2 | 1 | 1 | — | $20,000 | 1 target(s) marked out of scope by the program. |
| 18 | dexe-protocol-smart-contracts | 1 | 1 | — | $500,000 | — |
| 19 | dodofeerouteproxy-smart-contract | 1 | 1 | — | $10,000 | — |
| 20 | dodolimitorder-smart-contract | 1 | 1 | — | $10,000 | — |
| 21 | ember-evm-smart-contracts | 1 | 1 | — | $15,000 | — |
| 22 | ember-vaults-smart-contracts | 1 | 1 | — | $15,000 | — |
| 23 | flowx-clmm-smart-contracts | 0 | 1 | — | $5,000 | `hackenproof-public/flowx-clmm` is private — request access via HackenProof. 1 clone failure(s) — see SCOPE.md. |
| 24 | haedal-smart-contracts | 0 | 2 | — | $200,000 | Both `hasui-bug-bounty` and `hawal-bug-bounty` are private — request access via HackenProof. 2 clone failure(s) — see SCOPE.md. |
| 25 | hyperbridge-protocol | 2 | 2 | — | $50,000 | — |
| 26 | momentum-smart-contracts | 1 | 1 | — | $200,000 | — |
| 27 | nado-smart-contracts | 1 | 1 | — | $500,000 | — |
| 28 | navi-protocol | 1 | 2 | — | $300,000 | 2 target(s) marked out of scope by the program. |
| 29 | near-intents-smart-contracts | 1 | 1 | — | $300,000 | 1 target(s) marked out of scope by the program. |
| 30 | near-smart-contracts-1 | 2 | 6 | — | $300,000 | — |
| 31 | snowbridge-on-chain-code | 2 | 2 | — | $75,000 | In scope is `polkadot-sdk/bridges/snowbridge` plus the Snowfork repo; the polkadot-sdk clone is ~5 GB of monorepo history. |
| 32 | starknet-staking | 1 | 18 | — | $100,000 | Scope is pinned to a specific tag; see SCOPE.md for the exact ref and in-scope paths. |
| 33 | stbl-smart-contracts | 0 | 19 | **19/19** | $20,000 | All 19 addresses have verified source. |
| 34 | ston-dot-fi-dex-smart-contracts-v2 | 1 | 5 | — | $100,000 | — |
| 35 | turbos-finance-smart-contracts | 1 | 1 | — | $15,000 | — |
| 36 | unitus-v2-smart-contracts | 1 | 1 | — | $50,000 | — |
| 37 | volo-smart-contracts | 1 | 1 | — | $150,000 | — |
| 38 | whitechain-bridge | 1 | 1 | — | $10,000 | — |
| 39 | zest-protocol-smart-contracts | 0 | 15 | **15/15** | $100,000 | All 15 Stacks contracts have Clarity source on disk. |
| 40 | zynk-protocol | 1 | 2 | — | $5,000 | 1 target(s) marked out of scope by the program. |

## Coverage summary

- **1,166 of 1,531** in-scope deployed contracts have full verified source saved locally.
- 12 are metadata-only: the chain publishes no source, so the record holds the contract name or the verified-build repo and commit (TRON, Solana).
- 307 have no verified source on Sourcify, the chain's Blockscout, or Routescan.
- 46 sit on chains with no source API available here.

### Known gaps

- **Etherscan key**: `ETHERSCAN_API_KEY` is set in your environment but Etherscan V2 rejects it as invalid, so Etherscan-family chains were covered only through Sourcify and Blockscout. A working key would close most of the remaining gap (Sonic, HECO, Fantom, Katana, Polygon, Tempo, Mantle).
- **Cronos**: the Cronos and Cronos zkEVM explorer APIs need their own key, and most of those contracts are not on Sourcify — so `cronos-smart-contracts` and `cronos-zkevm-smart-contracts` are largely addresses only.
- **Chains with no published source**: Algorand app IDs, TRON (names only), Solana programs (verified-build repo/commit recorded instead), Starknet, MultiversX, Aptos.
- **Private repos (8 programs)**: HackenProof hosts several bounty codebases in its private `hackenproof-public` org and grants access on request. Your `gh` login can see `cetus-contract-bounty` (cloned successfully) but returns 404 for `predictstreet-dd`, `bluefin-coin-contracts`, `bluefin-dex-contracts-v3`, `bluefin-spot-contracts`, `flowx-clmm`, `hasui-bug-bounty` and `hawal-bug-bounty`. Request access through each program, then re-run the collector for those slugs. Separately, `enzymefinance/protocol-onyx-dev` (Enzyme Onyx on Immunefi) is private with no access path.

## Largest collections

- **aave** (Immunefi) — 10 repos: aave-collector-unification, aave-governance-v3, aave-stk-gov-v3, aave-v3-core, aave-v3-origin, ccip, gho-origin, protocol-v2, solidity-utils, stake-token
- **maple** (Immunefi) — 9 repos: globals-v2, maple-strategies, open-term-loan, open-term-loan-manager, pool-permission-manager, pool-v2, syrup-utils, withdrawal-manager-cyclical, withdrawal-manager-queue
- **1inch-smart-contract** (HackenProof) — 7 repos: delegating, farming, fusion-protocol, limit-order-protocol, solana-crosschain-protocol, solana-fusion, token-plugins
- **gammaswap** (Immunefi) — 7 repos: gs-token, timelock, v1-core, v1-deltaswap, v1-implementations, v1-periphery, v1-staking
- **gearbox** (Immunefi) — 7 repos: bots-v3, core-v3, integrations-v3, oracles-v3, periphery-v3, permissionless, security
- **katana** (Immunefi) — 7 repos: kat-token, katana-governance, lxly-bridge-and-call, lz-kat-upgradeable, ulxly-contracts, vault-bridge, yearn-vaults-v3
- **yearnfinance** (Immunefi) — 7 repos: tokenized-strategy, tokenized-strategy-periphery, vault-periphery, yearn-boosted-staker, yearn-security, yearn-vaults-v3, yearn-yb
- **listadao** (Immunefi) — 5 repos: lista-dao-contracts, lista-new-contracts, lista-token, moolah, synclub-contracts
- **ondofinance** (Immunefi) — 5 repos: global-markets-solana, rwa-contracts, usdy, usdy-aptos, usdy-noble
- **arbitrum** (Immunefi) — 4 repos: fund-distribution-contracts, governance, nitro-contracts, token-bridge-contracts

## Highest max bounty

usdt0 $6,000,000 (Immunefi), arbitrum $2,000,000 (Immunefi), gnosischain $2,000,000 (Immunefi), rhinofi $2,000,000 (Immunefi), aave $1,000,000 (Immunefi), balancer $1,000,000 (Immunefi), cetus-smart-contracts $1,000,000 (HackenProof), cowprotocol $1,000,000 (Immunefi), immutable $1,000,000 (Immunefi), listadao $1,000,000 (Immunefi), ondofinance $1,000,000 (Immunefi), staderforeth $1,000,000 (Immunefi).

## Not part of this collection

These folders sit in `AllProjects/` but are your own audit work, not bounty-program collections, and were left untouched:

- `_hacks_scanned/`
- `_hunt/`
- `_hunt2/`
- `_rejected_folder/`
- `_scanned_folder/`

