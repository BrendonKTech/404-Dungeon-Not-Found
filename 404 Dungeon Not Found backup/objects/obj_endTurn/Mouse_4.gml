var tutorial = instance_exists(obj_tutorial_controller) ? instance_find(obj_tutorial_controller, 0) : noone;

if (tutorial != noone && tutorial.tutorial_active) {
    if (tutorial.tutorial_step == 4 && tutorial.waiting_for_end_turn) {
        show_debug_message("End Turn clicked! Tutorial progresses.");

        tutorial.tutorial_step += 1; // Step 5
        tutorial.waiting_for_end_turn = false;
        tutorial.char_index = 0;
        tutorial.display_text = "";

        // Switch turn to enemy
        global.turn = "enemy";

        // Start enemy attack
        with (obj_npc) {
            if (!is_attacking) {
                is_attacking = true;
                attack_phase = 1;
            }
        }
    } else {
        show_debug_message("End Turn is locked until Step 4 dialogue finishes.");
        exit;
    }
}
// Normal End Turn behavior if tutorial inactive
else {
    global.turn = "enemy";
    with (obj_npc) {
        if (!is_attacking) {
            is_attacking = true;
            attack_phase = 1;
        }
    }
}