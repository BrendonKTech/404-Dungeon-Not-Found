///   CARD REWARD CONTROLLER
// The 3 possible cards
reward_cards = [];

// Filled by scr_reward_show(...)
index_hover   = -1;
index_clicked = -1;

// Layout
card_scale = 0.8;
spacing = 300;

alpha_background = 0;

// Closing delay after choosing
close_timer = -1;

// Each reward fills this from a script
// Y position for cards
card_y = display_get_gui_height() / 2;
