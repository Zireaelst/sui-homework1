/// Module: test_nft
module test_nft::test_nft;

use std::string;
use sui::event;
use sui::url::{Self, Url};

public struct TestnetSoulboundNFT has key {
    id: UID,
    /// Name for the token
    name: string::String,
    /// Description of the token
    description: string::String,
    /// URL for the token
    url: Url,
    // TODO: allow custom attributes
}

public struct NFTMinted has copy, drop {
    // The Object ID of the NFT
    object_id: ID,
    // The creator of the NFT
    creator: address,
    // The name of the NFT
    name: string::String,
}

public fun name(nft: &TestnetSoulboundNFT): &string::String {
    &nft.name
}

public fun description(nft: &TestnetSoulboundNFT): &string::String {
    &nft.description
}

public fun url(nft: &TestnetSoulboundNFT): &Url {
    &nft.url
}

#[allow(lint(self_transfer))]
public fun mint_to_sender(
    name: vector<u8>,
    description: vector<u8>,
    url: vector<u8>,
    ctx: &mut TxContext,
) {
    let sender = ctx.sender();
    let nft = TestnetSoulboundNFT {
        id: object::new(ctx),
        name: string::utf8(name),
        description: string::utf8(description),
        url: url::new_unsafe_from_bytes(url),
    };

    event::emit(NFTMinted {
        object_id: object::id(&nft),
        creator: sender,
        name: nft.name,
    });

    transfer::transfer(nft, sender);
}

public fun transfer(nft: TestnetSoulboundNFT, recipient: address, _: &mut TxContext) {
    transfer::transfer(nft, recipient)
}

public fun update_description(
    nft: &mut TestnetSoulboundNFT,
    new_description: vector<u8>,
    _: &mut TxContext,
) {
    nft.description = string::utf8(new_description)
}

public fun burn(nft: TestnetSoulboundNFT, _: &mut TxContext) {
    let TestnetSoulboundNFT { id, name: _, description: _, url: _ } = nft;
    id.delete()
}
