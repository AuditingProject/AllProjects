# aave — Immunefi scope

- Program: https://immunefi.com/bug-bounty/aave/scope/
- Max bounty: **$1,000,000**
- KYC required: **yes**
- Launched 2023-10-18, program updated 2026-04-17
- Fetched: 2026-10-20

## Rewards by severity

| Asset type | Severity | Reward |
|---|---|---|
| Smart contract | Critical | $50,000 – $1,000,000 (10% of funds at risk) |
| Smart contract | High | $10,000 – $75,000 |
| Smart contract | Medium | $10,000 |
| Smart contract | Low | $1,000 |

## Assets in scope (83)

| # | Type | Asset | Description |
|---|---|---|---|
| 1 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/configuration/PoolAddressesProvider.sol | Aave v3 PoolAddressesProvider |
| 2 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/configuration/ACLManager.sol | Aave v3 ACLManager |
| 3 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/pool/Pool.sol | Aave v3 Pool |
| 4 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/pool/L2Pool.sol | Aave v3 L2Pool |
| 5 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/pool/PoolConfigurator.sol | Aave v3 Pool Configurator |
| 6 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/misc/DefaultReserveInterestRateStrategyV2.sol | Aave v3 DefaultReserveInterestRateStrategyV2 |
| 7 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/misc/aave-upgradeability/BaseImmutableAdminUpgradeabilityProxy.sol | Aave v3 Upgradability - BaseImmutableAdminUpgradeabilityProxy |
| 8 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/misc/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol | Aave v3 Upgradability - InitializableImmutableAdminUpgradabilityProxy |
| 9 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/misc/aave-upgradeability/VersionedInitializable.sol | Aave v3 Upgradability - VersionedInitializable |
| 10 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/configuration/ReserveConfiguration.sol | Aave v3 Global configurations - Reserve Configuration |
| 11 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/configuration/UserConfiguration.sol | Aave v3 Global configurations - User Configuration |
| 12 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/BorrowLogic.sol | Aave v3 Logic Libraries - Borrow Logic |
| 13 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/BridgeLogic.sol | Aave v3 Logic Libraries - Bridge Logic |
| 14 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/CalldataLogic.sol | Aave v3 Logic Libraries - Calldata Logic |
| 15 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/ConfiguratorLogic.sol | Aave v3 Logic Libraries - Configurator Logic |
| 16 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/EModeLogic.sol | Aave v3 Logic Libraries - EMode Logic |
| 17 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/FlashLoanLogic.sol | Aave v3 Logic Libraries - Flash Loan Logic |
| 18 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/GenericLogic.sol | Aave v3 Logic Libraries - Generic Logic |
| 19 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/IsolationModeLogic.sol | Aave v3 Logic Libraries - Isolation Mode Logic |
| 20 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/LiquidationLogic.sol | Aave v3 Logic Libraries - Liquidation Logic |
| 21 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/PoolLogic.sol | Aave v3 Logic Libraries - Pool Logic |
| 22 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/ReserveLogic.sol | Aave v3 Logic Libraries - Reserve Logic |
| 23 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/SupplyLogic.sol | Aave v3 Logic Libraries - Supply Logic |
| 24 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/logic/ValidationLogic.sol | Aave v3 Logic Libraries - Validation Logic |
| 25 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/math/MathUtils.sol | Aave v3 Math Libraries - Math Utils |
| 26 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/math/PercentageMath.sol | Aave v3 Math Libraries - Percentage Math |
| 27 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/libraries/math/WadRayMath.sol | Aave v3 Math Libraries - WadRayMath |
| 28 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/tokenization/AToken.sol | Aave v3 AToken |
| 29 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/protocol/tokenization/VariableDebtToken.sol | Aave v3 VariableDebtToken |
| 30 | Smart contract | https://github.com/aave/aave-v3-core/blob/master/contracts/protocol/tokenization/StableDebtToken.sol | Aave v3 StableDebtToken |
| 31 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/misc/AaveOracle.sol | Aave v3 AaveOracle |
| 32 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/helpers/L2Encoder.sol | Aave v3 L2Encoder |
| 33 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/misc/PriceOracleSentinel.sol | Aave v3 Price Oracle Sentinel |
| 34 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/rewards/RewardsController.sol | Aave v3 Periphery - Rewards Controller |
| 35 | Smart contract | https://github.com/aave-dao/aave-v3-origin/blob/main/src/contracts/rewards/EmissionManager.sol | Aave v3 Emission Manager |
| 36 | Smart contract | https://github.com/bgd-labs/aave-collector-unification/blob/main/src/contracts/Collector.sol | Aave v3 Collector |
| 37 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/aave/oracle/GhoOracle.so | Aave v3 GhoOracle |
| 38 | Smart contract | https://github.com/bgd-labs/aave-stk-gov-v3/blob/main/src/contracts/StakedAaveV3.sol | Aave Safety Module Staked Aave v3 |
| 39 | Smart contract | https://github.com/bgd-labs/stake-token/blob/main/src/contracts/StakeToken.sol | new Aave Safety Module (stkABPT and stkGHO) |
| 40 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/configuration/LendingPoolAddressesProvider.sol | Aave v2 LendingPoolAddressProvider |
| 41 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/lendingpool/LendingPool.sol | Aave v2 LendingPool |
| 42 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/lendingpool/LendingPoolCollateralManager.sol | Aave v2 LendingPoolCollateralManager |
| 43 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/lendingpool/DefaultReserveInterestRateStrategy.sol | Aave v2 DefaultReserveInterestRateStrategy |
| 44 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/lendingpool/LendingPoolConfigurator.sol | Aave v2 LendingPoolConfigurator |
| 45 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/aave-upgradeability/BaseImmutableAdminUpgradeabilityProxy.sol | Aave v2 BaseImmutableAdminUpgradeabilityProxy |
| 46 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol | Aave v2 InitializableImmutableAdminUpgradeabilityProxy |
| 47 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/aave-upgradeability/VersionedInitializable.sol | Aave v2 VersionedInitializable |
| 48 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/configuration/ReserveConfiguration.sol | Aave v2 Global configurations - Reserve Configuration |
| 49 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/configuration/UserConfiguration.sol | Aave v2 Global configurations - User Configuration |
| 50 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/logic/GenericLogic.sol | Aave v2 Logic libraries - GenericLogic |
| 51 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/logic/ReserveLogic.sol | Aave v2 Logic libraries - ReserveLogic |
| 52 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/logic/ValidationLogic.sol | Aave v2 Logic libraries - ValidationLogic |
| 53 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/math/MathUtils.sol | Aave v2 Math libraries - MathUtils |
| 54 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/math/PercentageMath.sol | Aave v2 Math libraries - PercentageMath |
| 55 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/libraries/math/WadRayMath.sol | Aave v2 Math libraries - WadRayMath |
| 56 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/tokenization/AToken.sol | Aave v2 AToken |
| 57 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/tokenization/VariableDebtToken.sol | Aave v2 VariableDebtToken |
| 58 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/protocol/tokenization/StableDebtToken.sol | Aave v2 StableDebtToken |
| 59 | Smart contract | https://github.com/aave/protocol-v2/blob/master/contracts/misc/AaveOracle.sol | Aave v2 Aave Oracle |
| 60 | Smart contract | https://etherscan.io/address/0x8A32f49FFbA88aba6EFF96F45D8BD1D4b3f35c7D | Aave v2 Lending Rate Oracle |
| 61 | Smart contract | https://etherscan.io/address/0xEFFC18fC3b7eb8E676dac549E0c693ad50D1Ce31 | Aave v2 WrappedTokenGatewayV2 |
| 62 | Smart contract | https://etherscan.io/address/0x464C71f6c2F760DdA6093dCB91C24c39e5d6e18c | Aave v2 Collector |
| 63 | Smart contract | https://github.com/aave/ | Primacy of Impact Placeholder |
| 64 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/gsm/Gsm.sol | GSM |
| 65 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/gsm/priceStrategy/FixedPriceStrategy.sol | FixedPriceStrategy |
| 66 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/gsm/feeStrategy/FixedFeeStrategy.sol | FixedFeeStrategy |
| 67 | Smart contract | https://github.com/bgd-labs/solidity-utils/blob/7a7548c1d01f011febdb1c0d47e52c7ec6c30f9d/src/contracts/transparent-proxy/TransparentUpgradeableProxy.sol | TransparentUpgradeableProxy |
| 68 | Smart contract | https://github.com/bgd-labs/aave-governance-v3/blob/main/src/contracts/Governance.sol | Governance |
| 69 | Smart contract | https://github.com/bgd-labs/aave-governance-v3/blob/main/src/contracts/voting/VotingStrategy.sol | VotingStrategy |
| 70 | Smart contract | https://github.com/bgd-labs/aave-governance-v3/blob/main/src/contracts/GovernancePowerStrategy.sol | GovernancePowerStrategy |
| 71 | Smart contract | https://github.com/bgd-labs/aave-governance-v3/blob/main/src/contracts/voting/VotingMachine.sol | VotingMachine |
| 72 | Smart contract | https://github.com/bgd-labs/aave-governance-v3/blob/main/src/contracts/voting/DataWarehouse.sol | DataWarehouse |
| 73 | Smart contract | https://github.com/bgd-labs/aave-governance-v3/blob/main/src/contracts/payloads/Executor.sol | Executor |
| 74 | Smart contract | https://github.com/bgd-labs/aave-governance-v3/blob/main/src/contracts/payloads/PayloadsController.sol | PayloadsController |
| 75 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/gho/UpgradeableGhoToken.sol | UpgradeableGhoToken |
| 76 | Smart contract | https://github.com/aave/ccip/blob/d5c6cedde6fbca9890a92a55f2db80e94793d0ec/contracts/src/v0.8/ccip/pools/GHO/UpgradeableLockReleaseTokenPool.sol | UpgradeableLockReleaseTokenPool |
| 77 | Smart contract | https://github.com/aave/ccip/blob/d5c6cedde6fbca9890a92a55f2db80e94793d0ec/contracts/src/v0.8/ccip/pools/GHO/UpgradeableBurnMintTokenPool.sol | UpgradeableBurnMintTokenPool |
| 78 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/gho/GhoToken.sol | GhoToken |
| 79 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/flashMinter/GhoFlashMinter.sol | GhoFlashMinter |
| 80 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/gsm/Gsm4626.sol | GSM4626 |
| 81 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/gsm/priceStrategy/FixedPriceStrategy4626.sol | FixedPriceStrategy4626 |
| 82 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/gsm/GhoReserve.sol | GhoReserve |
| 83 | Smart contract | https://github.com/aave-dao/gho-origin/blob/main/src/contracts/facilitators/gsm/OwnableFacilitator.sol | OwnableFacilitator |

