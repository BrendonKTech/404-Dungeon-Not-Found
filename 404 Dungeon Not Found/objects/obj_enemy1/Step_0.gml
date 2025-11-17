if (hp <= 0 && is_alive) {
	is_alive = false;
	with (obj_battle_manager)
	{
		alarm[0] = 60;
	}
	instance_destroy();
}