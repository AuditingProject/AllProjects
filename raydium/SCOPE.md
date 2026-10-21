# raydium — Immunefi scope

- Program: https://immunefi.com/bug-bounty/raydium/scope/
- Max bounty: **$505,000**
- KYC required: **no**
- Launched 2023-04-25, program updated 2026-07-09
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $50,000 – $505,000 (10% of funds at risk) |
| Smart contract | High | $5,000 – $40,000 |
| Smart contract | Medium | $5,000 |

## Assets in scope (74)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/admin/collect_fund_fee.rs | collect_fund_fee |
| 2 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/admin/collect_protocol_fee.rs | collect_protocol_fee |
| 3 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/admin/create_operation_account.rs | create_operation_account |
| 4 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/admin/mod.rs | admin/mod |
| 5 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/admin/transfer_reward_owner.rs | transfer_reward_owner |
| 6 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/admin/update_amm_config.rs | update_amm_config |
| 7 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/admin/update_operation_account.rs | update_operation_account |
| 8 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/admin/update_pool_status.rs | update_pool_status |
| 9 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/close_position.rs | close_position |
| 10 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/collect_remaining_rewards.rs | collect_remaining_rewards |
| 11 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/create_pool.rs | create_pool |
| 12 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/decrease_liquidity.rs | decrease_liquidity |
| 13 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/increase_liquidity.rs | increase_liquidity |
| 14 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/initialize_reward.rs | initialize_reward |
| 15 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/mod.rs | instructions/mod |
| 16 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/open_position.rs | open_position |
| 17 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/set_reward_params.rs | set_reward_params |
| 18 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/swap.rs | swap |
| 19 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/swap_router_base_in.rs | swap_router_base_in |
| 20 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/instructions/update_reward_info.rs | update_reward_info |
| 21 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/big_num.rs | big_num |
| 22 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/fixed_point_64.rs | fixed_point |
| 23 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/full_math.rs | full_math |
| 24 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/liquidity_math.rs | liquidity_math |
| 25 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/mod.rs | libraries/mod |
| 26 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/sqrt_price_math.rs | sqrt_price_math |
| 27 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/swap_math.rs | swap_math |
| 28 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/tick_array_bit_map.rs | tick_array_bit_map |
| 29 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/tick_math.rs | tick_math |
| 30 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/libraries/unsafe_math.rs | unsafe_math |
| 31 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/states/config.rs | config |
| 32 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/states/mod.rs | states/mod |
| 33 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/states/operation_account.rs | operation_account |
| 34 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/states/oracle.rs | oracle |
| 35 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/states/personal_position.rs | personal_position |
| 36 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/states/pool.rs | pool |
| 37 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/states/protocol_position.rs | protocol_position |
| 38 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/states/tick_array.rs | tick_array |
| 39 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/util/access_control.rs | access_control |
| 40 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/util/mod.rs | util/mod |
| 41 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/util/system.rs | system |
| 42 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/util/token.rs | token |
| 43 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/error.rs | error |
| 44 | Smart contract | https://github.com/raydium-io/raydium-amm-v3/blob/master/programs/amm/src/lib.rs | lib |
| 45 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/lib.rs | lib |
| 46 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/entrypoint.rs | entrypoint |
| 47 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/instruction.rs | instruction |
| 48 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/error.rs | error |
| 49 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/invokers.rs | invokers |
| 50 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/log.rs | log |
| 51 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/math.rs | math |
| 52 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/processor.rs | processor |
| 53 | Smart contract | https://github.com/raydium-io/raydium-amm/blob/master/program/src/state.rs | state |
| 54 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/lib.rs | lib |
| 55 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/error.rs | error |
| 56 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/admin/collect_fund_fee.rs | collect_fund_fee |
| 57 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/admin/collect_protocol_fee.rs | collect_protocol_fee |
| 58 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/admin/create_config.rs | create_config |
| 59 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/admin/mod.rs | admin mod |
| 60 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/admin/update_config.rs | update_config |
| 61 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/admin/update_pool_status.rs | update_pool_status |
| 62 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/deposit.rs | deposit |
| 63 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/initialize.rs | initialize |
| 64 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/mod.rs | instructions mod |
| 65 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/swap_base_input.rs | swap_base_input |
| 66 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/swap_base_output.rs | swap_base_output |
| 67 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/instructions/withdraw.rs | withdraw |
| 68 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/states/config.rs | config |
| 69 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/states/events.rs | events |
| 70 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/states/mod.rs | states mod |
| 71 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/states/pool.rs | pool |
| 72 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/utils/math.rs | math |
| 73 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/utils/mod.rs | utils mod |
| 74 | Smart contract | https://github.com/raydium-io/raydium-cp-swap/blob/master/programs/cp-swap/src/utils/token.rs | utils token |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `raydium-amm-v3/` | https://github.com/raydium-io/raydium-amm-v3 | origin/master | edfc5c0 2026-10-20 update SECURITY.md | in-scope asset |
| `raydium-amm/` | https://github.com/raydium-io/raydium-amm | origin/master | 91739d8 2026-10-20 update SECURITY.md | in-scope asset |
| `raydium-cp-swap/` | https://github.com/raydium-io/raydium-cp-swap | origin/master | f4b9b26 2026-10-20 update SECURITY.md | in-scope asset |