## Repositories cloned

| Folder | Repo | Checked-out ref | HEAD | Listed as |
|---|---|---|---|---|
| `aave-v3-origin/` | https://github.com/aave-dao/aave-v3-origin | origin/main | 8305565 2026-09-09 chore: update solidity utils (#200) | in-scope asset |
| `aave-v3-core/` | https://github.com/aave/aave-v3-core | origin/master | 782f5191 2024-09-03 chore: deprecate for 3.1 origin | in-scope asset |
| `aave-collector-unification/` | https://github.com/bgd-labs/aave-collector-unification | origin/main | 308489d 2023-12-01 Merge pull request #6 from bgd-labs/misc/update-env-example | in-scope asset |
| `gho-origin/` | https://github.com/aave-dao/gho-origin | origin/main | 2af4493 2026-10-08 refactor: simplify StkGhoMigrator.migrate (#47) | in-scope asset |
| `aave-stk-gov-v3/` | https://github.com/bgd-labs/aave-stk-gov-v3 | origin/main | 0c4cb0b 2023-12-22 Merge pull request #30 from bgd-labs/fix/balance-test | in-scope asset |
| `stake-token/` | https://github.com/bgd-labs/stake-token | origin/main | 5346765 2024-03-04 fix: gas saving (#8) | in-scope asset |
| `protocol-v2/` | https://github.com/aave/protocol-v2 | origin/master | ce53c4a8 2023-01-11 Merge pull request #324 from aave/feat/flashloanable-flag | in-scope asset |
| `solidity-utils/` | https://github.com/bgd-labs/solidity-utils | 7a7548c1d01f011febdb1c0d47e52c7ec6c30f9d | 7a7548c 2023-10-18 fix: virtualized transfer methods (#30) | in-scope asset |
| `aave-governance-v3/` | https://github.com/bgd-labs/aave-governance-v3 | origin/main | 497226e 2026-07-30 feat: monad cleanup (#88) | in-scope asset |
| `ccip/` | https://github.com/aave/ccip | d5c6cedde6fbca9890a92a55f2db80e94793d0ec | d5c6cedde6 2025-01-06 docs: Add Certora Audit Report for CCIP 1.5.1 (#29) | in-scope asset |

