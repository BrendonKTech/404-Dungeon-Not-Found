hp          = 50;
max_hp      = 50;

mp       = 3;
max_mp   = 3;
mp_next_turn = 0;

block        = 0;
block_end_turn = 0;
strength     = 0;
strength_temp = 0;

vulnerable   = 0;
weak         = 0;

global.player = id;

is_alive      = true;
is_attacking  = false;
attack_phase  = 0;
attack_speed  = 10;

start_x       = x;
start_y       = y;
attack_offset = 100;

hand = [];
hand[0] = {name: "Strike", damage: 5};
hand[1] = {name: "Defend", block: 5};
hand[2] = {name: "Strike", damage: 5};