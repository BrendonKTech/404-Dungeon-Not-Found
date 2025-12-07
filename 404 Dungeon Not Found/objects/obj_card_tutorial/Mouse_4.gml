if (tutorial != noone && tutorial.tutorial_active) {
    if (tutorial.tutorial_step == 2 && tutorial.waiting_for_card_click) {
        show_debug_message("Tutorial card clicked!");
        tutorial.waiting_for_card_click = false;

        // Deal damage to tutorial NPC
        if (instance_exists(obj_npc_tutorial)) {
            obj_npc_tutorial.hp -= damage;
        }

        // Advance tutorial
        tutorial.tutorial_step = 3;
        tutorial.char_index = 0;
        tutorial.display_text = "";
        tutorial.waiting_for_input = true;
    }
}
