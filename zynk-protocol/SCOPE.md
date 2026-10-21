# Zynk Protocol — HackenProof scope

- Program: https://hackenproof.com/programs/zynk-protocol
- Platform: **HackenProof** (company: Zynk)
- Status: **Active** · no end date
- Max bounty: **$5,000**
- KYC required · **PoC required** · min reputation 100 · submission fee 1 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $0 – $5,000 |

## Assets in scope (2)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/Zynklabs/zynk-protocol-solana-programs.public/tree/main/programs/zynk-core | The **Zynk Core** Solana Program is the primary on-chain component responsible for liquidity deployment, settlement, and governance within the Zynk Pr |
| 2 | Critical | Smart Contract | https://github.com/Zynklabs/zynk-protocol-solana-programs.public/tree/main/programs/zynk-orbit | **Zynk Orbit** is a Solana program responsible for managing liquidity provider (LP) fund flows within the Zynk Protocol. Its primary function is to se |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `zynk-protocol-solana-programs.public/` | https://github.com/Zynklabs/zynk-protocol-solana-programs.public | origin/main | e966d5f 2026-09-16 fix: cctp_recipients for ovault |

In-scope paths inside `zynk-protocol-solana-programs.public/` (2):

- `programs/zynk-core`
- `programs/zynk-orbit`

## Explicitly out of scope (1)

HackenProof marks these targets out of scope on the program page. They were **not** cloned as in-scope assets.

- https://github.com/Zynklabs/audit-reports — - Any and all issues already disclosed in the previous audit reports won't be considered.

## Focus area

## IN SCOPE:
All targets are deployed on Solana. Only the Solana programs' code is in scope. Everything else (tests, mocks, scripts, deployment tooling, and third-party dependencies/imports) is out of scope.

## DISCLAIMERS:
- **Mode of operations** With the exception of few orbit functions, all entry points are restricted to protocol-controlled signers. The Admin and Guardian roles are protected by multisig wallets with an appropriate security threshold. Any vulnerability disclosure must take this architectural constraint into account.
- **Recoverable/reversible is never Critical, and recoverable/temporary DoS is Low.** If funds can be recovered or the impact reversed (admin action, pausing, timelock, rescue), or a lock/DoS is cleared by a trusted-role action, ordinary protocol operation or any remedy, it is not "permanent." Critical requires permanent, irreversible, systemic user-fund loss.
- **Single-user vs. systemic.** Loss confined to a single user will not be considered. Critical requires loss across all/many users or protocol insolvency.
- **Version alignment** Any vulnerabilities resulting from the use of toolchain or third-party dependency versions other than those specified by the protocol will not be considered. Researchers are advised to use the exact versions specified.
- **Off-chain dependencies** Certain off-chain components — most notably the yield computation engine for Zynk Orbit — affect the on-chain state. These components are explicitly out of scope but should be considered when evaluating protocol behavior.
    LP deposits land in the ZOV, LP withdrawals are paid from the Ovault. There's no direct visible path in-program for funds to flow from ZOV to Ovault, we take care of this off-chain, during the time of LP withdrawal approval by admin.
- **Intended design decisions**
    - mint whitelisting is an admin/guadian controlled operation and is performed under strict scrutiny by the team. Being said that, even in cases of whitelisting an invalid/unexpected mint, we do not execute fund transfer operations without verification, plus we do have a removal mechanism for whitelisted_mints.
    - `close_orders` function has been deliberately implemented to close orders without the need of replenishing the full amount, in emergency situations, hence, it is accessible by the admin/guardian only.
    - Replenish amount from a partner's PDV is uncapped. Repay forwards the raw amount, Core moves it all from PDV to ZOV but credits only `repay_amount`. A partner's vault can be swept entirely into the shared ZOV. For such cases, we do monitor all our transactions and refund the delta to the partner, if needed.
    - Updating User's `wallets` is solely an admin-controlled operation currently. We intend to extend a user approval function in our later releases.
- **These program rules may be clarified and/or amended at any time, every submission is evaluated against the rules in effect at the time of judging.**