In-scope paths inside `aave-v3-origin/` (34):

- `src/contracts/protocol/configuration/PoolAddressesProvider.sol`
- `src/contracts/protocol/configuration/ACLManager.sol`
- `src/contracts/protocol/pool/Pool.sol`
- `src/contracts/protocol/pool/L2Pool.sol`
- `src/contracts/protocol/pool/PoolConfigurator.sol`
- `src/contracts/misc/DefaultReserveInterestRateStrategyV2.sol`
- `src/contracts/misc/aave-upgradeability/BaseImmutableAdminUpgradeabilityProxy.sol`
- `src/contracts/misc/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol`
- `src/contracts/misc/aave-upgradeability/VersionedInitializable.sol`
- `src/contracts/protocol/libraries/configuration/ReserveConfiguration.sol`
- `src/contracts/protocol/libraries/configuration/UserConfiguration.sol`
- `src/contracts/protocol/libraries/logic/BorrowLogic.sol`
- `src/contracts/protocol/libraries/logic/BridgeLogic.sol`
- `src/contracts/protocol/libraries/logic/CalldataLogic.sol`
- `src/contracts/protocol/libraries/logic/ConfiguratorLogic.sol`
- `src/contracts/protocol/libraries/logic/EModeLogic.sol`
- `src/contracts/protocol/libraries/logic/FlashLoanLogic.sol`
- `src/contracts/protocol/libraries/logic/GenericLogic.sol`
- `src/contracts/protocol/libraries/logic/IsolationModeLogic.sol`
- `src/contracts/protocol/libraries/logic/LiquidationLogic.sol`
- `src/contracts/protocol/libraries/logic/PoolLogic.sol`
- `src/contracts/protocol/libraries/logic/ReserveLogic.sol`
- `src/contracts/protocol/libraries/logic/SupplyLogic.sol`
- `src/contracts/protocol/libraries/logic/ValidationLogic.sol`
- `src/contracts/protocol/libraries/math/MathUtils.sol`
- `src/contracts/protocol/libraries/math/PercentageMath.sol`
- `src/contracts/protocol/libraries/math/WadRayMath.sol`
- `src/contracts/protocol/tokenization/AToken.sol`
- `src/contracts/protocol/tokenization/VariableDebtToken.sol`
- `src/contracts/misc/AaveOracle.sol`
- `src/contracts/helpers/L2Encoder.sol`
- `src/contracts/misc/PriceOracleSentinel.sol`
- `src/contracts/rewards/RewardsController.sol`
- `src/contracts/rewards/EmissionManager.sol`

