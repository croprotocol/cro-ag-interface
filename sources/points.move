module core::points {
    use std::ascii;
    use sui::coin;
    use sui::url;

    public struct POINTS has drop { }
    
    public fun mint_points(
        treasuryCap: &mut coin::TreasuryCap<POINTS>, 
        amount: u64,
        ctx: &mut tx_context::TxContext
    ): coin::Coin<POINTS> {
        abort 0
    }

    public fun burn_points(treasuryCap: &mut coin::TreasuryCap<POINTS>, coin: coin::Coin<POINTS>) {
        abort 0
    }
    
    fun init(witness: POINTS, ctx: &mut tx_context::TxContext) {
        abort 0
    }
}
