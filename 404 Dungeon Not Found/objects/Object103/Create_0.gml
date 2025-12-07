hp = 10;
max_hp = 10;
mp = 3;
max_mp = 3;
block = 0;
auto_block = 0;
strength = 0;
vulnerable = false;
is_alive = true;

// Reference tutorial controller
tutorial = instance_exists(obj_tutorial_controller) ? instance_find(obj_tutorial_controller, 0) : noone;

// Hand setup
hand = [];
player_deck = [];
player_discard = [];
