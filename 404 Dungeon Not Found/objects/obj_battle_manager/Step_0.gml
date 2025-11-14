if (turn == "enemy") {
	with(obj_enemy1) {
		obj_player.hp -= damage;
	}
	
	obj_player.mp = obj_player.max_mp;
	
	turn = "player";
}