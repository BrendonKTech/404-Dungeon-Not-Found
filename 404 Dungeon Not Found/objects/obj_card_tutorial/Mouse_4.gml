if (obj_tutorial_controller != noone && obj_tutorial_controller.tutorial_active) {
    if (obj_tutorial_controller.tutorial_step == 2 && obj_tutorial_controller.waiting_for_card_click) {
        show_debug_message("Tutorial card clicked!");
        obj_tutorial_controller.waiting_for_card_click = false;

        // Deal damage to tutorial NPC
        if (instance_exists(obj_npc)) {
            obj_npc.hp -= damage;
			obj_player_tutorial.mp -= card_cost
			audio_play_sound(snd_robot_hit, -5, false)
			
        }

        // Advance tutorial
        obj_tutorial_controller.tutorial_step = 3;
        obj_tutorial_controller.char_index = 0;
        obj_tutorial_controller.display_text = "";
        obj_tutorial_controller.waiting_for_input = true;
		instance_destroy()
    }
}