In-scope paths inside `aave-v3-core/` (1):

- `contracts/protocol/tokenization/StableDebtToken.sol`

In-scope paths inside `aave-collector-unification/` (1):

- `src/contracts/Collector.sol`

In-scope paths inside `gho-origin/` (11):

- `src/contracts/facilitators/aave/oracle/GhoOracle.so`
- `src/contracts/facilitators/gsm/Gsm.sol`
- `src/contracts/facilitators/gsm/priceStrategy/FixedPriceStrategy.sol`
- `src/contracts/facilitators/gsm/feeStrategy/FixedFeeStrategy.sol`
- `src/contracts/gho/UpgradeableGhoToken.sol`
- `src/contracts/gho/GhoToken.sol`
- `src/contracts/facilitators/flashMinter/GhoFlashMinter.sol`
- `src/contracts/facilitators/gsm/Gsm4626.sol`
- `src/contracts/facilitators/gsm/priceStrategy/FixedPriceStrategy4626.sol`
- `src/contracts/facilitators/gsm/GhoReserve.sol`
- `src/contracts/facilitators/gsm/OwnableFacilitator.sol`

In-scope paths inside `aave-stk-gov-v3/` (1):

- `src/contracts/StakedAaveV3.sol`

In-scope paths inside `stake-token/` (1):

