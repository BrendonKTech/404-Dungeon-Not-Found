/*if (global.turn == "player")
{

	if (obj_player.mp >= card_cost) 
	{
		target = instance_nearest(mouse_x, mouse_y, obj_player);
		if (instance_exists(target)) {
			target.hp += card_heal;
			if (target.hp > target.max_hp)
			{
				target.hp = target.max_hp
			}
			obj_player.mp -= card_cost;
			var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
		dmg_text.text = string(card_heal);
		dmg_text.color = c_green;
		dmg_text.vy = -1;   // moves upward
		dmg_text.life_time = 60;
			instance_destroy();
		}
	}
	else
	{
		 obj_battle_manager.not_enough_mp_text = "Not enough MP!";
		 obj_battle_manager.not_enough_mp_timer = 45;
	}
}