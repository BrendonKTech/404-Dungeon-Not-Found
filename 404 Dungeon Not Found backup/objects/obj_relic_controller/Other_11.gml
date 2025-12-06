var card = card_temp;

if (array_contains(global.relics, obj_gpuAccelerator)) {
    global.cards_players_this_turn += 1;
    if (global.cards_players_this_turn mod 3 == 0) {
        obj_player.mp += 1;
    }
}
