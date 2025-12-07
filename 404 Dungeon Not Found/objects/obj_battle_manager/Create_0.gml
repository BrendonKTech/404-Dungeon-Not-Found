// Battle Manager Create

global.turn = "player";
player = noone;          // No actual player instance needed
battle_phase = "player_turn";
enemies = [];            // array to store all enemies
current_card = noone;

// Player deck/hand setup as global arrays
global.player_deck = [];
global.player_hand = [];
global.player_discard = [];
global.max_hand_size = 5;

// Spawn battle start text
var start_text = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_battleStartText);
start_text.color = c_yellow;
start_text.vy = -1;
start_text.life_time = 60;
global.turn_count++

// Spawn enemies
if (room == rm_test)
{
var enemy_count = 1; // number of regular enemies
var enemy_list = [obj_enemy6, obj_enemy7, obj_enemy8, obj_enemy9];

for (var i = 0; i < enemy_count; i++) {
    var enemy_type = enemy_list[irandom(array_length(enemy_list) - 1)];
    var x_pos = 1400 + i * 300;
    var y_pos = 700

    var enemy_inst = instance_create_layer(x_pos, y_pos, "Instances", enemy_type);
    enemy_inst.image_xscale = 0.6;
    enemy_inst.image_yscale = 0.6;
	if (instance_exists(enemy_inst)) {
    show_debug_message("Enemy spawned: " + string(enemy_inst));
} else {
    show_debug_message("Failed to spawn enemy!");
}

    array_push(enemies, enemy_inst);
}
}

if (room == rm_elite)
{
var enemy_count = 1; // number of regular enemies
var enemy_list = [obj_enemy5, obj_enemy10];

for (var i = 0; i < enemy_count; i++) {
    var enemy_type = enemy_list[irandom(array_length(enemy_list) - 1)];
    var x_pos = 1400 + i * 300;
    var y_pos = 700

    var enemy_inst = instance_create_layer(x_pos, y_pos, "Instances", enemy_type);
    enemy_inst.image_xscale = 0.6;
    enemy_inst.image_yscale = 0.6;
	if (instance_exists(enemy_inst)) {
    show_debug_message("Enemy spawned: " + string(enemy_inst));
} else {
    show_debug_message("Failed to spawn enemy!");
}

    array_push(enemies, enemy_inst);
}
}
if (room == rm_boss)
{
var layer_id = layer_get_id("Background");
var bg_id = layer_background_get_id(layer_id);
layer_background_sprite(bg_id, spr_boss_bg);
var enemy_count = 1; // number of regular enemies
var enemy_list = [obj_enemy4];

for (var i = 0; i < enemy_count; i++) {
    var enemy_type = enemy_list[irandom(array_length(enemy_list) - 1)];
    var x_pos = 1400 + i * 300;
    var y_pos = 700

    var enemy_inst = instance_create_layer(x_pos, y_pos, "Instances", enemy_type);
    enemy_inst.image_xscale = 0.6;
    enemy_inst.image_yscale = 0.6;
	if (instance_exists(enemy_inst)) {
    show_debug_message("Enemy spawned: " + string(enemy_inst));
} else {
    show_debug_message("Failed to spawn enemy!");
}

    array_push(enemies, enemy_inst);
}
}

// Spawn NPC (from merged branch)

// Spawn initial cards


// Card draw function
function draw_card(x, y) {
    if (array_length(global.player_deck) == 0) {
        if (array_length(global.player_discard) > 0) {
            global.player_deck = array_duplicate(global.player_discard);
            global.player_discard = [];

            // Shuffle deck
            for (var i = array_length(global.player_deck)-1; i > 0; i--) {
                var j = irandom(i);
                var temp = global.player_deck[i];
                global.player_deck[i] = global.player_deck[j];
                global.player_deck[j] = temp;
            }
        } else {
            return;
        }
    }

    var card_sprite = global.player_deck[0];
    array_delete(global.player_deck, 0, 1);

    var card = instance_create_layer(x, y, "Instances", obj_cardParent2);
    card.sprite_index = card_sprite;

    array_push(global.player_hand, card);
}

// Misc variables
not_enough_mp_text = "";
not_enough_mp_timer = 0;
show_victory_overlay = false;
show_defeat_overlay = false;
overlay_alpha = 1;
refresh_cards = true;