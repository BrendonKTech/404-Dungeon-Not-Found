if (tutorial != noone && tutorial.tutorial_active) {
    if (tutorial.tutorial_step == 4 && tutorial.waiting_for_end_turn) {
        show_debug_message("End Turn clicked in tutorial!");
        tutorial.tutorial_step = 5;
        tutorial.waiting_for_end_turn = false;
        tutorial.char_index = 0;
        tutorial.display_text = "";
    } else {
        show_debug_message("End Turn is locked until Step 4.");
    }
}
