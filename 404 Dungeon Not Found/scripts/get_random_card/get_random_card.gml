function get_random_card(){
/// scr_draw_random_card()
/// Returns a random card sprite/index from your unlocked cards in global.inventory

// Make a list of all possible cards the player owns
var unlocked_cards = [];

// Iterate through 0-13 and check if the card is unlocked
for (var i = 0; i <= 14; i++) {
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

if card_index == 0
{
	return obj_card1
}
if card_index == 1
{
	return obj_card2
}
if card_index == 2
{
	return obj_card3
}
if card_index == 3
{
	return obj_card4
}
if card_index == 4
{
	return obj_card5
}
if card_index == 5
{
	return obj_card6
}
if card_index == 6
{
	return obj_card7
}
if card_index == 7
{
	return obj_card8
}
if card_index == 8
{
	return obj_card9
}
if card_index == 9
{
	return obj_card10
}
if card_index == 10
{
	return obj_card11
}
if card_index == 11
{
	return obj_card12
}
if card_index == 12
{
	return obj_card13
}
if card_index == 13
{
	return obj_card14
}
if card_index == 14
{
	return obj_card15
}

	
	
	
}