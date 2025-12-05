/// DRAW EVENT

draw_set_font(Font1);
draw_set_color(c_white);

// Draw player gold
draw_text(50, 50, "Gold: " + string(global.gold));

/// Draw Cards
for (var i = 0; i < array_length(cards_for_sale); i++) {
    var cx = shop_start_x + i * shop_spacing_x;
    var cy = y_cards;

    var c = cards_for_sale[i];
    var spr = scr_get_shop_sprite(c);
    if (spr != -1) draw_sprite(spr, 0, cx, cy);

    // Price below
    draw_text(cx - 20, cy + 120, string(card_prices[i]) + "G");

    // Hover tooltip
    if (mouse_x > cx-50 && mouse_x < cx+50 && mouse_y > cy-70 && mouse_y < cy+70) {
        draw_set_color(c_black);
		draw_set_alpha(180 / 255);
        draw_rectangle(mouse_x+20, mouse_y-60, mouse_x+320, mouse_y+60, false);
        draw_set_color(c_white);
        draw_text(mouse_x+30, mouse_y-50, scr_get_shop_name(c));
        draw_text(mouse_x+30, mouse_y-20, scr_get_shop_description(c));
        draw_text(mouse_x+30, mouse_y+10, "Cost: " + string(c.card_cost));
    }
}

/// Draw Potions
for (var i = 0; i < array_length(potions_for_sale); i++) {
    var cx = shop_start_x + i * shop_spacing_x;
    var cy = y_potions;

    var p = potions_for_sale[i];
    var spr = scr_get_shop_sprite(p);
    if (spr != -1) draw_sprite(spr, 0, cx, cy);

    draw_text(cx - 20, cy + 80, string(potion_prices[i]) + "G");

    // Hover tooltip
    if (mouse_x > cx-40 && mouse_x < cx+40 && mouse_y > cy-40 && mouse_y < cy+40) {
        draw_set_color(c_black);
		draw_set_alpha(180 / 255);
        draw_rectangle(mouse_x+20, mouse_y-60, mouse_x+220, mouse_y+60, false);
        draw_set_color(c_white);
        draw_text(mouse_x+30, mouse_y-50, scr_get_shop_name(p));
        draw_text(mouse_x+30, mouse_y-20, scr_get_shop_description(p));
    }
}

/// Draw Relics
for (var i = 0; i < array_length(relics_for_sale); i++) {
    var cx = shop_start_x + i * shop_spacing_x;
    var cy = y_relics;

    var r = relics_for_sale[i];
    var spr = scr_get_shop_sprite(r);
    if (spr != -1) draw_sprite(spr, 0, cx, cy);

    draw_text(cx - 20, cy + 80, string(relic_prices[i]) + "G");

    // Hover tooltip
    if (mouse_x > cx-40 && mouse_x < cx+40 && mouse_y > cy-40 && mouse_y < cy+40) {
        draw_set_color(c_black);
		draw_set_alpha(180 / 255);
        draw_rectangle(mouse_x+20, mouse_y-60, mouse_x+220, mouse_y+60, false);
        draw_set_color(c_white);
        draw_text(mouse_x+30, mouse_y-50, scr_get_shop_name(r));
        draw_text(mouse_x+30, mouse_y-20, scr_get_shop_description(r));
    }
}

/// Draw Leave Button
draw_set_color(c_red);
draw_rectangle(leave_x, leave_y, leave_x+leave_w, leave_y+leave_h, false);
draw_set_color(c_white);
draw_text(leave_x+10, leave_y+10, "Leave Shop");