- `src/contracts/StakeToken.sol`

In-scope paths inside `protocol-v2/` (20):

- `contracts/protocol/configuration/LendingPoolAddressesProvider.sol`
- `contracts/protocol/lendingpool/LendingPool.sol`
- `contracts/protocol/lendingpool/LendingPoolCollateralManager.sol`
- `contracts/protocol/lendingpool/DefaultReserveInterestRateStrategy.sol`
- `contracts/protocol/lendingpool/LendingPoolConfigurator.sol`
- `contracts/protocol/libraries/aave-upgradeability/BaseImmutableAdminUpgradeabilityProxy.sol`
- `contracts/protocol/libraries/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol`
- `contracts/protocol/libraries/aave-upgradeability/VersionedInitializable.sol`
- `contracts/protocol/libraries/configuration/ReserveConfiguration.sol`
- `contracts/protocol/libraries/configuration/UserConfiguration.sol`
- `contracts/protocol/libraries/logic/GenericLogic.sol`
- `contracts/protocol/libraries/logic/ReserveLogic.sol`
- `contracts/protocol/libraries/logic/ValidationLogic.sol`
- `contracts/protocol/libraries/math/MathUtils.sol`
- `contracts/protocol/libraries/math/PercentageMath.sol`
- `contracts/protocol/libraries/math/WadRayMath.sol`
- `contracts/protocol/tokenization/AToken.sol`
- `contracts/protocol/tokenization/VariableDebtToken.sol`
- `contracts/protocol/tokenization/StableDebtToken.sol`
- `contracts/misc/AaveOracle.sol`

In-scope paths inside `solidity-utils/` (1):

- `src/contracts/transparent-proxy/TransparentUpgradeableProxy.sol`

In-scope paths inside `aave-governance-v3/` (7):

- `src/contracts/Governance.sol`
- `src/contracts/voting/VotingStrategy.sol`
- `src/contracts/GovernancePowerStrategy.sol`
- `src/contracts/voting/VotingMachine.sol`
- `src/contracts/voting/DataWarehouse.sol`
- `src/contracts/payloads/Executor.sol`
- `src/contracts/payloads/PayloadsController.sol`

In-scope paths inside `ccip/` (2):

- `contracts/src/v0.8/ccip/pools/GHO/UpgradeableLockReleaseTokenPool.sol`
- `contracts/src/v0.8/ccip/pools/GHO/UpgradeableBurnMintTokenPool.sol`

## Deployed verified source

Explorer-verified source was pulled for the in-scope deployed contracts and saved under `deployed-source/<address>__<label>/`, each with a `meta.json` recording the explorer, match type, contract name and compiler version. `deployed-source/manifest.json` is the full machine-readable record.

- **3 of 3** in-scope addresses have full source on disk.

Sources: sourcify (3).

