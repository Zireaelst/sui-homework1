/// Module: testing
module testing::testing {
    use sui::clock::{Self, Clock};
    use sui::tx_context::TxContext;

    /// Summarizes two u64 numbers.
    public fun sum(a: u64, b: u64): u64 {
        a + b
    }

    /// Compares the current transaction timestamp with a given clock object's timestamp.
    /// Returns true if the transaction timestamp is greater than or equal to the clock's timestamp.
    public fun compare_dates(clock: &Clock, ctx: &TxContext): bool {
        let tx_timestamp_ms = sui::tx_context::epoch_timestamp_ms(ctx);
        let clock_timestamp_ms = clock::timestamp_ms(clock);
        tx_timestamp_ms >= clock_timestamp_ms
    }
}