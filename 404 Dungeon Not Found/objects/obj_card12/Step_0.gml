// Inherit the parent event
event_inherited();

// In obj_cardParent2, Mouse Left Pressed Event:
if (global.turn == "player" && obj_player.mp >= card_cost) {
    // Check if the card is auto-blocking
    if (is_auto_block) {
        // Perform the auto-block logic
    }

    // Normal card attack logic...
}
