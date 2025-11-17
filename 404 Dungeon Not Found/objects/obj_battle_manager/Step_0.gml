if (global.turn == "enemy") {
	with(obj_enemy1) {
		obj_player.hp -= damage;
	}
	
	//damage numbers
	var dmg_text = instance_create_layer(obj_player.x, obj_player.y - 50, "Instances", obj_damage_number);
		dmg_text.text = string(obj_enemy1.damage);
		dmg_text.color = c_red;
		dmg_text.vy = -1;   // moves upward
		dmg_text.life_time = 60;

	
	obj_player.mp++;
	
global.turn = "player";
}

if (not_enough_mp_timer > 0) {
    not_enough_mp_timer -= 1;
}
