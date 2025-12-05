global.turn = "player";

battle_phase = "player_turn";
player = noone;
enemy = noone;

current_card = noone;

player_deck = [];
player_hand = [];
player_discard = [];

max_hand_size = 5;


 var start_text = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_battleStartText);
       start_text.color = c_yellow;
        start_text.vy = -1;   // moves upward
        start_text.life_time = 60;

/*var enemy_index = irandom_range(1, 5);
var enemy_sprite_name = "spr_enemy" + string(enemy_index);
var enemy_asset = asset_get_index(enemy_sprite_name);

var inst6 = instance_create_layer(1408, 600, "Instances", obj_tempenemy1);
inst6.image_xscale = -2.25;
inst6.image_yscale = 2.25;
inst6.sprite_index = enemy_asset;*/


var inst2 = instance_create_layer(1408, 600, "Instances", obj_npc);
inst2.image_xscale = -1.25;
inst2.image_yscale = 1.25;
var inst3 = instance_create_layer(640, 960, "Instances", obj_card1);
inst3.image_xscale = 0.3;
inst3.image_yscale = 0.3;
var inst4 = instance_create_layer(944, 960, "Instances", obj_card1);
inst3.image_xscale = 0.3;
inst3.image_yscale = 0.3;
var inst5 = instance_create_layer(1248, 960, "Instances", obj_card2);
inst3.image_xscale = 0.3;
inst3.image_yscale = 0.3;

function draw_card(x, y)
{
    // If deck empty, reshuffle discard
    if (array_length(player_deck) == 0)
    {
        if (array_length(player_discard) > 0)
        {
            player_deck = array_duplicate(player_discard);
            player_discard = [];

            // Shuffle
            for (var i = array_length(player_deck) - 1; i > 0; i--)
            {
                var j = irandom(i);
                var temp = player_deck[i];
                player_deck[i] = player_deck[j];
                player_deck[j] = temp;
            }
        }
        else
        {
            // Completely safe: no cards anywhere, do nothing
            return;
        }
    }

    // Draw card from top
    var card_sprite = player_deck[0];
    array_delete(player_deck, 0, 1);

    // Create card instance
    var card = instance_create_layer(x, y, "Instances", obj_cardParent);
    card.sprite_index = card_sprite;

    // Add to hand list
    array_push(player_hand, card);
}


not_enough_mp_text = "";
not_enough_mp_timer = 0;
show_victory_overlay = false;
show_defeat_overlay = false;
overlay_alpha = 1;  

refresh_cards = false
