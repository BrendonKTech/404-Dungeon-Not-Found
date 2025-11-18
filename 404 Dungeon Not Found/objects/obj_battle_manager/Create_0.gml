global.turn = "player";

battle_phase = "player_turn";
player = noone;
enemy = noone;

current_card = noone;

player_deck = [];
player_hand = [];
player_discard = [];

max_hand_size = 5;


var inst = instance_create_layer(392, 600, "Instances", obj_player);
inst.image_xscale = 7;
inst.image_yscale = 7;
var inst2 = instance_create_layer(1408, 600, "Instances", obj_enemy1);
inst2.image_xscale = -4.25;
inst2.image_yscale = 4.25;

var inst3 = instance_create_layer(640, 960, "Instances", obj_card1);
inst3.image_xscale = 0.5;
inst3.image_yscale = 0.5;
var inst4 = instance_create_layer(944, 960, "Instances", obj_card1);
inst3.image_xscale = 0.5;
inst3.image_yscale = 0.5;
var inst5 = instance_create_layer(1248, 960, "Instances", obj_card1);
inst3.image_xscale = 0.5;
inst3.image_yscale = 0.5;


not_enough_mp_text = "";
not_enough_mp_timer = 0;
show_victory_overlay = false;
show_defeat_overlay = false;
overlay_alpha = 1;  

refresh_cards = false
