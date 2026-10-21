# Snowbridge On-Chain Code — HackenProof scope

- Program: https://hackenproof.com/programs/snowbridge-on-chain-code
- Platform: **HackenProof** (company: Snowbridge)
- Status: **Active** · no end date
- Max bounty: **$75,000**
- KYC required · **PoC required** · min reputation 100 · triaged by HackenProof
- Collected: 2026-10-20

## Rewards

| Severity | Reward |
|---|---|
| Critical | $30,000 – $75,000 |
| High | $6,000 – $20,000 |
| Medium | $2,000 – $5,000 |
| Low | $200 – $1,000 |

## Assets in scope (2)

| # | Severity | Type | Target | Description |
|---|---|---|---|---|
| 1 | Critical | Smart Contract | https://github.com/Snowfork/snowbridge | Ethereum Contracts which cover our Beefy Light Client, Parachain Light Client, Gateway, Agent, Messaging Protocol and Asset transfer functionality |
| 2 | Critical | Smart Contract | https://github.com/paritytech/polkadot-sdk/tree/master/bridges/snowbridge | Pallets and support crates that are deployed to the BridgeHub parachain |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD |
|---|---|---|---|
| `snowbridge/` | https://github.com/Snowfork/snowbridge | main | caeea22d 2026-10-20 Fix ssz state leak (#1820) |
| `polkadot-sdk/` | https://github.com/paritytech/polkadot-sdk | origin/master | aeb228f7179 2026-10-20 [Release|CI/CD] Add publish delay on publish crates workflow (#11837) |

In-scope paths inside `polkadot-sdk/` (1):

- `bridges/snowbridge`

## Focus area

Docs: https://docs.snowbridge.network/

V2 Arch docs: https://github.com/paritytech/polkadot-sdk/blob/master/bridges/snowbridge/docs/v2.md

App: https://app.snowbridge.network/

BridgeHub parachain explorer (Polkadot): https://bridgehub-polkadot.subscan.io/

