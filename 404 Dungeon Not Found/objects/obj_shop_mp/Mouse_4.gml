
  if (global.mp < 6)
 {
 if (global.gold >= price) 
 {
            global.gold -= price;
			global.mp += 1
			success_text = "+1 temporary MP, -20 gold"
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
    not_enough_gold_text = "You cannot go above 6 MP!";
    not_enough_gold_timer = 80; // show for 40 frames
 }