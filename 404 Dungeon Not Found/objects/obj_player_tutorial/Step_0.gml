if (global.hp <= 0 && is_alive) {
    is_alive = false;
    // In tutorial, just destroy player or reset tutorial
    show_debug_message("Tutorial player defeated!");
    instance_destroy();
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



