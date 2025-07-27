
module capability::capability {


    /// Capability to organize a workshop

    public struct WorkshopCapability has key, store {
        id: sui::object::UID,
        owner: address,
    }

    /// Workshop object

    public struct Workshop has key, store {
        id: sui::object::UID,
        owner: address,
        lessons: vector<std::string::String>,
    }

    /// Create a WorkshopCapability for the sender
    public entry fun create_capability(ctx: &mut tx_context::TxContext) {
        let sender = tx_context::sender(ctx);
        let cap = WorkshopCapability { id: object::new(ctx), owner: sender };
        transfer::transfer(cap, sender);
    }

    /// Create a new workshop (requires WorkshopCapability)
    public entry fun create_workshop(cap: WorkshopCapability, ctx: &mut tx_context::TxContext) {
        let sender = tx_context::sender(ctx);
        assert!(cap.owner == sender, 0);
        let workshop = Workshop {
            id: object::new(ctx),
            owner: sender,
            lessons: std::vector::empty<std::string::String>(),
        };
        transfer::transfer(workshop, sender);
        // Return capability to sender
        transfer::transfer(cap, sender);
    }

    /// Add a lesson name to the workshop (requires WorkshopCapability)
    public entry fun add_lesson(
        cap: WorkshopCapability,
        mut workshop: Workshop,
        lesson: std::string::String,
        ctx: &mut tx_context::TxContext
    ) {
        let sender = tx_context::sender(ctx);
        assert!(cap.owner == sender, 1);
        assert!(workshop.owner == sender, 2);
        vector::push_back(&mut workshop.lessons, lesson);
        transfer::transfer(workshop, sender);
        transfer::transfer(cap, sender);
    }
}
