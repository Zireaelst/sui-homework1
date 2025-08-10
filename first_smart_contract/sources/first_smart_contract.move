/// Module: first_smart_contract
module first_smart_contract::first_smart_contract {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};
    use std::string::{Self, String};

    /// A simple HelloWorld object
    public struct HelloWorldObject has key {
        id: UID,
        text: String
    }

    /// Module initializer that creates the HelloWorldObject
    public entry fun mint(ctx: &mut TxContext) {
        let object = HelloWorldObject {
            id: object::new(ctx),
            text: string::utf8(b"Hello, Sui!")
        };
        transfer::transfer(object, tx_context::sender(ctx));
    }
}