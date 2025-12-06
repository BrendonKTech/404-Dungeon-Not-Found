// Enemy turn handled by battle_controller
if (global.turn == "enemy") {
    
    // Only act if it's this enemy's turn
    if (instance_exists(self)) {
        turn_counter += 1;

        // Basic attack
        if (turn_counter mod 2 == 1) {
            // Do damage
            var dmg = damage;
            
            // Apply Vulnerable / Weak effects on player if desired
            if (weak > 0) dmg = dmg * 0.75; 
            
            var damage_after_block = max(dmg - obj_player.block, 0);
			global.player.hp -= damage_after_block;

            
            var dmg_text = instance_create_layer(global.player.x, global.player.y-150, "Instances", obj_damage_number);
            dmg_text.text = string(dmg);
            dmg_text.color = c_red;
            dmg_text.vy = -1;
            dmg_text.life_time = 60;
            
            // play attack sound
            // audio_play_sound(snd_attack,1,false);
        }
        // Alternate effect turn
        else {
            // apply Weak or Vulnerable to player
            global.player.weak += 1; 
            global.player.vulnerable += 1;
        }

        // Reset temporary shield for elites at end of turn
        if (shield > 0) shield = 0;
    }
}

if (hp <= 0 && is_alive) {
	hp = 0;
    is_alive = false;

    with (obj_battle_manager) {
        alarm[0] = 60;
    }
}

if (!is_alive) {
    image_alpha -= fade_speed;

    if (image_alpha <= 0) {
        instance_destroy();
    }
}

if (global.enemy_hit = true)
{
	global.enemy_hit = false
	sprite_index = damage_sprite
	image_index = 0
	image_speed = 0.85
}