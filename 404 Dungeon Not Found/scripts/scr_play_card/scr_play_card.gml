function scr_play_card(_card, _target) {

    var c = _card; // instance
    var cost = c.card_cost;

    // Pay energy
    obj_player.mp -= cost;

    // === UNIVERSAL CARD BEHAVIOR ===

    // --- ATTACK ---
    if (c.card_type == "attack") {

        var dmg = c.damage;

        // Strength and Temporary strength
        dmg += obj_player.strength + obj_player.strength_temp;

        // Scaling card (Recursive Call)
        if (c.extra_value > 0) {
            dmg += c.extra_value_used;
        }

        // Apply damage
        if (c.card_target == "enemy") scr_damage(_target, dmg);
        if (c.card_target == "all") with (obj_enemy_parent) scr_damage(id, dmg);

        // Multi-hit card (Double Tap Packet)
        if (c.hits > 1) {
            for (var i = 2; i <= c.hits; i++) {
                scr_damage(_target, dmg);
            }
        }

        // Recursive Call scaling
        if (c.extra_value > 0) {
            c.damage += c.extra_value;
        }
    }

    // --- SKILLS ---
    if (c.card_type == "skill") {

        if (c.block > 0) {
            scr_gain_block(obj_player, c.block);
        }

        if (c.draw_cards > 0) {
            scr_deck_draw_cards(c.draw_cards);
        }

        if (c.gain_mp > 0) {
            obj_player.energy += c.gain_mp;
        }

        if (c.mp_next_turn > 0) {
            obj_player.mp_next_turn += c.mp_next_turn;
        }

        if (c.self_damage > 0) {
            obj_player.hp -= c.self_damage;
        }

        if (c.double_block) {
            obj_player.block *= 2;
        }

        if (c.apply_vulnerable > 0) {
            if (c.card_target == "self") 
                scr_apply_vulnerable(obj_player, c.apply_vulnerable);
            else if (c.card_target == "all")
                with (obj_enemy_parent) scr_apply_vulnerable(id, c.apply_vulnerable);
            else
                scr_apply_vulnerable(_target, c.apply_vulnerable);
        }

        if (c.apply_weak > 0) {
            if (c.card_target == "all")
                with (obj_enemy_parent) scr_apply_weak(id, c.apply_weak);
            else
                scr_apply_weak(_target, c.apply_weak);
        }
    }

    // --- POWERS ---
    if (c.card_type == "power") {
        obj_player.block_end_turn += c.block_end_turn;
    }

    // --- TEMP STRENGTH ---
    if (c.temp_strength > 0) {
        obj_player.strength_temp += c.temp_strength;
    }

    // === Discard the card ===
    scr_deck_discard_card(c);
}
