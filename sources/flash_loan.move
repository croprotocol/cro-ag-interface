module core::flash_loan {
    use sui::types;
    use sui::coin;
    use sui::balance;

    use core::admin;
    use core::treasury;
    use core::protocol_fee;
    use core::utils;
    use core::version;
    use core::events;

    public struct FlashLoanGlobalConfig has store, key {
        id: object::UID,
        version: u64,
        protocol_fee_percent_base_18: u64,
        staker_interest_percent_base_18: u64,
        total_staked: u64,
    }

    public fun change_fee_percentages(
        adminCap: &admin::AdminCap,
        flashLoanGlobalConfig: &mut FlashLoanGlobalConfig,
        version: &mut option::Option<u64>,
        protocol_fee: &mut option::Option<u64>,
        staker_interest: &mut option::Option<u64>,
    ) {
        abort 0
    }

    public struct Receipt<phantom T0> {
        user: address,
        amount: u64,
        typeName: vector<u8>,
        protocol_fee_percent_base_18: u64,
        staker_interest_percent_base_18: u64,
    }

    public(package) fun create_config<T0: drop>(
        witness: &T0, 
        ctx: &mut tx_context::TxContext
    ) : FlashLoanGlobalConfig {
        abort 0
    }

    public fun loan<T>(
        flashLoanGlobalConfig: &FlashLoanGlobalConfig,
        treasury: &mut treasury::Treasury,
        amount: u64,
        ctx: &mut tx_context::TxContext
    ): (Receipt<T>, coin::Coin<T>){
        abort 0
    }

    public fun repay<T>(
        treasury: &mut treasury::Treasury,
        receipt: Receipt<T>, 
        coin_in: coin::Coin<T>,
        ctx: &mut tx_context::TxContext,
    ): coin::Coin<T> {
        abort 0
    }

    fun check_version(flashLoanGlobalConfig: &FlashLoanGlobalConfig) {
        abort 0
    }
}
