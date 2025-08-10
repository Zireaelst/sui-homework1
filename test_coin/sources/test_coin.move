/// Module: coin
module test_coin::test_coin;

use sui::coin::{Self, TreasuryCap};

public struct TEST_COIN has drop {}

fun init(witness: TEST_COIN, ctx: &mut TxContext) {
    let (treasury, metadata) = coin::create_currency(
        witness,
        6,
        b"BM",
        b"BuilderMare Coin",
        b"This is the BuilderMare Coin",
        option::none(),
        ctx,
    );
    transfer::public_freeze_object(metadata);
    transfer::public_transfer(treasury, ctx.sender())
}

public entry fun mint(
    treasury_cap: &mut TreasuryCap<TEST_COIN>,
    amount: u64,
    recipient: address,
    ctx: &mut TxContext,
) {
    let coin = coin::mint(treasury_cap, amount, ctx);
    transfer::public_transfer(coin, recipient)
}
