if (global.turn == "player")
{
	global.turn = "enemy"
}

with (obj_tempenemy1) {
    if (!is_attacking) {
        is_attacking = true;
        attack_phase = 1;
    }
}