In-scope paths inside `raydium-amm-v3/` (44):

- `programs/amm/src/instructions/admin/collect_fund_fee.rs`
- `programs/amm/src/instructions/admin/collect_protocol_fee.rs`
- `programs/amm/src/instructions/admin/create_operation_account.rs`
- `programs/amm/src/instructions/admin/mod.rs`
- `programs/amm/src/instructions/admin/transfer_reward_owner.rs`
- `programs/amm/src/instructions/admin/update_amm_config.rs`
- `programs/amm/src/instructions/admin/update_operation_account.rs`
- `programs/amm/src/instructions/admin/update_pool_status.rs`
- `programs/amm/src/instructions/close_position.rs`
- `programs/amm/src/instructions/collect_remaining_rewards.rs`
- `programs/amm/src/instructions/create_pool.rs`
- `programs/amm/src/instructions/decrease_liquidity.rs`
- `programs/amm/src/instructions/increase_liquidity.rs`
- `programs/amm/src/instructions/initialize_reward.rs`
- `programs/amm/src/instructions/mod.rs`
- `programs/amm/src/instructions/open_position.rs`
- `programs/amm/src/instructions/set_reward_params.rs`
- `programs/amm/src/instructions/swap.rs`
- `programs/amm/src/instructions/swap_router_base_in.rs`
- `programs/amm/src/instructions/update_reward_info.rs`
- `programs/amm/src/libraries/big_num.rs`
- `programs/amm/src/libraries/fixed_point_64.rs`
- `programs/amm/src/libraries/full_math.rs`
- `programs/amm/src/libraries/liquidity_math.rs`
- `programs/amm/src/libraries/mod.rs`
- `programs/amm/src/libraries/sqrt_price_math.rs`
- `programs/amm/src/libraries/swap_math.rs`
- `programs/amm/src/libraries/tick_array_bit_map.rs`
- `programs/amm/src/libraries/tick_math.rs`
- `programs/amm/src/libraries/unsafe_math.rs`
- `programs/amm/src/states/config.rs`
- `programs/amm/src/states/mod.rs`
- `programs/amm/src/states/operation_account.rs`
- `programs/amm/src/states/oracle.rs`
- `programs/amm/src/states/personal_position.rs`
- `programs/amm/src/states/pool.rs`
- `programs/amm/src/states/protocol_position.rs`
- `programs/amm/src/states/tick_array.rs`
- `programs/amm/src/util/access_control.rs`
- `programs/amm/src/util/mod.rs`
- `programs/amm/src/util/system.rs`
- `programs/amm/src/util/token.rs`
- `programs/amm/src/error.rs`
- `programs/amm/src/lib.rs`

In-scope paths inside `raydium-amm/` (9):

- `program/src/lib.rs`
- `program/src/entrypoint.rs`
- `program/src/instruction.rs`
- `program/src/error.rs`
- `program/src/invokers.rs`
- `program/src/log.rs`
- `program/src/math.rs`
- `program/src/processor.rs`
- `program/src/state.rs`

In-scope paths inside `raydium-cp-swap/` (21):

- `programs/cp-swap/src/lib.rs`
- `programs/cp-swap/src/error.rs`
- `programs/cp-swap/src/instructions/admin/collect_fund_fee.rs`
- `programs/cp-swap/src/instructions/admin/collect_protocol_fee.rs`
- `programs/cp-swap/src/instructions/admin/create_config.rs`
- `programs/cp-swap/src/instructions/admin/mod.rs`
- `programs/cp-swap/src/instructions/admin/update_config.rs`
- `programs/cp-swap/src/instructions/admin/update_pool_status.rs`
- `programs/cp-swap/src/instructions/deposit.rs`
- `programs/cp-swap/src/instructions/initialize.rs`
- `programs/cp-swap/src/instructions/mod.rs`
- `programs/cp-swap/src/instructions/swap_base_input.rs`
- `programs/cp-swap/src/instructions/swap_base_output.rs`
- `programs/cp-swap/src/instructions/withdraw.rs`
- `programs/cp-swap/src/states/config.rs`
- `programs/cp-swap/src/states/events.rs`
- `programs/cp-swap/src/states/mod.rs`
- `programs/cp-swap/src/states/pool.rs`
- `programs/cp-swap/src/utils/math.rs`
- `programs/cp-swap/src/utils/mod.rs`
- `programs/cp-swap/src/utils/token.rs`

## Impacts in scope

**Smart contract — Critical**
- Vulnerabilities that could freeze user funds permanently or involve the draining or theft of funds without user transaction approval
- Direct theft of any user funds, whether at-rest or in-motion, other than unclaimed yield
- Permanent freezing of funds

**Smart contract — High**
- Temporary freezing of funds for any amount of time
- Vulnerabilities that could freeze user funds temporarily or intentionally alter the value of user funds
- Theft of unclaimed yield
- Permanent freezing of unclaimed yield

