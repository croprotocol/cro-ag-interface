module core::router {
    use std::u64;
    use sui::coin;
    use sui::package;

    use core::events;
    use core::protocol_fee;
    use core::treasury;
    use core::admin;
    use core::utils;
    use core::flash_loan;
    use core::nft;
    use core::staking;

    public struct ROUTER has drop { }
    
    public struct RouterMetadata has copy, drop {
        typeName: vector<u8>,
        amount: u64,
    }

    public struct RouterCap<phantom T0> {
        coin: coin::Coin<T0>,
        min_amount_out: u64,
        first_swap: RouterMetadata,
        previous_swap: RouterMetadata,
        final_swap: RouterMetadata,
        take_fees_on_coin_out: bool,
    }
        
    fun init(witness: ROUTER, ctx: &mut tx_context::TxContext) {
        abort 0
    }
    
    public fun assert_expected_coin_in<T0, T1>(routerCap: &RouterCap<T0>, coin: &coin::Coin<T1>) {
        abort 0
    }
    
    fun assert_fee_was_not_taken_from_coin_in(arg0: bool) {
        abort 0
    }
    
    fun assert_fee_was_taken_from_coin_in(arg0: bool) {
        abort 0
    }
    
    fun assert_previous_swap_was_valid<T0>(routerCap: &RouterCap<T0>) {
        abort 0
    }
    
    fun assert_route_starts_with_non_zero_value(arg0: u64) {
        abort 0
    }

    fun assert_route_starts_with_zero_value(arg0: u64) {
        abort 0
    }
        
    fun calculate_percentage(value: u64, percent_base_18: u64) : u64 {
        abort 0
    }

    public fun begin_router_stake_and_collect_fees<T0>(
        platform: vector<u8>,
        coin: coin::Coin<T0>,
        min_amount_out: u64,
        protocol_fee: &protocol_fee::ProtocolFeeConfig,
        treasury: &mut treasury::Treasury,
        ctx: &mut tx_context::TxContext
    ) : RouterCap<T0> {
        abort 0
    }

    public fun end_router_stake<T0>(
        routerCap: RouterCap<T0>,
        referral: address,
        ctx: &mut tx_context::TxContext
    ) {
        abort 0
    }

    public fun begin_router_unstake<T0>(
        platform: vector<u8>,
        coin: 0x2::coin::Coin<T0>,
        min_amount_out: u64,
    ) : RouterCap<T0> {
        abort 0
    }

    #[allow(lint(self_transfer))]
    public fun end_router_unstake_and_pay_fees<T0>(
        routerCap: RouterCap<T0>,
        protocol_fee: &protocol_fee::ProtocolFeeConfig,
        treasury: &mut treasury::Treasury,
        referral: address,
        ctx: &mut 0x2::tx_context::TxContext
    ): coin::Coin<T0> {
        abort 0
    }

    public fun initiate_path_stake<T0>(
        routerCap: &mut RouterCap<T0>, 
        amount: u64, 
        ctx: &mut tx_context::TxContext
    ) : coin::Coin<T0> {
        abort 0
    }

    public fun initiate_path_unstake<T0>(
        routerCap: &mut RouterCap<T0>
    ) {
        abort 0
    }

    public fun initiate_path_by_percent<T0>(
        routerCap: &mut RouterCap<T0>, 
        percent_base_18: u64, 
        ctx: &mut tx_context::TxContext
    ) : coin::Coin<T0> {
        abort 0
    }
    
    fun is_valid_final_swap<T0>(routerCap: &RouterCap<T0>) : bool {
        abort 0
    }
    
    fun is_valid_swap<T0, T1>(routerCap: &RouterCap<T0>, arg1: &coin::Coin<T1>) : bool {
        abort 0
    }
    
    public(package) fun update_final_swap_metadata<T0>(routerCap: &mut RouterCap<T0>) {
        abort 0
    }

    public fun update_path_metadata_stake<T0>(
        routerCap: &mut RouterCap<T0>,
        platform: vector<u8>,
        amount: u64
    ) {
        abort 0
    }

    public fun update_path_metadata_unstake<T0>(
        routerCap: &mut RouterCap<T0>,
        coin: coin::Coin<T0>,
    ) {
        abort 0
    }
    
    public(package) fun update_previous_swap_metadata<T0>(
        routerCap: &mut RouterCap<T0>, 
        typeName: vector<u8>, 
        amount: u64
    ) {
        abort 0
    }
}
