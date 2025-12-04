function scr_deck_discard_card(_card){
	// Remove from hand array
    var idx = array_index_of(hand, _card);
    if (idx != -1) array_delete(hand, idx, 1);

    // Push card type back to discard pile
    array_push(discard_pile, _card.object_index);

    // Destroy instance
    with (_card) instance_destroy();

    // Reposition hand
    deck_position_hand();
}