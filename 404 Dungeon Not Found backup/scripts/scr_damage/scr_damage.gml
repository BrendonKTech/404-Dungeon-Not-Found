function scr_damage(_t, _amt) {
    var amt = _amt;

    // Apply target vulnerable
    if (variable_instance_exists(_t, "vulnerable")) {
        amt *= (1 + (_t.vulnerable * 0.5));
    }
	// sound attack
	audio_play_sound(snd_attack, 1, false);

    // Apply damage to target
    if (instance_exists(_t) && variable_instance_exists(_t, "hp")) {
        _t.hp -= amt;

        var dmg_text = instance_create_layer(_t.x, _t.y - 150, "Instances", obj_damage_number);
        dmg_text.text = string(amt);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
    }
}
