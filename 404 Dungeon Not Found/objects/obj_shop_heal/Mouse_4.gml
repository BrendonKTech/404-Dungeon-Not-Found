 if (global.hp < 200)
 {
 if (global.gold >= price) 
 {
            global.gold -= price;
			global.hp += 15
			success_text = "+15 health, -50 gold"
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
	 // Player can't afford the item
    not_enough_gold_text = "You're already at full HP!";
    not_enough_gold_timer = 80; // show for 40 frames
 }