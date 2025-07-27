/// Module: visibility
module visibility::visibility {
    use sui::tx_context::TxContext;

    // --- Private Function ---
    /// This is a private function. It can only be called from within this module.
    /// It adds 1 to the given number.
    fun add_one(number: u64): u64 {
        number + 1
    }

    // --- Public Function ---
    /// This is a public function. It can be called from other modules.
    /// It uses the private `add_one` function.
    public fun add_two(number: u64): u64 {
        let temp = add_one(number);
        add_one(temp)
    }

    // --- Entry Function ---
    /// This is an entry function. It can be called directly as a transaction.
    /// The `&mut TxContext` parameter must always be the last parameter.
    public entry fun execute_addition(number: u64, _ctx: &mut TxContext) {
        let _result = add_two(number);
        // An entry function typically modifies state, but here we just demonstrate calling other functions.
    }
}