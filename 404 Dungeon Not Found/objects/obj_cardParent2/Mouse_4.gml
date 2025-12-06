if (global.turn == "player" && obj_player.mp >= card_cost) {



    // Normal card attack logic
    var target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
    if (instance_exists(target)) {
		if (is_damage_card)
		{
			var total_damage = card_damage + target.vulnerable
			target.hp -= total_damage
			
			var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
dmg_text.depth = -1000;
        dmg_text.text = string(total_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
			global.enemy_hit = true;
		}
		if (is_snowball_card)
			{
				var total_damage = global.extra_current_damage + target.vulnerable
				target.hp -= total_damage;
				global.extra_current_damage += 3;
				var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
		dmg_text.depth = -1000;
        dmg_text.text = string(total_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
			global.enemy_hit = true;
			}
		if (is_block_card)
		{
			obj_player.block += block
		}
		
        obj_player.mp -= card_cost;
		if (is_self_hurt_card)
		{
			global.hp -= self_damage
		}
		if (is_mp_card)
		{
			obj_player.mp += gain_mp;
		}
		if (is_vulnerable_card)
		{
			target.vulnerable += vulnerable_amount;
		}
		if (is_self_vulnerable_card)
		{
			obj_player.vulnerable += vulnerable_amount;
		}
		if (is_power_card)
		{
			obj_player.power += power_amount;
		}

		instance_destroy()
    }
}
