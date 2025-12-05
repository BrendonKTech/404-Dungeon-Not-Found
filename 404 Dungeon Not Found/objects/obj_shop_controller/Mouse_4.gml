// Check Leave Shop
if (mouse_x >= leave_x && mouse_x <= leave_x + leave_w &&
    mouse_y >= leave_y && mouse_y <= leave_y + leave_h) {
    
    room_goto(rm_map);
    exit;
}

// Buy Cards
for (var i = 0; i < array_length(cards_for_sale); i++) {
    var cx = shop_start_x + i * shop_spacing_x;
    var cy = y_cards;

    if (mouse_x > cx-50 && mouse_x < cx+50 && mouse_y > cy-70 && mouse_y < cy+70) {
        var price = card_prices[i];
        if (global.gold >= price) {
            global.gold -= price;

            // Add card to player deck
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

    if (mouse_x > cx-40 && mouse_x < cx+40 && mouse_y > cy-40 && mouse_y < cy+40) {
        var price = potion_prices[i];
        if (global.gold >= price) {
            global.gold -= price;

            var potion_obj = potions_for_sale[i];

            // Give potion to player
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

    if (mouse_x > cx-40 && mouse_x < cx+40 && mouse_y > cy-40 && mouse_y < cy+40) {
        var price = relic_prices[i];
        if (global.gold >= price) {
            global.gold -= price;

            var relic_obj = relics_for_sale[i];

            // Add relic to player inventory
            array_push(global.relics, relic_obj);

            show_debug_message("Bought relic: " + scr_get_shop_name(relic_obj));
        } else {
            show_debug_message("Not enough gold for relic!");
        }
    }
}
