// Prevent clicks from affecting other objects behind this popup
if (instance_exists(obj_settings_popup)) {
   

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// --- Sliders ---
if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mx, my, slider_x1, base_y + 120, slider_x2, base_y + 160)) {
        slider_master = clamp((mx - slider_x1)/slider_width, 0, 1);
        global.master_volume = slider_master;
        audio_master_gain(global.master_volume);
    }
    if (point_in_rectangle(mx, my, slider_x1, base_y + 200, slider_x2, base_y + 240)) {
        slider_music = clamp((mx - slider_x1)/slider_width, 0, 1);
        global.music_volume = slider_music;
        audio_group_set_gain(audiogroup_default, slider_music);
    }
    if (point_in_rectangle(mx, my, slider_x1, base_y + 280, slider_x2, base_y + 320)) {
        slider_sfx = clamp((mx - slider_x1)/slider_width, 0, 1);
        global.sfx_volume = slider_sfx;
        audio_group_set_gain(audiogroup_default, slider_sfx);
    }
}

// --- Fullscreen ---
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mx, my, fs_x1, fs_y1, fs_x2, fs_y2)) {
    global.fullscreen = !global.fullscreen;
    window_set_fullscreen(global.fullscreen);
}

// --- Back ---
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mx, my, back_x1, back_y1, back_x2, back_y2)) {
    instance_destroy();
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// --- Quit Game ---
if (mouse_check_button_pressed(mb_left) &&
    point_in_rectangle(mx, my, quit_x, quit_y, quit_x + quit_width, quit_y + quit_height)) {
    // Create the quit confirmation popup
    instance_create_layer(display_get_gui_width()/2, display_get_gui_height()/2, "GUI", obj_quit_confirm_popup);
}
 // do nothing in HUD or other GUI input events
    exit; // stops further input processing in the step event below
}
