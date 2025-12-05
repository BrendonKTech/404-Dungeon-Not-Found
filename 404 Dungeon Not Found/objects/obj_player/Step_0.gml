if (hp <= 0 && is_alive) {
	is_alive = false;
	with (obj_battle_manager)
	{
		alarm[1] = 60;
	}
}

if (is_attacking) {
    
    if (attack_phase == 1) {
        x += attack_speed;

        if (x >= start_x + attack_offset) {
            attack_phase = 2;
        }
    }

    else if (attack_phase == 2) {
        x -= attack_speed;

        if (x <= start_x) {
            x = start_x;
            is_attacking = false;
            attack_phase = 0;
        }
    }
}


