/// Module: time_usage
module time_usage::time_usage {
    use sui::clock::{Self, Clock};
    use sui::tx_context::{Self, TxContext};

    /// Compares the transaction epoch timestamp with a given Clock object's timestamp.
    /// Returns true if the transaction's epoch timestamp is greater than or equal to the clock's timestamp.
    public fun compare(ctx: &TxContext, clock: &Clock): bool {
        let tx_epoch_time = tx_context::epoch_timestamp_ms(ctx);
        let clock_time = clock::timestamp_ms(clock);
        tx_epoch_time >= clock_time
    }
}