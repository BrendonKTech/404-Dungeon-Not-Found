draw_set_font(Font1);
draw_set_color(c_white);

// SETTINGS
var base_scale_cards  = 0.4;
var base_scale_potion = 1.8;
var base_scale_relic  = 2.0;

var hover_scale_mult  = 1.15;  // Zoom on hover
var price_offset      = 15;    // Distance under item

if (!is_array(hover_scale_cards))  hover_scale_cards  = [];
if (!is_array(hover_scale_potion)) hover_scale_potion = [];
if (!is_array(hover_scale_relic))  hover_scale_relic  = [];

array_resize(hover_scale_cards,  array_length(cards_for_sale));
array_resize(hover_scale_potion, array_length(potions_for_sale));
array_resize(hover_scale_relic,  array_length(relics_for_sale));

for (var i = 0; i < array_length(hover_scale_cards); i++)
    if (hover_scale_cards[i] == undefined) hover_scale_cards[i] = base_scale_cards;

for (var i = 0; i < array_length(hover_scale_potion); i++)
    if (hover_scale_potion[i] == undefined) hover_scale_potion[i] = base_scale_potion;

for (var i = 0; i < array_length(hover_scale_relic); i++)
    if (hover_scale_relic[i] == undefined) hover_scale_relic[i] = base_scale_relic;


function get_center_x(count) {
    return display_get_gui_width() * 0.5 - ((count-1) * shop_spacing_x) * 0.5;
}

var cards_start_x   = get_center_x(array_length(cards_for_sale));
var potions_start_x = get_center_x(array_length(potions_for_sale));
var relics_start_x  = get_center_x(array_length(relics_for_sale));


// DRAW CARDS
for (var i = 0; i < array_length(cards_for_sale); i++) {
    var cx = cards_start_x + i * shop_spacing_x;
    var cy = y_cards;

    var c = cards_for_sale[i];
    var spr = scr_get_shop_sprite(c);

    var w = sprite_get_width(spr);
    var h = sprite_get_height(spr);

    // hover check
    var hovered =
        mouse_x > cx - w*base_scale_cards/2 &&
        mouse_x < cx + w*base_scale_cards/2 &&
        mouse_y > cy - h*base_scale_cards/2 &&
        mouse_y < cy + h*base_scale_cards/2;

    var target = hovered ? base_scale_cards * hover_scale_mult : base_scale_cards;
    hover_scale_cards[i] = lerp(hover_scale_cards[i], target, 0.25);

    // rarity border
    var rarity = scr_get_shop_rarity(c); 
    switch(rarity) {
        case "common":   draw_set_color(make_color_rgb(160,160,160)); break;
        case "uncommon": draw_set_color(make_color_rgb(80,130,255)); break;
        case "rare":     draw_set_color(make_color_rgb(170,65,255)); break;
        default:         draw_set_color(c_white);
    }

    // draw border glow
    draw_circle_color(cx, cy, max(w,h)*hover_scale_cards[i]/2 + 6, c_white, c_black, false);

    // draw sprite
    draw_sprite_ext(spr, 0, cx, cy, hover_scale_cards[i], hover_scale_cards[i], 0, c_white, 1);

    // draw price under item
    var bottom = cy + (h * hover_scale_cards[i]) * 0.5;
    draw_text(cx - 10, bottom + price_offset, string(card_prices[i]) + "G");

    // tooltip
    if (hovered) {
        draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(mouse_x+20, mouse_y-60, mouse_x+320, mouse_y+60, false);
        draw_set_color(c_white);
        draw_text(mouse_x+30, mouse_y-50, scr_get_shop_name(c));
        draw_text(mouse_x+30, mouse_y-20, scr_get_shop_description(c));
        draw_text(mouse_x+30, mouse_y+10, "Cost: " + string(card_prices[i]));
        draw_set_alpha(1);
    }
}

// DRAW POTIONS
for (var i = 0; i < array_length(potions_for_sale); i++) {
    var cx = potions_start_x + i * shop_spacing_x;
    var cy = y_potions;

    var p = potions_for_sale[i];
    var spr = scr_get_shop_sprite(p);

    var w = sprite_get_width(spr);
    var h = sprite_get_height(spr);

    var hovered =
        mouse_x > cx - w*base_scale_potion/2 &&
        mouse_x < cx + w*base_scale_potion/2 &&
        mouse_y > cy - h*base_scale_potion/2 &&
        mouse_y < cy + h*base_scale_potion/2;

    var target = hovered ? base_scale_potion * hover_scale_mult : base_scale_potion;
    hover_scale_potion[i] = lerp(hover_scale_potion[i], target, 0.25);

    draw_sprite_ext(spr, 0, cx, cy, hover_scale_potion[i], hover_scale_potion[i], 0, c_white, 1);

    var bottom = cy + (h * hover_scale_potion[i]) * 0.5;
    draw_text(cx - 10, bottom + price_offset, string(potion_prices[i]) + "G");

    if (hovered) {
        draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(mouse_x+20, mouse_y-60, mouse_x+270, mouse_y+60, false);
        draw_set_color(c_white);
        draw_text(mouse_x+30, mouse_y-50, scr_get_shop_name(p));
        draw_text(mouse_x+30, mouse_y-20, scr_get_shop_description(p));
        draw_set_alpha(1);
    }
}

// DRAW RELICS
for (var i = 0; i < array_length(relics_for_sale); i++) {
    var cx = relics_start_x + i * shop_spacing_x;
    var cy = y_relics;

    var r = relics_for_sale[i];  // Use r for relics
    var spr = scr_get_shop_sprite(r);

    var w = sprite_get_width(spr);
    var h = sprite_get_height(spr);

    var hovered =
        mouse_x > cx - w*base_scale_relic/2 &&
        mouse_x < cx + w*base_scale_relic/2 &&
        mouse_y > cy - h*base_scale_relic/2 &&
        mouse_y < cy + h*base_scale_relic/2;

    var target = hovered ? base_scale_relic * hover_scale_mult : base_scale_relic;
    hover_scale_relic[i] = lerp(hover_scale_relic[i], target, 0.25);

    draw_sprite_ext(spr, 0, cx, cy, hover_scale_relic[i], hover_scale_relic[i], 0, c_white, 1);

    var bottom = cy + (h * hover_scale_relic[i]) * 0.5;
    draw_text(cx - 10, bottom + price_offset, string(relic_prices[i]) + "G");

    if (hovered) {
        draw_set_color(c_black);
        draw_set_alpha(0.8);
        draw_rectangle(mouse_x+20, mouse_y-60, mouse_x+270, mouse_y+60, false);
        draw_set_color(c_white);
        draw_text(mouse_x+30, mouse_y-50, scr_get_shop_name(r));
        draw_text(mouse_x+30, mouse_y-20, scr_get_shop_description(r));
        draw_set_alpha(1);
    }
}

// LEAVE BUTTON
draw_set_color(c_red);
draw_rectangle(leave_x, leave_y, leave_x+leave_w, leave_y+leave_h, false);
draw_set_color(c_white);
draw_text(leave_x+10, leave_y+10, "Leave Shop");
