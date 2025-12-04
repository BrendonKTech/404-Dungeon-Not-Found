hp = 50;
max_hp = 50;

mp = 3;
max_mp = 3;

global.player = id;

alpha = 0;

start_x = x;
start_y = y;
attack_offset = 100;
is_alive = true;
is_attacking = false;
attack_phase = 0;
attack_speed = 10;

hand = [];
max_hand = 10;

hand[0] = {name: "Strike", damage: 5};
hand[1] = {name: "Defend", block: 5};
hand[2] = {name: "Strike", damage: 5};