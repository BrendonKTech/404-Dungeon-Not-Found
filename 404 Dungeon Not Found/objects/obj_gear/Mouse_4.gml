// obj_gear — Left Pressed
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, x, y, x + sprite_width, y + sprite_height)) {
        instance_create_layer(0, 0, "Popup", obj_settings_popup);
    }
}
