if (obj_player.mp >= card_cost) {
	target = instance_nearest(mouse_x, mouse_y, obj_enemy1);
	if (instance_exists(target)) {
		target.hp -= card_damage;
		obj_player.mp -= card_cost;
		instance_destroy();
	}
}