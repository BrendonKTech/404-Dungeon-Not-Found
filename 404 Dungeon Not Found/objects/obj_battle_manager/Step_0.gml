// Enemy turn
if (global.turn == "enemy") {
    for (var i = 0; i < array_length(enemies); i++) {
        var e = enemies[i];
        if (instance_exists(e)) {
            // Apply damage to player
            global.player.hp -= e.damage;

            // Floating damage numbers
            var dmg_text = instance_create_layer(global.player.x, global.player.y - 150, "Instances", obj_damage_number);
            dmg_text.text = string(e.damage);
            dmg_text.color = c_red;
            dmg_text.vy = -1;
            dmg_text.life_time = 60;
        }
    }

    // Increment player MP
    global.player.mp += 3;
    if (global.player.mp > global.player.max_mp) global.player.mp = global.player.max_mp;

    refresh_cards = true;
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
	
	
var inst3 = instance_create_layer(640, 960, "Instances", draw1);
inst3.image_xscale = 0.5;
inst3.image_yscale = 0.5;
var inst4 = instance_create_layer(944, 960, "Instances", draw2);
inst3.image_xscale = 0.5;
inst3.image_yscale = 0.5;
var inst5 = instance_create_layer(1248, 960, "Instances", draw3);
inst3.image_xscale = 0.5;
inst3.image_yscale = 0.5;
refresh_cards = false
}
