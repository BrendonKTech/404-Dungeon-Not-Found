function scr_relic_on_damage(_dmg){
	// 5. Firewall Chipset — first time taking unblocked damage, gain 10 block
    if (array_contains(global.relics, "Firewall Chipset")) {

        if (!global.first_unblocked_taken && _dmg > obj_player.block) {
            obj_player.block += 10;
            global.first_unblocked_taken = true;
        }
    }

    // 10. Glitched BIOS Battery — once per combat, below 30% HP gives 2 Artifact
    if (array_contains(global.relics, "Glitched BIOS Battery")) {

        if (!global.used_glitched_bios) {
            var threshold = obj_player.max_hp * 0.30;

            if (obj_player.hp - _dmg <= threshold) {
                obj_player.artifact += 2;
                global.used_glitched_bios = true; 
            }
        }
    }
}