/// Module: nft
module nft::nft {
    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};
    use std::string::String;
    use sui::url::{Self, Url};

    /// The NFT object
    public struct WorkshopNFT has key, store {
        id: UID,
        name: String,
        description: String,
        url: Url
    }

    /// Mint a new WorkshopNFT
    public entry fun mint_nft(
        name: vector<u8>,
        description: vector<u8>,
        url: vector<u8>,
        ctx: &mut TxContext
    ) {
        let nft = WorkshopNFT {
            id: object::new(ctx),
            name: std::string::utf8(name),
            description: std::string::utf8(description),
            url: url::new_unsafe_from_bytes(url)
        };
        transfer::public_transfer(nft, tx_context::sender(ctx));
    }
}