| Address | Asset | Verified contract | Folder |
|---|---|---|---|
| `0x8A32f49FFbA8` | Aave v2 Lending Rate Oracle | `LendingRateOracle.sol:LendingRateOracle` | `deployed-source/0x8A32f49FFbA8__Aave_v2_Lending_Rate_Oracle/` |
| `0xEFFC18fC3b7e` | Aave v2 WrappedTokenGatewayV2 | `contracts/WrappedTokenGatewayV2.sol:WrappedTokenGatewayV2` | `deployed-source/0xEFFC18fC3b7e__Aave_v2_WrappedTokenGatewayV2/` |
| `0x464C71f6c2F7` | Aave v2 Collector | `browser/tests/Proxy.sol:InitializableAdminUpgradeabilityProxy` | `deployed-source/0x464C71f6c2F7__Aave_v2_Collector/` |

## In-scope assets with no repo to clone

Deployed contracts, explorer links and web assets. No matching public source repo was identified, so nothing was cloned for these; they are listed here for manual follow-up.

- [Smart contract] https://etherscan.io/address/0x8A32f49FFbA88aba6EFF96F45D8BD1D4b3f35c7D — Aave v2 Lending Rate Oracle
- [Smart contract] https://etherscan.io/address/0xEFFC18fC3b7eb8E676dac549E0c693ad50D1Ce31 — Aave v2 WrappedTokenGatewayV2
- [Smart contract] https://etherscan.io/address/0x464C71f6c2F760DdA6093dCB91C24c39e5d6e18c — Aave v2 Collector
- [Smart contract] https://github.com/aave/ — Primacy of Impact Placeholder

## Impacts in scope

**Smart contract — Critical**
- Major manipulation of governance voting results deviating from voted outcome, whenever protection mechanisms (e.g. cancellation of proposal) can’t mitigate the damage.
- Direct theft of any user funds classified as the principal, whether at-rest or in-motion
- Permanent locking of user funds classified as the principal or funds of the Aave treasury
- Protocol insolvency

**Smart contract — High**
- Direct theft of any funds in the Aave Treasury
- Theft of yield, defined as funds not classified as the principal (not including yield yet to be earned)
- Permanent locking of unclaimed yield of users, defined as funds not classified as the principal (not including yield yet to be earned)
- Temporary locking of funds classified as the principal or funds of the Aave treasury

**Smart contract — Low**
- Contract fails to deliver promised returns, but doesn't lose value
- Griefing
- Imprecision on accounting (balances, rates)
- Theft of gas Low
- Griefing

**Smart contract — Medium**
- Smart contract unable to operate due to lack of token funds
- Loss of rewards-to-be-accrued
- Manipulation of interest rates (supply or borrow) with mechanisms not intended or limited by design
- Unexpected infrastructural behavior

## Notes on assets

