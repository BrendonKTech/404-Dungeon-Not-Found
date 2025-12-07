// Enemy turn
if (global.turn == "enemy") {
    for (var i = 0; i < array_length(enemies); i++) {
        var e = enemies[i];
        if (instance_exists(e)) {
            // Apply damage to player
			e.vulnerable = false;
			if (obj_player.vulnerable)
			{
				var damage_final = max(ceil(e.damage * 1.5) - obj_player.block - obj_player.auto_block, 0);
				global.hp -= damage_final;
			obj_player.block = 0;
			global.was_hit = true;
			 // Floating damage numbers
            var dmg_text = instance_create_layer(global.player.x, global.player.y - 180, "Instances", obj_damage_number);
            dmg_text.text = string(damage_final);
            dmg_text.color = c_red;
            dmg_text.vy = -1;
            dmg_text.life_time = 60;
			}
			else
			{
			var damage_final = max(e.damage - obj_player.block - obj_player.auto_block, 0);
				global.hp -= damage_final;
			obj_player.block = 0;
			global.was_hit = true;
			 // Floating damage numbers
            var p = obj_player; // shorthand
<<<<<<< HEAD

			var dmg_text = instance_create_layer(p.x, p.y - 180, "Instances", obj_damage_number);

=======
			var dmg_text = instance_create_layer(p.x, p.y - 180, "Instances", obj_damage_number);
>>>>>>> parent of f1fb581 (Merge branch 'main' of https://github.com/BrendonKTech/404-Dungeon-Not-Found)
            dmg_text.text = string(damage_final);
            dmg_text.color = c_red;
            dmg_text.vy = -1;
            dmg_text.life_time = 60;
			}
        }
    }

    // Increment player MP
    global.player.mp += 3;
    if (global.player.mp > global.player.max_mp) global.player.mp = global.player.max_mp;

    refresh_cards = true;
	obj_player.vulnerable = false;
    global.turn = "player";
}

// Not enough MP timer
if (not_enough_mp_timer > 0) {
    not_enough_mp_timer -= 1;
    if (not_enough_mp_timer < 0) not_enough_mp_timer = 0;
}

// Refresh hand cards
if (refresh_cards) {
    with (obj_cardParent2) {
        instance_destroy();
    }
var draw1 = get_random_card()
var draw2 = get_random_card()
var draw3 = get_random_card()
var draw4 = get_random_card()
	
	
var inst3 = instance_create_layer(600, 960, "Instances", draw1);
inst3.image_xscale = 0.5;
inst3.image_yscale = 0.5;
var inst4 = instance_create_layer(800, 960, "Instances", draw2);
inst4.image_xscale = 0.5;
inst4.image_yscale = 0.5;
var inst5 = instance_create_layer(1000, 960, "Instances", draw3);
inst5.image_xscale = 0.5;
inst5.image_yscale = 0.5;
var inst6 = instance_create_layer(1200, 960, "Instances", draw4);
inst6.image_xscale = 0.5;
inst6.image_yscale = 0.5;
refresh_cards = false
}
