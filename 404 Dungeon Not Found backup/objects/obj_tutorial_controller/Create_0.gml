tutorial_active = true;
tutorial_step = 0;
prev_step = -1;
dialogue_text = "";
display_text = "";
char_index = 0;
letter_timer = 0;
letter_delay = 3;
waiting_for_input = false;

// Step-specific flags
waiting_for_card_click = false;
waiting_for_end_turn = false;

// Next button position
btn_x = room_width - 160;
btn_y = room_height - 60;
btn_w = 140;
btn_h = 40;

player_target_card = noone;
player_target_enemy = noone;

global.turn = "player";