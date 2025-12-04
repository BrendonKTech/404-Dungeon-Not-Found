if (global.turn == "player") {

    if (obj_player.energy >= card_cost) {

        var target = noone;

        if (card_target == "enemy") {
            target = instance_nearest(mouse_x, mouse_y, obj_enemy_parent);
            if (!instance_exists(target)) exit;
        }

        // Call our main card effect script
        scr_play_card(id, target);

    } else {
        obj_battle_manager.not_enough_mp_text  = "Not enough Energy!";
        obj_battle_manager.not_enough_mp_timer = 45;
    }
}
