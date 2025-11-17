if (global.turn == "player")
{

	if (obj_player.mp >= card_cost) 
	{
		target = instance_nearest(mouse_x, mouse_y, obj_enemy1);
		if (instance_exists(target)) {
			target.hp -= card_damage;
			obj_player.mp -= card_cost;
			instance_destroy();
		}
	}
	else
	{
		 obj_battle_manager.not_enough_mp_text = "Not enough MP!";
		 obj_battle_manager.not_enough_mp_timer = 45; // lasts ~0.75 seconds at 60 FPS
	}
}