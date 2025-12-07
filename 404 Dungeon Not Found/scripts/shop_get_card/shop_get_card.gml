function shop_get_card() {
    var TOTAL_CARDS = 15; // total possible cards
    var locked_cards = [];

    // Build list of cards the player does NOT yet own
    for (var i = 0; i < TOTAL_CARDS; i++) {
        if (!array_contains(global.inventory, i)) {
            array_push(locked_cards, i);
        }
    }

    // If nothing is left to unlock
    if (array_length(locked_cards) == 0) {
        return -1; // or noone
    }

    // Pick a random card from the locked ones
    var pick_index = irandom(array_length(locked_cards) - 1);
    var chosen = locked_cards[pick_index];
	show_debug_message("Chosen card is " + string(chosen))

    // Add the new card to the inventory
    array_push(global.inventory, chosen);

if chosen == 0
{
return spr_card1
}
if chosen == 1
{
return spr_card2
}
if chosen == 2
{
return spr_card3
}
if chosen == 3
{
	return spr_card4
}
if chosen == 4
{
	return spr_card5
}
if chosen == 5
{
	return spr_card6
}
if chosen == 6
{
	return spr_card7
}
if chosen == 7
{
	return spr_card8
}
if chosen == 8
{
	return spr_card9
}
if chosen == 9
{
	return spr_card10
}
if chosen == 10
{
	return spr_card11
}
if chosen == 11
{
	return spr_card12
}
if chosen == 12
{
	return spr_card13
}
if chosen == 13
{
	return spr_card14
}
if chosen == 14
{
	return spr_card15
}
}
