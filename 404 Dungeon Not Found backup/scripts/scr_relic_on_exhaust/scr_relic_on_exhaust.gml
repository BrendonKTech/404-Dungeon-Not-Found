function scr_relic_on_exhaust(_card){
	 // 6. Debugger’s Toolkit – heal 1 when exhausting
    if (array_contains(global.relics, "Debugger’s Toolkit")) {
        obj_player.hp = min(obj_player.max_hp, obj_player.hp + 1);
    }
}