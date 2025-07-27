/// Module: functions
module functions::functions {
    use std::string::{Self, String};

    /// Summarizes two numbers
    public fun sum(a: u64, b: u64): u64 {
        a + b
    }

    /// Returns a "Hello" string
    public fun say_hello(): String {
        string::utf8(b"Hello")
    }

    /// Checks if a number is odd. Returns true if odd, false if even.
    public fun is_odd(number: u64): bool {
        (number % 2) != 0
    }
}