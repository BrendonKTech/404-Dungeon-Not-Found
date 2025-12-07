if (already_clicked = false)
{
 if (global.gold >= price) 
 {
            global.gold -= price;
			already_clicked = true
			var chosen_card = shop_get_card()
			sprite_index = chosen_card
		image_xscale = 0.5
		image_yscale = 0.5
			success_text = "New card added to inventory. -100 gold"
			success_timer = 80
 }
 else
 {
	 // Player can't afford the item
    not_enough_gold_text = "Not enough gold!";
    not_enough_gold_timer = 80; // show for 40 frames
 }
}
else
{
	not_enough_gold_text = "You've already bought a card!";
    not_enough_gold_timer = 80; // show for 40 frames
}
