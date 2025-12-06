function scr_relic_on_card_draw(_card){
	// 2. Corrupted RAM Stick: if drawing Status/Curse gain 1 Block
    if (array_contains(global.relics, "Corrupted RAM Stick")) {
        if (_card.is_status) {
            obj_player.block += 1;
        }
    }

    // 11. Fiber-Optic Spool: Upgrade first card drawn each turn
    if (global.upgrade_first_draw) {
        if (_card.can_upgrade) {
            _card.upgraded = true;
        }
        global.upgrade_first_draw = false;
    }
}