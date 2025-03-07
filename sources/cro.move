module core::cro {
    use std::ascii;
    use sui::coin;
    use sui::url;

    public struct CRO has drop { }
    
    fun init(witness: CRO, ctx: &mut tx_context::TxContext) {
        abort 0
    }
}
