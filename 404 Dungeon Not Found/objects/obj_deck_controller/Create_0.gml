draw_pile = ds_list_create();
discard_pile = ds_list_create();
hand = ds_list_create();

// Settings
max_hand_size = 10;
cards_to_draw_start_turn = 5;

// Build starting deck
scr_deck_build_starting_deck();

// Function to draw cards
function draw_cards(n) {
    for (var i = 0; i < n; i++) {
        if (ds_list_size(draw_pile) == 0) {
            reshuffle_deck();
        }

        if (ds_list_size(draw_pile) == 0) return;  // No cards left to draw

        if (ds_list_size(hand) < max_hand_size) {
            var card_obj = ds_list_pop(draw_pile);
            var card_inst = instance_create_layer(0, 0, "Instances", card_obj);
            ds_list_push(hand, card_inst);
        }
    }

    update_hand_position();  // Reposition drawn cards
}

// Function to reshuffle the deck
function reshuffle_deck() {
    if (ds_list_size(discard_pile) == 0) return;

    // Move discard pile cards into draw pile
    while (ds_list_size(discard_pile) > 0) {
        var card = ds_list_pop(discard_pile);
        ds_list_push(draw_pile, card);
    }

    // Shuffle the draw pile
    ds_list_shuffle(draw_pile);
}

// Function to discard a card
function discard_card(card) {
    var idx = array_index_of(hand, card);
    if (idx != -1) {
        array_delete(hand, idx, 1);  // Remove card from hand
    }

    ds_list_push(discard_pile, card.object_index);  // Add to discard pile
    card.instance_destroy();  // Destroy the card instance

    update_hand_position();  // Update hand positions
}

// Function to update the hand positions
function update_hand_position() {
    var cx = room_width / 2;
    var base_y = room_height - 115;
    var count = ds_list_size(hand);
    var spacing = 90;
    var start_x = cx - ((count - 1) * spacing) / 2;

    for (var i = 0; i < count; i++) {
        var card = hand[i];
        card.x = start_x + (i * spacing);
        card.y = base_y;
    }
}