All code of Aave can be found at [https://github.com/aave-dao](https://github.com/aave-dao), [https://github.com/aave/](https://github.com/aave/), [https://github.com/aave-dao](https://github.com/aave-dao) and [https://github.com/bgd-labs](https://github.com/bgd-labs) . All production addresses can be found at  [https://github.com/bgd-labs/aave-address-book/tree/main.](https://github.com/bgd-labs/aave-address-book/tree/main)

## Notes on impacts

Keep in mind the restrictions on impacts based on the respective asset:
- For all assets labeled as “Aave v2” and deployed on the Ethereum network, only Critical and High impacts are in-scope. 
- For all assets labeled as “Aave v2” and deployed on networks other than Ethereum, including L2s on Ethereum, onlyCritical impacts are in-scope.

## Rewards / payout terms

Rewards are distributed according to the impact the vulnerability could otherwise cause based on the Impacts in Scope table further below. 

__Reward Calculation for Critical Level Reports__

For critical Smart Contract bugs, the reward amount is 10% of the funds directly affected up to a maximum of USD 1 000 000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 50 000 is to be rewarded in order to incentivize security researchers against withholding a bug report.
There needs to be an absolute minimum of USD 10 000 at risk in order to be considered Critical.

__Reward Calculation for Direct theft of any funds in the Aave Treasury__

For the impact “Direct theft of any funds in the Aave Treasury”, which is considered as High, the reward amount is 10% of the funds directly affected up to a maximum of USD 75 000. The calculation of the amount of funds at risk is based on the time and date the bug report is submitted. However, a minimum reward of USD 10 000 is to be rewarded.
There needs to be a minimum of USD 5 000 at risk in order to be considered as High affecting the Aave Treasury.

__Repeatable Attack Limitations__

In cases of repeatable attacks for smart contract bugs, the amount of funds at risk will be calculated within the first 45 minutes from the first attack, inclusive, no matter how many times the attack can be executed within that time frame, as demonstrated by the PoC provided by the security researcher. 

Example 1:  vulnerability is discovered that can steal USD 1 million 30 times within 45 minutes from the first execution of the attack, then the funds at risk is considered as USD 30 million. 

Example 2: if a vulnerability is discovered that can steal USD 1 million once every 45 minutes from the first execution of the attack, then the funds at risk is considered as USD 1 million.

However, for smart contracts directly holding funds that can’t be protected, if a discovered vulnerability includes the temporary locking of funds that could otherwise be withdrawn and thus prevented from being stolen but still accessible to the exploiter to take the funds, the time is extended to the exact same time as temporary locking. Extensions of the temporary locking that introduce a gap where withdrawals can happen will not be considered. 


__Reward Calculation for High Level Reports__

High smart contract vulnerabilities will be capped at up to 100% of the funds affected. In the event of temporary locking, the reward doubles for every additional 3600 blocks that the funds or NFTs could be temporarily locked, rounded down to the nearest multiple of 3600 blocks, up to the hard cap of USD 75 000. However, there is a further hard cap of 1000% of the funds affected after the multiplier effect of the duration of temporary locking. 

If the duration of temporary locking is 3600 blocks or less, then the severity level will be reduced to Medium if the amount is equal to or greater than USD 1 000 000. If not, the severity level will be downgraded to Low. 

There needs to be a minimum of USD 5 000 at risk in order for a report to be considered High.

Unless downgraded, all bug reports with a severity level of High at the end of the evaluation of the bug report will have a minimum reward of USD 10 000. 

__Restrictions on Security Researcher Eligibility__

Security researchers who fall under any of the following are INELIGIBLE for a reward:

- Official Contributors, defined as:
   - Developers who have worked on Aave Labs, BGD, or any other party officially engaged with the DAO for the development of the contracts in scope. 
   - Security auditors/firms that directly or indirectly participated in the review of the code impacted. For example, an audit firm/security researcher who audited Aave v3.1 is not eligible for bounties regarding any problem related with v3.1.
   - White-hats who already reported the same type of bug, with the same type defined as easy to infer by an Aave-expert party, like the Immunefi reviewers.

Security researchers who fall under any of the following are explicitly ELIGIBLE for a reward:
- Independent security researchers who didn’t officially review the part of the code impacted.
- Independent contributors to Aave via sporadic commits.
- Former Official Contributors are eligible if their last contribution has been more than 24 months before the bug report. 


__Previous Audits__

GHO

- https://github.com/aave-dao/gho-origin/blob/main/audits/2023-03-01_ABDK.pdf
- https://github.com/aave-dao/gho-origin/blob/main/audits/2022-08-12_Openzeppelin-v1.pdf
- https://github.com/aave-dao/gho-origin/blob/main/audits/2022-11-10_Openzeppelin-v2.pdf
- https://github.com/aave-dao/gho-origin/blob/main/audits/2023-07-06_SigmaPrime.pdf
- https://github.com/aave-dao/gho-origin/blob/main/audits/2023-09-20_GSM_Stermi.pdf
- https://github.com/aave-dao/gho-origin/blob/main/audits/2023-10-23_GSM_SigmaPrime.pdf
- https://github.com/aave-dao/gho-origin/blob/main/certora/reports/Aave_Gho_Formal_Verification_Report.pdf
- https://github.com/aave-dao/gho-origin/blob/main/certora/reports/Formal_Verification_Report_of_GHO_Stability_Module.pdf
- https://github.com/aave-dao/gho-origin/blob/main/audits/2024-06-11_UpgradeableGHO_Certora.pdf
- https://github.com/aave-dao/gho-origin/blob/main/audits/2024-09-15_ModularGhoStewards_Certora.pdf
- https://github.com/aave-dao/gho-origin/blob/main/audits/2025-07-15_RemoteGSM_Certora.pdf


V3.3
- https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-11-07_Certora_Aave-v3.3.0.pdf
- https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-10-22_StErMi_Aave-v3.3.pdf
- https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-01-29_Oxorio_Aave-v3.3.0.pdf
- https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2025-01-22_Sherlock_Aave-v3.3.0.pdf

V3.2
- https://github.com/aave-dao/aave-v3-origin/blob/main/audits/2024-09-10_Certora_Aave-v3.2_Stable_Rate

## Program overview

Aave is a decentralized non-custodial liquidity protocol where users can participate as suppliers or borrowers in a common pool. Suppliers provide liquidity to earn a passive income, while borrowers are able to borrow in an overcollateralized (perpetually) or undercollateralized (one-block liquidity) fashion.

For more information about Aave, please visit [https://aave.com/.](https://aave.com/) 

Aave provides rewards in a mix of AAVE and stablecoins. For more details about the payment process, please view the Rewards by Threat Level section further below. 

Aave is represented by its service providers [BGD Labs](https://twitter.com/bgdlabs) (Aave v2/v3/SM/Governance) and [Aave Labs](https://twitter.com/aaveaave) (GHO). BGD and Aave Labs as appointed representatives of the DAO exclusively in this context, based on a successful Aave governance proposal. 

__KYC Requirement__

The provision of KYC may be required for a reward for this bug bounty program at the discretion of the DAO representative or representatives. If KYC is requested, the following information will be required to be done:
- Live video call where the following may be asked:
   - Government-issued ID 

KYC will not be required for bug reports classified with a severity level as Medium or Low.

__Responsible Publication__

Aave adheres to category 3. This Policy determines what information whitehats are allowed to make public from their submitted bug reports. For more information about the category selected, please refer to our [Responsible Publication](https://immunefi.com/responsible-publication/) page.

__Primacy of Impact vs Primacy of Rules__

Aave adheres to the Primacy of Impact for the following impacts:

- Smart Contract - Critical - Major manipulation of governance voting result deviating from voted outcome, whenever protection mechanisms (e.g. cancellation of proposal) can’t mitigate the damage. 
- Smart Contract - Critical - Direct theft of any user funds classified as the principal, whether at-rest or in-motion, if more than 100 USD value and representing minimum 1% of the user’s position.
- Smart Contract - Critical - Permanent locking of user funds classified as the principal, whenever no rescue of any type can be performed.

If an impact is covered within the Primacy of Impact, it means that even if the impacted asset is not in-scope but is owned by the project, then it would be considered as in-scope of the bug bounty program. Only sub-systems of Aave and sub-systems of GHO explicitly mentioned in the section “Other Terms and Information” are considered as owned by the project, anything outside that is not eligible for any bounty. When submitting a report, just select the Primacy of Impact asset placeholder. If the impact affects something in any of the related GitHub repositories, select the placeholder containing the link to the specific repository instead. 

If the team behind this project has multiple projects, those other projects are not covered under the Primacy of Impact of this program. Instead, check if those other projects have a bug bounty program on Immunefi.

Testnet and mock files, as well as non-active features, defined as features that 1) are not introduced in production and 2) are not able to be used due to configurations of the protocol, are not covered under the Primacy of Impact.

All other impacts are considered under the Primacy of Rules, which means that they are bound by the terms of the bug bounty program.


__Immunefi Standard Badge__

Aave has satisfied the requirements for the [Immunefi Standard Badge](https://immunefisupport.zendesk.com/hc/en-us/articles/15006865432209), which is given to projects that adhere to our best practices. 

__Governance-Run Program__

This bug bounty program is governed by a governance proposal. To view the governance proposal poll, visit [https://app.aave.com/governance/proposal/?proposalId=325](https://app.aave.com/governance/proposal/?proposalId=325) .4d:T5003

