/// Module: transaction_context
module transaction_context::transaction_context {
    use sui::tx_context::{Self, TxContext};

    /// Gets the current transaction's epoch timestamp in milliseconds.
    public fun get_current_timestamp(ctx: &TxContext): u64 {
        tx_context::epoch_timestamp_ms(ctx)
    }
}
