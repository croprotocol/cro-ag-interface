module core::treasury {
    use std::type_name;
    use sui::coin::{Self, Coin};
    use sui::balance;
    use sui::bag;
    
    use core::admin;
    use core::version;
    use core::events;

    public struct Treasury has store, key {
        id: object::UID,
        version: u64,
        funds: bag::Bag,
    }
    
    fun check_version(treasury: &Treasury) {
        abort 0
    }
    
    public fun balance_of<T0>(treasury: &mut Treasury) : u64 {
        abort 0
    }
    
    public(package) fun create_treasury(ctx: &mut tx_context::TxContext) : Treasury {
        abort 0
    }

    public fun deposit<T0>(treasury: &mut Treasury, coin: Coin<T0>) {
        abort 0
    }

    public fun withdraw<T0>( 
        admin_cap: &admin::AdminCap,
        treasury: &mut Treasury,
        ctx: &mut tx_context::TxContext
    ) {
        abort 0
    }

    public fun withdraw_some<T0>(
        admin_cap: &admin::AdminCap,
        treasury: &mut Treasury,
        amount: u64,
        ctx: &mut tx_context::TxContext
    ): coin::Coin<T0>{
        abort 0
    }

    public(package) fun borrow_from_treasury<T0>(
        treasury: &mut Treasury, 
    ): &mut balance::Balance<T0>{
        abort 0
    }
}