## INVARIANTS:
- Only admin or manager may pause immediately.
- Only admin or guardian can manage beneficiary and mint whitelists.
- All transactions should adhere to the mint whitelisting.
- An order created with a certain token, can only be replenished/closed with the same token.
- `zynk-orbit` does not have any governance, it totally depends on `zynk-core`'s config, except for the `pause` state. Said so, `zynk-orbit` doesn't consist of any pause/unpause mechanism, means LP activities need not be paused, however, the borrow/repay path gets blocked due to `zynk-core`'s pause state.
- For Core transactions, `amount_in` must be greater than or equal to `amount_out`
- A single signer (`manager/admin/guardian`) cannot perform more than one governance operation.
- Guardian update strictly requires both the timelock to be elapsed and the consent of the current Guardian.
- Users (as in LP/ICV/NCW) can interact with the protocol only using the whitelisted `wallets` (max 3).
- Orbit user's net principal (`principal_in` - `principal_out`) must never exceed stored  `max_principal`.
- If `whitelisted_partners` is non-empty, a borrow can only happen for approved partners (extracted numeric code from `partner_id`). If empty, all partners are permitted.
- For CCTP, funds cannot flow from the user PDAs to any other addresses not whitelisted in their `cctp_recipients` list.
- Core orders cannot be created for any other beneficiaries not whitelisted (involves partner mapping)
- Transient orders can be created only if `transient_allowed` for certain beneficiaries. Transient `pull_and_create_order`s are permitted, irrespective of the `transient_allowed` state.
- Within Solana: Funds cannot move out of ICV without an order that comes from allowed partner.
  For CCTP: Funds can only move to a whitelisted recipient (which when the EVM contract goes live, will be a vault created dedicatedly for allowed partners of this ICV). This vault can be separately verified on EVM for the ownership against the declared partners
- Borrow from several ICVs is permissible (total number of PDAs is subject to the transaction size limit). Each borrow can create multiple position PDAs, each for the ICVs involved - which define the share of that specific ICV.
- If multiple ICVs do not suffice the required amount to create an order, the remaining must be facilitated from the ZOV itself. Hence, the borrow shares must take this into consideration.
- Only Orbit can invoke the `replenish_and_repay` function in Core.

## Program rules

- Avoid using web application scanners for automatic vulnerability searching which generates massive traffic
- Make every effort not to damage or restrict the availability of products, services, or infrastructure
- Avoid compromising any personal data, interruption, or degradation of any service
- Don’t access or modify other user data, localize all tests to your accounts
- Perform testing only within the scope
- Don’t exploit any DoS/DDoS vulnerabilities, social engineering attacks, or spam
- Don’t spam forms or account creation flows using automated scanners
- In case you find chain vulnerabilities we’ll pay only for vulnerability with the highest severity.
- Don’t break any law and stay in the defined scope
- Any details of found vulnerabilities must not be communicated to anyone who is not a HackenProof Team or an authorized employee of this Company without appropriate permission
- **All communication regarding the program must take place exclusively through the HackenProof platform.
Contacting the project team directly through support channels, social media, or any other external communication channels is strictly prohibited.
Researchers who violate this rule may be disqualified from the program and may face account suspension.**

## Disclosure guidelines

- Do not discuss this program or any vulnerabilities (even resolved ones) outside of the program without express consent from the organization
- No vulnerability disclosure, including partial is allowed for the moment
- Platform-Only Disclosure: Disclosure is only possible through the HackenProof Disclosure function
- Researchers must not contact the project team directly regarding any findings, questions, or bounty-related matters. All communication must be conducted through the HackenProof platform only
- Researchers may request disclosure (Limited or Full) within the report ticket
- We reserve the right to approve, redact, or deny disclosure requests at our sole discretion
- Mutual Required: Any publication requires explicit mutual agreement. Reports must remain Private until the status is officially changed to "Public" on the HackenProof platform by the team.

## Eligibility and coordinated disclosure

We are happy to thank everyone who submits valid reports which help us improve the security. However, only those that meet the following eligibility requirements may receive a monetary reward:

- You must be the first reporter of a vulnerability
- The vulnerability must be a qualifying vulnerability
- Any vulnerability found must be reported no later than 24 hours after discovery and exclusively through hackenproof.com
- You must send a clear textual description of the report along with steps to reproduce the issue, include attachments such as screenshots or proof of concept code as necessary
- You must not be a former or current employee of us or one of its contractor
- ONLY USE the EMAIL under which you registered your HackenProof account (in case of violation, no bounty can be awarded)
- Provide detailed but to-the point reproduction steps
- AI-generated reports without runable PoC are not accepted under this program.

## Program description

Zynk is a just-in-time liquidity and settlement infrastructure layer for cross-border payment companies. Payment companies often need to pre-fund transactions to provide fast settlements — this ties up capital, slows growth, and makes treasury operations unnecessarily complex. Zynk removes that bottleneck by providing liquidity on a transaction-by-transaction basis, allowing companies to settle faster without locking up idle capital.

## SLA

```
{
 "first_response": 3,
 "resolution_time": 45,
 "time_to_reward": 10,
 "time_to_triage": 5
}
```

