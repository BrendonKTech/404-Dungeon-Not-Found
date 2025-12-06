function scr_relic_on_turn_end(){
	// Remove temporary energy from Overclocked CPU
    if (global.temp_energy > 0) {
        obj_player.mp -= global.temp_energy;
        global.temp_energy = 0;
    }

    // 3. Quantum Cooling Fan: If no Block, gain 3 block
    if (array_contains(global.relics, "Quantum Cooling Fan")) {
        if (obj_player.block <= 0) {
            obj_player.block += 3;
        }
    }
}