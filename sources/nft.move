module core::nft {
    use sui::table;
    use sui::types;
    use sui::event;
    use sui::sui::SUI;
    use sui::coin::{Coin, Self};
    use sui::balance;
    use sui::clock;

    use core::treasury;
    use core::points::POINTS;
    
    use core::admin;
    use core::cro::CRO;
    use core::events;
    use core::version;

    public struct NFT has drop { }

    fun init(arg0: NFT, arg1: &mut 0x2::tx_context::TxContext) {
        abort 0
    }

    public struct NftConfig has store, key {
        id: object::UID,
        version: u64,
        tge_time: u64,
        unlock_time: u64,
        end_lock_time: u64,
        cro_per_points: u64,
        total_mint_nfts: u64,
        total_staked_points: u64,
        user_to_nft: table::Table<address, object::ID>,
        nft_to_user: table::Table<object::ID, address>,
        nft_price: u64,
        referral_nft_price: u64,
    }

    fun check_version(nftConfig: &NftConfig) {
        version::check_version(nftConfig.version);
    }

    public(package) fun check_before_tge(nftConfig: &NftConfig, clock: &clock::Clock): bool{
        abort 0
    }

    public fun change_nft_config(
        adminCap: &admin::AdminCap,
        nftConfig: &mut NftConfig, 
        version: &mut option::Option<u64>, 
        tge_time: &mut option::Option<u64>,  
        unlock_time: &mut option::Option<u64>, 
        end_lock_time: &mut option::Option<u64>,
        cro_per_points: &mut option::Option<u64>,
    ) {
        abort 0
    }

    public(package) fun create_config<T0: drop>(
        witness: &T0, 
        ctx: &mut tx_context::TxContext
    ) : NftConfig {
        abort 0
    }

    public struct CroNft has store, key {
        id: object::UID,
        staked_points: balance::Balance<POINTS>,
        staked_cro: balance::Balance<CRO>,
        unlock_time: u64,
        owner: address,
    }

    public struct MintNftEvent has copy, drop {
        nft_id: address,
        owner: address,
    }

    public struct MintReferralNftEvent has copy, drop {
        nft_id: address,
        owner: address,
        referral: address,
    }

    public fun mint_nft(
        nftConfig: &mut NftConfig,
        treasury: &mut treasury::Treasury, 
        payment: Coin<SUI>, 
        ctx: &mut tx_context::TxContext
    ) {
        abort 0
    }

    public fun referral_mint(
        nftConfig: &mut NftConfig,
        treasury: &mut treasury::Treasury, 
        payment: Coin<SUI>, 
        referral: address,
        clock: &clock::Clock,
        ctx: &mut tx_context::TxContext,
    ){
        abort 0
    }

    public(package) fun register(nftConfig: &mut NftConfig, nft: &CroNft, owner: address) {
        abort 0
    }

    public fun add_points(
        nftConfig: &mut NftConfig,
        nft: &mut CroNft, 
        points: coin::Coin<POINTS>,
        clock: &clock::Clock, 
        ctx: &mut tx_context::TxContext
    ) {
        abort 0
    }

    public fun remove_points(
        nftConfig: &mut NftConfig,
        nft: &mut CroNft, 
        amount: u64, 
        clock: &clock::Clock, 
        ctx: &mut tx_context::TxContext
    ): coin::Coin<POINTS> {
        abort 0
    }

    public(package) fun check_unlock_time_not_zero(nft: &CroNft) {
        abort 0
    }

    public(package) fun check_unlock_time_zero(nft: &CroNft) {
        abort 0
    }

    public(package) fun check_unlock_time_valid(nft: &CroNft, clock: &clock::Clock) {
        abort 0
    }

    public(package) fun update_prev_unlock_time(nft: &mut CroNft, clock: &clock::Clock) {
        abort 0
    }

    public(package) fun update_unlock_time_init(nft: &mut CroNft) {
        abort 0
    }

    public fun claim_init(
        nftConfig: &NftConfig,
        treasury: &mut treasury::Treasury,
        nft: &mut CroNft,
        clock: &clock::Clock, 
    ) {
        abort 0
    }

    public fun claim_cro(
        nftConfig: &NftConfig,
        nft: &mut CroNft, 
        clock: &clock::Clock, 
        ctx: &mut tx_context::TxContext
    ): coin::Coin<CRO>{
        abort 0
    }
}