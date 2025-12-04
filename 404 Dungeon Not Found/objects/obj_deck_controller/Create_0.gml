// Piles
draw_pile    = ds_list_create(); 
discard_pile = ds_list_create();
hand         = ds_list_create();

// Positions for drawing icons
draw_pile_x = 50;
draw_pile_y = room_height - 150;

discard_pile_x = room_width - 100;
discard_pile_y = room_height - 150;

// Sprites
drawpile_sprite = spr_cardback;
discardpile_sprite = spr_discard_icon;

// Settings
max_hand_size = 10;
cards_to_draw_start_turn = 5;

// Build deck
scr_deck_build_starting_deck();
