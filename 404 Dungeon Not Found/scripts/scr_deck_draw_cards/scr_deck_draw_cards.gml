function scr_deck_draw_cards(_n){
	for (var i = 0; i < _n; i++) {

        // If draw pile is empty, reshuffle discard pile
        if (array_length(draw_pile) == 0) {
            deck_reshuffle();
        }

        // If STILL empty (no cards in either pile)
        if (array_length(draw_pile) == 0) {
            return; // Nothing to draw
        }

        // Prevent hand overflow (STS rule)
        if (array_length(hand) >= obj_deck_controller.max_hand_size) {
            return;
        }

        // Pop card
        var card_obj = draw_pile[0];
        array_delete(draw_pile, 0, 1);

        // Create card instance in hand
        var card_inst = instance_create_layer(0, 0, "Instances", card_obj);
        array_push(hand, card_inst);

        // Position cards nicely
        deck_position_hand();
    }
}