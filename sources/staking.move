module core::staking {
    use sui::types;
    use sui::clock;
    use sui::coin;
    use sui::balance;
    use sui::sui::SUI;

    use core::csui;

    use core::admin;
    use core::treasury;
    use core::protocol_fee;
    use core::events;
    use core::version;

    public struct StakeConfig has store, key {
        id: object::UID,
        version: u64,
        tge_time: u64,
        ratio_base_18: u64,
        max_stake_limit: u64,
        total_staked: u64,
    }

    fun check_version(stakeConfig: &StakeConfig) {
        abort 0
    }

    public fun change_stake_config(
        adminCap: &admin::AdminCap,
        stakeConfig: &mut StakeConfig, 
        version: &mut option::Option<u64>,
        tge_time: &mut option::Option<u64>, 
        ratio_base_18: &mut option::Option<u64>,
        max_stake_limit: &mut option::Option<u64>,
    ) {
        abort 0
    }

    public(package) fun create_config<T0: drop>(
        witness: &T0, 
        ctx: &mut tx_context::TxContext
    ) : StakeConfig {
        abort 0
    }

    public fun stake(
        cSUITreasuryCoinfig: &mut csui::CSUITreasuryCoinfig,
        stakeConfig: &mut StakeConfig,
        treasury: &mut treasury::Treasury,
        coin: coin::Coin<SUI>,
        clock: &clock::Clock, 
        ctx: &mut tx_context::TxContext,
    ): coin::Coin<csui::CSUI>
    {   
        abort 0
    }  

    public fun unstake(
        cSUITreasuryCoinfig: &mut csui::CSUITreasuryCoinfig,
        stakeConfig: &mut StakeConfig,
        treasury: &mut treasury::Treasury,
        coin: coin::Coin<csui::CSUI>,
        clock: &clock::Clock, 
        ctx: &mut tx_context::TxContext,
    ): coin::Coin<SUI>
    {   
        abort 0
    }  
}
