function scr_play_card(_card, _target) {

    var c = _card;
    var cost = c.card_cost;

    if (obj_player.mp >= cost) {
		obj_player.mp -= cost;
	} else {
		show_debug_message("Not enough MP to play this card!");
		return;
	}


    if (c.card_type == "attack") {

        var dmg = c.damage;

        // Scaling card
        if (variable_instance_exists(c, "extra_value") && c.extra_value > 0) {
            if (!variable_instance_exists(c, "extra_value_used")) c.extra_value_used = 0;
            dmg += c.extra_value_used;
        }

        // Apply damage
        if (c.card_target == "enemy") {
            scr_damage(_target, dmg);
        } else if (c.card_target == "all") {
            with (obj_enemy_parent) {
                scr_damage(id, dmg);
            }
        }

        // Multi-hit card
        if (variable_instance_exists(c, "hits") && c.hits > 1) {
            for (var i = 2; i <= c.hits; i++) {
                scr_damage(_target, dmg);
            }
        }

        // Recursive Call scaling
        if (variable_instance_exists(c, "extra_value") && c.extra_value > 0) {
            c.damage += c.extra_value;
        }
    }

    // SKILLS
    if (c.card_type == "skill") {

        if (variable_instance_exists(c, "block") && c.block > 0) {
            scr_gain_block(obj_player, c.block);
        }

        if (variable_instance_exists(c, "draw_cards") && c.draw_cards > 0) {
            scr_deck_draw_cards(c.draw_cards);
        }

        if (variable_instance_exists(c, "gain_mp") && c.gain_mp > 0) {
            obj_player.mp += c.gain_mp;
        }

        if (variable_instance_exists(c, "mp_next_turn") && c.mp_next_turn > 0) {
            obj_player.mp_next_turn += c.mp_next_turn;
        }

        if (variable_instance_exists(c, "self_damage") && c.self_damage > 0) {
            obj_player.hp -= c.self_damage;
        }

        if (variable_instance_exists(c, "double_block") && c.double_block) {
            obj_player.block *= 2;
        }

        if (variable_instance_exists(c, "apply_vulnerable") && c.apply_vulnerable > 0) {
            if (c.card_target == "self") 
                scr_apply_vulnerable(obj_player, c.apply_vulnerable);
            else if (c.card_target == "all")
                with (obj_enemy_parent) scr_apply_vulnerable(id, c.apply_vulnerable);
            else
                scr_apply_vulnerable(_target, c.apply_vulnerable);
        }

        if (variable_instance_exists(c, "apply_weak") && c.apply_weak > 0) {
            if (c.card_target == "all")
                with (obj_enemy_parent) scr_apply_weak(id, c.apply_weak);
            else
                scr_apply_weak(_target, c.apply_weak);
        }
    }

    // POWERS
    if (c.card_type == "power") {
        if (variable_instance_exists(c, "block_end_turn")) {
            obj_player.block_end_turn += c.block_end_turn;
        }
    }


    // Discard the card
    scr_deck_discard_card(c);
}
