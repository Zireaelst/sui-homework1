/// Module: ownership
module ownership::ownership {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};

    /// An object that can be owned by an address.
    public struct OwnedObject has key {
        id: UID
    }

    /// An object that can be shared.
    public struct SharedObject has key, store {
        id: UID
    }

    /// Creates an object and transfers its ownership to the sender.
    /// This is an example of "Owned by an address".
    public entry fun create_owned_object(ctx: &mut TxContext) {
        let object = OwnedObject { id: object::new(ctx) };
        transfer::transfer(object, tx_context::sender(ctx));
    }

    /// Creates a shared object that anyone can use.
    /// This is an example of a "Shared object".
    public entry fun create_shared_object(ctx: &mut TxContext) {
        let object = SharedObject { id: object::new(ctx) };
        transfer::public_share_object(object);
    }

    /// Creates an object and makes it immutable.
    /// This is an example of an "Immutable object".
    public entry fun create_immutable_object(ctx: &mut TxContext) {
        let object = SharedObject { id: object::new(ctx) };
        transfer::public_freeze_object(object);
    }

    /// Creates an object owned by another object (not demonstrated here as it requires a parent object).
    /// The fourth ownership type is "Owned by another object".
}