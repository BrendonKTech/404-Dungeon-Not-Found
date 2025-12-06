if (global.turn == "player" && obj_player.mp >= card_cost) {

    var target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);

    if (instance_exists(target)) {

        function calc_damage(base_dmg, attacker, defender) {

            var dmg = base_dmg;
            dmg += global.strength;
			
            if (attacker.weak > 0) {
                dmg *= 0.75;
            }

            if (defender.vulnerable > 0) {
                dmg *= 1.5;
            }

            return round(dmg);
        }


        if (is_damage_card) {

            var total_damage = calc_damage(card_damage, obj_player, target);
            target.hp -= total_damage;

            global.enemy_hit = true;

            // Display damage popup
            var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
            dmg_text.depth = -1000;
            dmg_text.text = string(total_damage);
            dmg_text.color = c_red;
            dmg_text.vy = -1;
            dmg_text.life_time = 60;
        }

        if (is_snowball_card) {

            var total_damage = calc_damage(global.extra_current_damage, obj_player, target);
            target.hp -= total_damage;

            global.extra_current_damage += 3;
            global.enemy_hit = true;

            var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
            dmg_text.depth = -1000;
            dmg_text.text = string(total_damage);
            dmg_text.color = c_red;
            dmg_text.vy = -1;
            dmg_text.life_time = 60;
        }

        if (is_block_card) obj_player.block += block;
        if (is_self_hurt_card) global.hp -= self_damage;
        if (is_mp_card) obj_player.mp += gain_mp;
        if (is_vulnerable_card) target.vulnerable += vulnerable_amount;
        if (is_self_vulnerable_card) obj_player.vulnerable += vulnerable_amount;
        if (is_power_card) obj_player.power += power_amount;

        if (global.apply_weak_on_attack) {
            target.weak += 1;
        }

        if (global.apply_vulnerable_on_attack) {
            target.vulnerable += 1;
        }

        obj_player.mp -= card_cost;
        instance_destroy();
    }
}

