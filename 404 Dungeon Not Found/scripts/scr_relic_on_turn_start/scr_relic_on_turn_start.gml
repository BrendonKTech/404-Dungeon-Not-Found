function scr_relic_on_turn_start(){
	global.cards_played_this_turn = 0;

    // 1. Overclocked CPU: Gain 1 temporary energy
    if (array_contains(global.relics, "Overclocked CPU")) {
        obj_player.mp += 1;
        global.temp_energy += 1; // Track so it can be removed later
    }

    // 11. Fiber-Optic Spool: First card drawn each turn is upgraded
    if (array_contains(global.relics, "Fiber-Optic Spool")) {
        global.upgrade_first_draw = true;
    }
}