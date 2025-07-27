/// Module: primitive_types
module primitive_types::primitive_types {
    use std::string::String;
    use std::vector;

    /// A struct to hold user data
    public struct UserProfile has key, store {
        id: sui::object::UID,
        name: String,
        age: u8,
        is_coder: bool,
        lessons: vector<String>
    }

    /// Creates a user profile with predefined values
    public entry fun create_user_profile(ctx: &mut sui::tx_context::TxContext) {
        let name: String = std::string::utf8(b"Zireael");
        let age: u8 = 25;
        let is_coder: bool = true;
        let lessons: vector<String> = vector[
            std::string::utf8(b"Move"),
            std::string::utf8(b"Sui"),
            std::string::utf8(b"Rust")
        ];

        let profile = UserProfile {
            id: sui::object::new(ctx),
            name: name,
            age: age,
            is_coder: is_coder,
            lessons: lessons
        };

        sui::transfer::public_transfer(profile, sui::tx_context::sender(ctx));
    }
}