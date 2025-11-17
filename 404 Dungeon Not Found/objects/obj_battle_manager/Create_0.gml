global.turn = "player";

battle_phase = "player_turn";
player = noone;
enemy = noone;

current_card = noone;

player_deck = [];
player_hand = [];
player_discard = [];

max_hand_size = 5;


var inst = instance_create_layer(192, 416, "Instances", obj_player);
inst.image_xscale = 7;
inst.image_yscale = 7;
var inst2 = instance_create_layer(1408, 544, "Instances", obj_enemy1);
inst2.image_xscale = -4.25;
inst2.image_yscale = 4.25;


shuffle_deck(player_deck);
draw_cards(max_hand_size);

not_enough_mp_text = "";
not_enough_mp_timer = 0;