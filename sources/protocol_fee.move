module core::protocol_fee {
    use sui::types;
    use sui::coin::{Self, Coin};

    use core::admin;
    use core::treasury;
    use core::version;

    public struct ProtocolFeeConfig has store, key {
        id: object::UID,
        version: u64,
        dev_wallet: address,
        total_protocol_fee_percent_base_18: u64,
        treasury_fee_percent_base_18: u64,
        dev_wallet_fee_percent_base_18: u64,
        referee_discount: u64,
    }
    
    fun check_version(protocolFeeConfig: &ProtocolFeeConfig) {
        abort 0
    }

    public fun change_fee_percentages(
        adminCap: &admin::AdminCap,
        protocolFeeConfig: &mut ProtocolFeeConfig, 
        version: &mut option::Option<u64>,
        protocol_fee: &mut option::Option<u64>, 
        treasury_fee: &mut option::Option<u64>, 
        dev_wallet_fee: &mut option::Option<u64>, 
        referee_discount: &mut option::Option<u64>,
    ) {
        abort 0
    }
    
    public(package) fun create_config<T0: drop>(
        witness: &T0, 
        ctx: &mut tx_context::TxContext
    ) : ProtocolFeeConfig {
        abort 0
    }
    
    public fun dev_wallet_fee(protocolFeeConfig: &ProtocolFeeConfig) : u64 {
        abort 0
    }

    public fun distribute_protocol_fees<T0>(
        protocolFeeConfig: &ProtocolFeeConfig, 
        treasury: &mut treasury::Treasury, 
        coin: &mut Coin<T0>, 
        ctx: &mut tx_context::TxContext
    ) {
        abort 0
    }
    
    public fun referee_discount(protocolFeeConfig: &ProtocolFeeConfig) : u64 {
        abort 0
    }
    
    public fun take_percent_base_18(value: u64, percent_base_18: u64) : u64 {
        abort 0
    }
    
    public fun total_protocol_fee(protocolFeeConfig: &ProtocolFeeConfig) : u64 {
        abort 0
    }
    
    public fun treasury_fee(protocolFeeConfig: &ProtocolFeeConfig) : u64 {
        abort 0
    }

    public fun update_dev_wallet_address(
        adminCap: &admin::AdminCap, 
        protocolFeeConfig: &mut ProtocolFeeConfig, 
        dev_wallet: address
    ) {
        abort 0
    }
}
