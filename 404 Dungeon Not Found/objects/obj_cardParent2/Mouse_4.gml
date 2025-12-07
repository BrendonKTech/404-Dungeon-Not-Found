if  room = rm_test || room = rm_elite || room = rm_boss
{
if (global.turn == "player") {
if global.mp >= card_cost
{
    var target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
    if (instance_exists(target)) {
		if (is_damage_card)
		{
			if (target.vulnerable)
			{
			var total_damage = ceil((card_damage + obj_player.strength) * 1.5)
			target.hp -= total_damage
			audio_play_sound(snd_robot_hit, -5, false)
			var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
dmg_text.depth = -1000;
        dmg_text.text = string(total_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
			global.enemy_hit = true;
			}
			else
			{
				var total_damage = ceil((card_damage + obj_player.strength))
			target.hp -= total_damage
			audio_play_sound(snd_robot_hit, -5, false)
			var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
dmg_text.depth = -1000;
        dmg_text.text = string(total_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
			global.enemy_hit = true;
			}
			
		}
		if (is_snowball_card)
			{
				if (target.vulnerable)
				{
				var total_damage = ceil((global.extra_current_damage + obj_player.strength) * 1.5)
				target.hp -= total_damage;
				audio_play_sound(snd_robot_hit, -5, false)
				global.extra_current_damage += 3;
				var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
		dmg_text.depth = -1000;
        dmg_text.text = string(total_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
			global.enemy_hit = true;			
				}
				else
				{
				var total_damage = ceil((global.extra_current_damage + obj_player.strength))
				target.hp -= total_damage;
				audio_play_sound(snd_robot_hit, -5, false)
				global.extra_current_damage += 3;
				var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
		dmg_text.depth = -1000;
        dmg_text.text = string(total_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
			global.enemy_hit = true;
			
			}
			}
		if (is_block_card)
		{
			obj_player.block += block
		}
		
        global.mp -= card_cost;
		if (is_self_hurt_card)
		{
			global.hp -= self_damage
		}
		if (is_mp_card)
		{
			global.mp += gain_mp;
		}
		if (is_vulnerable_card)
		{
			target.vulnerable = true;
		}
		if (is_self_vulnerable_card)
		{
			obj_player.vulnerable += vulnerable_amount;
		}
		if (is_power_card)
		{
			obj_player.strength += power_amount;
		}
		if (is_double_block_card)
		{
			obj_player.block += obj_player.block;
		}
		if (is_auto_block_card)
		{
			global.auto_block += auto_block
		}

        instance_destroy();
    }
}
else
if global.mp < card_cost
{
obj_battle_manager.not_enough_mp_text = "Not enough MP";
obj_battle_manager.not_enough_mp_timer = 40; // frames to show message
}
}



}

