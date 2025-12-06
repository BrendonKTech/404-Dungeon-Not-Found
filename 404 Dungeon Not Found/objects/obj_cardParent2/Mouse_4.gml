if (global.turn == "player" && obj_player.mp >= card_cost) {



    // Normal card attack logic
    var target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
    if (instance_exists(target)) {
		if (is_damage_card)
		{
			target.hp -= card_damage;
			if (is_snowball_card)
			{
				global.extra_current_damage += 3
			}
			global.enemy_hit = true;
		}
		if (is_block_card)
		{
			obj_player.mp += gain_mp;
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

        var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
        dmg_text.text = string(card_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
		instance_destroy()
    }
}
