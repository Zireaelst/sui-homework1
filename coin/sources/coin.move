/// Module: coin
module coin::coin {
    use sui::coin;
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};
    use std::option;

    /// The one-time witness for the coin.
    /// The struct name MUST be the upper-case version of the module name.
    public struct COIN has drop {}

    /// Module initializer
    fun init(otw: COIN, ctx: &mut TxContext) {
        let (mut treasury_cap, metadata) = coin::create_currency(
            otw,
            6, // decimals
            b"WSH", // symbol
            b"Workshop Coin", // name
            b"A coin for the Sui workshop", // description
            option::none(), // icon_url
            ctx
        );

        // Mint the total supply
        coin::mint_and_transfer(&mut treasury_cap, 1_000_000_000000, tx_context::sender(ctx), ctx);

        // Make the treasury cap and metadata public
        transfer::public_transfer(treasury_cap, tx_context::sender(ctx));
        transfer::public_transfer(metadata, tx_context::sender(ctx));
    }
}