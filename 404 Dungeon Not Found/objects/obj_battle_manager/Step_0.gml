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

    global.turn = "player";
}

if (not_enough_mp_timer > 0) {
    not_enough_mp_timer -= 1;
    if (not_enough_mp_timer <= 0) {
        not_enough_mp_timer = 0; // optional
    }
}
