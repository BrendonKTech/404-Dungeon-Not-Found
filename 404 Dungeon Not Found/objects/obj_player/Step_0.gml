if (hp <= 0 && is_alive) {
	is_alive = false;
	with (obj_battle_manager)
	{
		alarm[1] = 60;
	}
}