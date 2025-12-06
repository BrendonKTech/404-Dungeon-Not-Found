function get_random_card(){
/// scr_draw_random_card()
/// Returns a random card sprite/index from your unlocked cards in global.inventory

// Make a list of all possible cards the player owns
var unlocked_cards = [];

// Iterate through 0-13 and check if the card is unlocked
for (var i = 0; i <= 13; i++) {
    if (array_contains(global.inventory, i)) {
        array_push(unlocked_cards, i);
    }
}

// Safety check: if no cards unlocked, return -1
if (array_length(unlocked_cards) == 0) {
    return -1; // No cards available
}

// Pick a random card from the unlocked ones
var card_index = unlocked_cards[irandom(array_length(unlocked_cards) - 1)];

return card_index;
}