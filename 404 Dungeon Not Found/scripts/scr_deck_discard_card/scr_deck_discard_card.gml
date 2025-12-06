function scr_deck_discard_card(_card) {
    var p = global.player;

    // Ensure the player exists
    if (!instance_exists(p)) return;

    // Ensure the hand array exists
    if (!variable_instance_exists(p, "hand") || p.hand == undefined) p.hand = [];

    // Remove card instance from hand
    var idx = array_index_of(p.hand, _card);
    if (idx != -1) array_delete(p.hand, idx, 1);

    // Ensure discard pile exists
    if (!variable_instance_exists(p, "player_discard") || p.player_discard == undefined) p.player_discard = [];

    // Push the card's object index into discard pile
    array_push(p.player_discard, _card.object_index);

    // Destroy the card instance
    with (_card) instance_destroy();

    // Reposition remaining cards
    deck_position_hand();
}
