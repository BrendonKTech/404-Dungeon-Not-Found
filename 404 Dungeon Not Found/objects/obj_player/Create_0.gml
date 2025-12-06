

mp       = 3;
max_mp   = 3;
mp_next_turn = 0;

block        = 0;
auto_block = 0;

vulnerable   = 0;
weak         = 0;
global.temp_mp = 0;
global.player = id;

is_alive      = true;
is_attacking  = false;
attack_phase  = 0;
attack_speed  = 10;

start_x       = x;
start_y       = y;
attack_offset = 100;

potions = [];

draw_pile = ds_list_create();
//ds_list_destroy(draw_pile);

hand = [];
player_deck = [];
player_discard = [];

image_speed = 0.5