if (global.turn == "enemy") {
    with (obj_enemy1) {
        // Apply damage to player
        global.player.hp -= damage;

        // Create floating damage number above player
        var dmg_text = instance_create_layer(global.player.x, global.player.y - 150, "Instances", obj_damage_number);
        dmg_text.text = string(damage); // use the local damage variable
        dmg_text.color = c_red;
        dmg_text.vy = -1;   // moves upward
        dmg_text.life_time = 60;
    }

    
    // Increment player MP
    global.player.mp++;
	refresh_cards = true;

    global.turn = "player";
}

if (not_enough_mp_timer > 0) {
    not_enough_mp_timer -= 1;
    if (not_enough_mp_timer <= 0) {
        not_enough_mp_timer = 0; // optional
    }
}

if (refresh_cards) {
    with (obj_card1) {
        instance_destroy();
    }
var inst3 = instance_create_layer(736, 960, "Instances", obj_card1);
inst3.image_xscale = 0.6;
inst3.image_yscale = 0.6;
var inst4 = instance_create_layer(944, 960, "Instances", obj_card1);
inst3.image_xscale = 0.6;
inst3.image_yscale = 0.6;
var inst5 = instance_create_layer(1152, 960, "Instances", obj_card1);
inst3.image_xscale = 0.6;
inst3.image_yscale = 0.6;
refresh_cards = false
}
