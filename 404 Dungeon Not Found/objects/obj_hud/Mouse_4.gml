var mx = device_mouse_x(0);
var my = device_mouse_y(0);

// GUI positions
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

/// == RIGHT SIDE ICON POSITIONS ==
var icon_y = 30;   // <-- renamed from 'y'

/// Rightmost icon (gear)
var gear_x1 = gui_w - 70;
var gear_x2 = gear_x1 + sprite_get_width(spr_gear);

/// Cards (deck)
var cards_x1 = gear_x1 - 90;
var cards_x2 = cards_x1 + sprite_get_width(spr_cards);

/// Map
var map_x1 = cards_x1 - 90;
var map_x2 = map_x1 + sprite_get_width(spr_map_icon);


/// --- SETTINGS ---
if (mx > gear_x1 && mx < gear_x2 && my > icon_y && my < icon_y + 80) {
    show_settings_overlay = true;
}

/// --- DECK ---
if (mx > cards_x1 && mx < cards_x2 && my > icon_y && my < icon_y + 80) {
    show_deck_overlay = true;
}

/// --- MAP ---
if (mx > map_x1 && mx < map_x2 && my > icon_y && my < icon_y + 80) {
    show_map_overlay = true;
}


if (show_map_overlay) {
    show_map_overlay = false;
    exit;
}
