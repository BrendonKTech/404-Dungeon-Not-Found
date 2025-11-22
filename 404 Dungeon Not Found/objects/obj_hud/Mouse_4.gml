var mx = device_mouse_x(0);
var my = device_mouse_y(0);

// SETTINGS
if (point_in_rectangle(mx, my, 1880, 30, 1900, 104)) {
    room_goto(rm_settings);
}

// MAP
if (point_in_rectangle(mx, my, 120, 40, 184, 104)) {
    show_map_overlay = true;
}

// DECK
if (point_in_rectangle(mx, my, 200, 40, 264, 104)) {
    show_deck_overlay = true;
}

// POTION
if (point_in_rectangle(mx, my, 280, 40, 344, 104)) {
    use_potion();
}
