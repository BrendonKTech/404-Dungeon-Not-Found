if (global.turn == "enemy") {
	with(obj_enemy1) {
		obj_player.hp -= damage;
	}
	
	obj_player.mp = obj_player.max_mp;
	
	global.turn = "player";
}

if (not_enough_mp_timer > 0) {
    not_enough_mp_timer -= 1;
}
