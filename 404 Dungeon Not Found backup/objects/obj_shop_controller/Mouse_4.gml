// Convert mouse to GUI coordinates
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Leave Button
if (mx >= leave_x && mx <= leave_x + leave_w &&
    my >= leave_y && my <= leave_y + leave_h) {

    room_goto(rm_map);
    return;
}

// Buy Cards
for (var i = 0; i < array_length(cards_for_sale); i++) {

    var cx = shop_start_x + i * shop_spacing_x;
    var cy = y_cards;

    var hw = 50 * shop_scale_cards;
    var hh = 70 * shop_scale_cards;

    if (mouse_x > cx-hw && mouse_x < cx+hw && mouse_y > cy-hh && mouse_y < cy+hh) {

        var price = card_prices[i];

        if (global.gold >= price) {
            global.gold -= price;

            var card_obj = cards_for_sale[i];
            ds_list_add(obj_deck_controller.draw_pile, card_obj);

            show_debug_message("Bought card: " + scr_get_shop_name(card_obj));
        } else {
            show_debug_message("Not enough gold for card!");
        }
    }
}

// Buy Potions
for (var i = 0; i < array_length(potions_for_sale); i++) {

    var cx = shop_start_x + i * shop_spacing_x;
    var cy = y_potions;

    var hw = 40 * shop_scale_potion;
    var hh = 40 * shop_scale_potion;

    if (mouse_x > cx-hw && mouse_x < cx+hw && mouse_y > cy-hh && mouse_y < cy+hh) {

        var price = potion_prices[i];

        if (global.gold >= price) {
            global.gold -= price;

            var potion_obj = potions_for_sale[i];
            array_push(obj_player.potions, potion_obj);

            show_debug_message("Bought potion: " + scr_get_shop_name(potion_obj));
        } else {
            show_debug_message("Not enough gold for potion!");
        }
    }
}

// Buy Relics
for (var i = 0; i < array_length(relics_for_sale); i++) {

    var cx = shop_start_x + i * shop_spacing_x;
    var cy = y_relics;

    var hw = 40 * shop_scale_relic;
    var hh = 40 * shop_scale_relic;

    if (mouse_x > cx-hw && mouse_x < cx+hw && mouse_y > cy-hh && mouse_y < cy+hh) {

        var price = relic_prices[i];

        if (global.gold >= price) {
            global.gold -= price;

            var relic_obj = relics_for_sale[i];
            array_push(global.relics, relic_obj);

            show_debug_message("Bought relic: " + scr_get_shop_name(relic_obj));
        } else {
            show_debug_message("Not enough gold for relic!");
        }
    }
}
