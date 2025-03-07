module core::zero_obj {
    use sui::coin;
    use sui::balance;
    use sui::clock;

    use core::treasury;
    use core::points::POINTS;
    use core::events;
    use core::nft;

    public fun zero_obj_mint<T>(
        nftConfig: &nft::NftConfig, 
        treasury: &mut treasury::Treasury,
        zero_coin: coin::Coin<T>,
        clock: &clock::Clock,
        ctx: &mut tx_context::TxContext
    ) {
        abort 0
    }
}