**Smart contract — Medium**
- Block stuffing for profit
- Smart contract unable to operate due to lack of token funds
- Griefing (e.g. no profit motive for an attacker, but damage to the users or the protocol)
- Theft of gas
- Unbounded gas consumption

## Out of scope (from the program page)

Raydium's AMMv4 is currently in Status 6, which means it does not share liquidity to OpenBook (or Serum). This Status will not change and AMMv4 is pending an upgrade to remove OpenBook depenencies, as such, bugs pertaining to OpenBook markets, OpenBook open orders, or anything related to the OpenBook codebase that is not being used are considered out of scope for this bug bounty program.

## Notes on assets

Documentation and instruction for PoC can be found here:
- https://github.com/raydium-io/raydium-docs/blob/master/dev-resources/raydium-clmm-dev-doc.pdf

A public testnet of Raydium’s CLMM can be found at [https://explorer.solana.com/address/proKtffCScMcwkFkPHFcuHawN7mWxRkhyh8PGxkTwYx.](https://explorer.solana.com/address/proKtffCScMcwkFkPHFcuHawN7mWxRkhyh8PGxkTwYx) However, note that testing on the public testnet is prohibited by the program rules. The public testnet is provided for reference only.

Documentation and instruction for PoC can be found here:
- [Raydium Hybrid AMM overview document ](https://drive.google.com/file/d/1VQINU3Lw92CU0p-fKAGyk7my_rO-gINF/view?usp=sharing)

A public testnet of Raydium’s AMM can be found at [https://explorer.solana.com/address/AMMjRTfWhP73x9fM6jdoXRfgFJXR97NFRkV8fYJUrnLE.](https://explorer.solana.com/address/proKtffCScMcwkFkPHFcuHawN7mWxRkhyh8PGxkTwYx) 

A public testnet of OpenBook’s Central Limit Order Book can be found at [https://explorer.solana.com/address/EoTcMgcDRTJVZDMZWBoU6rhYHZfkNTVEAfz3uUJRcYGj	](https://explorer.solana.com/address/proKtffCScMcwkFkPHFcuHawN7mWxRkhyh8PGxkTwYx)	 

However, note that testing on the public testnet is prohibited by the program rules. The public testnet is provided for reference only.

Documentation and instruction for PoC can be found here:
- TODO

A public testnet of Raydium’s AMM can be found at [https://explorer.solana.com/address/CPMDWBwJDtYax9qW7AyRuVC19Cc4L4Vcy4n2BHAbHkCW?cluster=devnet](https://explorer.solana.com/address/CPMDWBwJDtYax9qW7AyRuVC19Cc4L4Vcy4n2BHAbHkCW?cluster=devnet).

If a Critical Impact can be caused to any other asset managed by Raydium that isn’t on this table but for which the impact is in the Impacts in Scope section below, you are encouraged to submit it for the consideration by the project. This only applies to Critical impacts.c:["$","$L

## Rewards / payout terms

Rewards are distributed according to the impact of the vulnerability based on the [ Immunefi Vulnerability Severity Classification System V2.3.](https://immunefi.com/immunefi-vulnerability-severity-classification-system-v2-3/) This is a simplified 5-level scale, with separate scales for websites/apps, smart contracts, and blockchains/DLTs, focusing on the impact of the vulnerability reported. 

All bug reports must include a Proof of Concept (PoC) demonstrating how the vulnerability can be exploited to impact an asset-in-scope to be eligible for a reward. Critical and High severity bug reports should also include a suggestion for a fix. Explanations and statements are not accepted as PoC and code is required.

Rewards for critical smart contract bug reports will be further capped at __10%__ of direct funds at risk if the bug discovered is exploited. However, there is a minimum reward of __USD 50 000__.

The following vulnerabilities are not eligible for a reward:

- For AMMv4, bugs pertaining to OpenBook depenencies are not in scope. AMMv4 is set to Status 6, which means liquidity is not shared to OpenBook markets. 

- For the CLMM contract, vulnerabilities marked in the [Ottersec security review](https://drive.google.com/file/d/1d9SiGarziu9TgPKO_6sAG8odr2qBdMO0/view?usp=share_link) are not eligible for a reward. For the Hybrid AMM program, vulnerabilities marked in the [Kudelski security review](https://drive.google.com/file/d/1q_2NpwlQmEGfMXQ7w8l6U5XjT2AqOWlC/view?usp=sharing), [Ottersec security review](https://drive.google.com/file/d/1hxFVIRgNEcCqr02yQMwTpHMQUM3LTt5g/view?usp=sharing), and [MadShield security review](https://drive.google.com/file/d/1GVDUrKziNJ9Ut8ewO7vCtqFem2MaVAjH/view) are not eligible for a reward. 
- The CLMM contract emits trading fee and farming yield tokens to LPs. If tokens from the vault or fees were drained by an attacker however, users would not be able to claim yield and transactions would fail. This is by design and not a vulnerability.

Payouts are handled by the __Raydium__ team directly and are denominated in USD. However, payouts are done in __RAY__, __SOL__ or __USDC__.

## Program overview

Raydium is an automated market maker (AMM) built on Solana.

For more information about Raydium, please visit [https://raydium.io/.](https://raydium.io/)

