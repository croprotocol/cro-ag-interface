module core::events {
    use std::type_name;
    use std::ascii;
    use sui::event;

    public struct StakeCompletedEvent has copy, drop {
        sender: address,
        type_in: ascii::String,
        amount_in: u64,
        type_out: ascii::String,
        amount_out: u64,
        referral: address,
    }
    
    public(package) fun emit_stake_completed_event(
        type_in: vector<u8>, 
        amount_in: u64, 
        type_out: vector<u8>, 
        amount_out: u64, 
        referral: address,
        ctx: &tx_context::TxContext
    ) {
        abort 0
    }

    public struct UnstakeCompletedEvent has copy, drop {
        sender: address,
        type_in: ascii::String,
        amount_in: u64,
        type_out: ascii::String,
        amount_out: u64,
        referral: address,
    }

    public(package) fun emit_unstake_completed_event(
        type_in: vector<u8>, 
        amount_in: u64, 
        type_out: vector<u8>, 
        amount_out: u64, 
        referral: address,
        ctx: &tx_context::TxContext
    ) {
        abort 0
    }

    public struct FlashloanEvent has copy, drop {
        sender: address,
        type_name: ascii::String,
        amount: u64,
    }
    
    public(package) fun emit_flashloan_event(type_name: vector<u8>, amount: u64, ctx: &tx_context::TxContext) {
        abort 0
    }

    public struct StakeEvent has copy, drop {
        sender: address,
        amount: u64,
    }
    
    public(package) fun emit_stake_event(amount: u64, ctx: &tx_context::TxContext) {
        abort 0
    }

    public struct UnstakeEvent has copy, drop {
        sender: address,
        amount: u64,
    }
    
    public(package) fun emit_unstake_event(amount: u64, ctx: &tx_context::TxContext) {
        abort 0
    }

    public struct ZeroObjectEvent has copy, drop {
        sender: address,
    }
    
    public(package) fun emit_zero_object_event(ctx: &tx_context::TxContext) {
        abort 0
    }

    public struct ClaimCroEvent has copy, drop {
        sender: address,
        amount: u64,
    }
    
    public(package) fun emit_claim_cro_event(amount: u64, ctx: &tx_context::TxContext) {
        abort 0
    }

    public struct AddPointsEvent has copy, drop {
        sender: address,
        amount: u64,
    }
    
    public(package) fun emit_add_points_event(amount: u64, ctx: &tx_context::TxContext) {
        abort 0
    }

    public struct RemovePointsEvent has copy, drop {
        sender: address,
        amount: u64,
    }
    
    public(package) fun emit_remove_points_event(amount: u64, ctx: &tx_context::TxContext) {
        abort 0
    }

    public struct WithdrawEvent has copy, drop {
        typeName: type_name::TypeName,
        amount: u64,
    }
    
    public(package) fun emit_withdraw_event<T0>(amount: u64, ctx: &tx_context::TxContext) {
        abort 0
    }
}
