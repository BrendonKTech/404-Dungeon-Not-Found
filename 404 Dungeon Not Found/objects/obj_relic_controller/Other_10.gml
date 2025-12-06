var card = card_temp;

// Corrupted RAM Stick — Gain 1 Block when drawing a Status
if (array_contains(global.relics, obj_corruptedRamstick)) {
    if (card.type == "status") {
        obj_player.block += 1;
    }
}

// Fiber Optic Spool — First card drawn is upgraded
if (array_contains(global.relics, obj_fiberOpticSpool)) {
    if (global.cards_players_this_turn == 0) {
        global.upgrade_first_draw = true;
    }
}