Gateway contract (Ethereum: https://etherscan.io/address/0x27ca963c279c93801941e1eb8799c23f407d68e7

Documentation on the crypto-economic security architecture for the Polkadot->Ethereum light client protocol (BEEFY): https://eprint.iacr.org/2025/057.pdf.


## IMPORTANT TO READ SO YOU DO NOT WASTE YOUR TIME

* Where applicable, submissions should contain an analysis or POC for *both* the Polkadot and Ethereum side of the bridge. For example, if an aspect of the implementation of the Ethereum smart contracts is a potential vulnerability but only when in conjunction with an exploitable vulnerability on the Polkadot side of the bridge, then that exploit analysis or POC must be included too.

* Only the BridgeHub parachain can directly send messages to the Gateway contract on Ethereum. This parachain is within Snowbridge's trust domain, and acts a proxy for other parachains in the Polkadot network.

* Missing access control on SnowbridgeL1Adaptor / SnowbridgeL2Adaptor: Reports claiming that depositToken, depositNativeEther, sendTokenAndCall, or the trailing residual-sweep-to-recipient pattern allow theft because any EOA can call them are out of scope. In production, these adaptors are invoked atomically within a single V2 message batch: the AssetHub agent funds them via UnlockNativeToken and consumes them via CallContract in the same transaction. They are never prefunded across transaction boundaries. Exploits of this class rely on a separate, unrelated pre-funding assumption that does not occur in the production flow, and are also captured by the “vulnerabilities that can be exploited through front-run attacks only” exclusion.

* Do not submit reports about missing message.origin checks in the Gateway contract’s V2 handlers. message.origin is informational metadata, not an authorisation input. Only BridgeHub can commit messages to the outbound queue that BEEFY signs for delivery to Ethereum; BridgeHub is within Snowbridge’s trust domain and performs origin binding before committing. The Gateway deliberately does not re-check message.origin on the Gateway deliberately does not re-check message.origin on the Ethereum side.
If you believe you have found a way to get a malicious outbound message committed to BridgeHub’s outbound queue (i.e. accepted for BEEFY signing), you must include a unnable Polkadot-side PoC demonstrating the full path end-to-end. Specifically, the PoC must:

 1. Use the xcm-emulator integration test framework at cumulus/parachains/integration-tests/emulated/ against Westend Asset Hub and Bridge Hub.
 1. Originate from a realistic attacker-controlled origin — a signed user via pallet_xcm::execute/pallet_xcm::send, or a specific sibling parachain via XCMP — not a  hand-constructed Xcm vector, not a direct call to a pallet-internal helper, and not a mocked MessageQueue origin.
 1. Traverse the real AssetHub XCM router stack (PausableExporter + UnpaidRemoteExporter) and the real BridgeHub XCM barrier stack (including AllowExplicitUnpaidExecutionFrom and DenyExportMessageFrom).
 1. Result in an entry appearing in snowbridge-pallet-outbound-queue-v2::Messages storage on Bridge Hub with the Message.origin set to the value you claim the attacker can forge.

* Reports whose PoC consists only of one or more of the following will be marked invalid:   
    
 1. Calling XcmConverter::convert() directly on a handcrafted Xcm vector. This is a unit test of mechanical parsing and bypasses the AssetHub router, BridgeHub  barriers, origin computation, and fee accounting — it proves nothing about reachability.
 1. A Foundry/forge test that submits a handcrafted InboundMessageV2 to a MockGateway after calling setCommitmentsAreVerified(true), or otherwise bypasses real BEEFY verification. The Ethereum side behaves as designed under the trust assumption that the message was committed by Bridge Hub; bypassing that check proves nothing about the full protocol.              
 1. Runtime witness tests that use pallet_xcm::execute with an inline ExportMessage and assert on forwarded XCM shape rather than on a committed Messages entry at Bridge Hub. AssetHub::MessageExporter = () means inline ExportMessage cannot resolve locally.

* BEEFY signature-usage counter “inflation” via repeated submitInitial is out of scope. The per-validator usage counter in BeefyClient.sol is the intended Fiat-Shamir signature-sampling disincentive against repeated use of the same validator, documented at  https://docs.snowbridge.network/architecture/verification/polkadot#signature-sampling and https://hackmd.io/9OedC7icR5m-in_moUZ_WQ. The counter is  per-validator-index, resets each validator-set rotation, and the attacker’s gas cost vastly exceeds any incremental cost imposed on legitimate relayers. Reports describing this mechanism as a griefing / DoS vector will be marked informative


## IN SCOPE VULNERABILITIES
 We are looking for evidence and reasons for incorrect behavior of the smart contract, which could cause unintended functionality:
* Stealing or loss of funds
* Unauthorized transaction
* Transaction manipulation
* Attacks on logic (behavior of the code is different from the business description)
* Reentrancy
* Reordering
* Over and underflows


## OUT OF SCOPE VULNERABILITIES
* Theoretical vulnerabilities without any proof or demonstration
* Old compiler version
* The compiler version is not locked
* Vulnerabilities in imported contracts
* Code style guide violations
* Redundant code
* Gas optimizations
* Best practice issues
* Vulnerabilities that can be exploited through front-run attacks only
* Usage of `delegatecall` in `Agent.sol`
* Relayer incentivization economics in our legacy V1 protocol

## Program rules

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

## Disclosure guidelines

* Do not discuss this program or any vulnerabilities (even resolved ones) outside of the program without express consent from the organization
* No vulnerability disclosure, including partial is allowed for the moment
* Please do NOT publish/discuss bugs.

## Eligibility and coordinated disclosure

We are happy to thank everyone who submits valid reports which help us improve the security. However, only those that meet the following eligibility requirements may receive a monetary reward:

* You must be the first reporter of a vulnerability
* The vulnerability must be a qualifying vulnerability
* Any vulnerability found must be reported no later than 24 hours after discovery and exclusively through hackenproof.com
* You must send a clear textual description of the report along with steps to reproduce the issue, include attachments such as screenshots or proof of concept code as necessary
* You must not be a former or current employee of us or one of its contractor
* ONLY USE the EMAIL under which you registered your HackenProof account (in case of violation, no bounty can be awarded)
* Provide detailed but to-the point reproduction steps.

## Program description

Snowbridge is a general-purpose, trustless, and decentralized bridge between Polkadot and Ethereum.

## SLA

```
{
 "first_response": 7,
 "resolution_time": 14,
 "time_to_reward": 3,
 "time_to_triage": 7
}
```

