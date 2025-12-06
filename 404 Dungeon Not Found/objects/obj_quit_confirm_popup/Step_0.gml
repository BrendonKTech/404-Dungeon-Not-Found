var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// --- Yes button ---
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mx, my, yes_x1, yes_y1, yes_x2, yes_y2)) {
    game_end();
}

// --- No button ---
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mx, my, no_x1, no_y1, no_x2, no_y2)) {
    instance_destroy();
}
