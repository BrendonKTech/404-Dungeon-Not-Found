function draw_cards(num_cards) {
    for (var i = 0; i < num_cards; i++) {
        if (array_length(player_deck) == 0) {
            // Shuffle discard into deck if empty
            player_deck = player_discard;
            player_discard = [];
        }

        if (array_length(player_deck) > 0) {
            var index = irandom(array_length(player_deck) - 1);
            var card = player_deck[index];

            // Add card to hand
            array_push(player_hand, card);

            // Remove from deck
            array_delete(player_deck, index, 1);
        }
    }
}