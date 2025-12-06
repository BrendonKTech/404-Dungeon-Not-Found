if (index_hover != -1 && index_clicked == -1) {

    index_clicked = index_hover;

    var chosen_card = reward_cards[index_clicked];

    // Add to deck
    var deck = instance_find(obj_deck_controller,0);
    if (deck != noone) {
        array_push(deck.discard_pile, chosen_card);
    }

    // audio_play_sound(snd_card_pick, 1, false);
}
