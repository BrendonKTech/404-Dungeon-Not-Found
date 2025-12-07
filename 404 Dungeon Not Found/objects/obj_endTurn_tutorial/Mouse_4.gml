if (obj_tutorial_controller != noone && obj_tutorial_controller.tutorial_active) {
    if (obj_tutorial_controller.tutorial_step == 4 && obj_tutorial_controller.waiting_for_end_turn) {
        show_debug_message("End Turn clicked in tutorial!");
		global.hp -= 10
		global.turn = "enemy"
		audio_play_sound(snd_OUCH, -5, false)
       obj_tutorial_controller.tutorial_step = 5;
        obj_tutorial_controller.char_index = 0;
        obj_tutorial_controller.display_text = "";
        obj_tutorial_controller.waiting_for_input = true;
    } else {
        show_debug_message("End Turn is locked until Step 4.");
    }
}
