if (global.turn == "player" && obj_player.mp >= card_cost) {
    
    var target = noone;

    if (card_target == "enemy") {
        // Only select a target if at least one enemy exists
        if (array_length(obj_battle_manager.enemies) > 0) {
            target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
        }

        if (!instance_exists(target)) exit; // nothing to hit
    }

    scr_play_card(id, target);
}
else if (global.turn == "player") {
    if (instance_exists(obj_battle_manager)) {
        obj_battle_manager.not_enough_mp_text  = "Not enough Energy!";
        obj_battle_manager.not_enough_mp_timer = 45;
    }
}
