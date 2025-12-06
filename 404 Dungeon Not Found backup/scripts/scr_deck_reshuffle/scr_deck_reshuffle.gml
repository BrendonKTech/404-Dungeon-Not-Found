function scr_deck_reshuffle(){
	if (array_length(discard_pile) == 0) return;

    // Move all discard cards into draw pile
    for (var i = 0; i < array_length(discard_pile); i++) {
        array_push(draw_pile, discard_pile[i]);
    }

    // Clear discard
    discard_pile = [];

    // Shuffle new draw pile
    ds_list_shuffle(draw_pile);

    // Notify relics (Quantum Bit Drive)
    if (function_exists(relic_on_shuffle)) {
        relic_on_shuffle();
    }
}