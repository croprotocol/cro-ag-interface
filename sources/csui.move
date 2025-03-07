module core::csui {
    use std::ascii;
    use sui::coin;
    use sui::url;

    public struct CSUI has drop { }

    public struct CSUITreasuryCoinfig has key, store {
        id: object::UID,
        treasuryCap: coin::TreasuryCap<CSUI>, 
    }
    
    public(package) fun mint_csui(
        cSUITreasuryCoinfig: &mut CSUITreasuryCoinfig, 
        amount: u64, 
        ctx: &mut tx_context::TxContext
    ): coin::Coin<CSUI> {
        abort 0
    }

    public(package) fun burn_csui(
        cSUITreasuryCoinfig: &mut CSUITreasuryCoinfig,
        coin: coin::Coin<CSUI>
    ) {
        abort 0
    }
    
    fun init(witness: CSUI, ctx: &mut tx_context::TxContext) {
        abort 0
    }
}
