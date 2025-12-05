/// Step Event

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Center of screen
var center_x = display_get_gui_width()/2;
var center_y = display_get_gui_height()/2;

// Popup base
var popup_width = 900;
var popup_height = 500;
var base_x = center_x - popup_width/2;
var base_y = center_y - popup_height/2;
var pad_left = 40;

// Sliders
var slider_width = 300;
var slider_x1 = base_x + pad_left + 200;
var slider_x2 = slider_x1 + slider_width;

// --- Master Slider ---
if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mx, my, slider_x1, base_y + 120, slider_x2, base_y + 160)) {
        slider_master = clamp((mx - slider_x1)/slider_width, 0, 1);
        global.master_volume = slider_master;
        audio_master_gain(global.master_volume);
    }
}

// --- Music Slider ---
if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mx, my, slider_x1, base_y + 200, slider_x2, base_y + 240)) {
        slider_music = clamp((mx - slider_x1)/slider_width, 0, 1);
        global.music_volume = slider_music;
        audio_group_set_gain(audiogroup_default, slider_music);
    }
}

// --- SFX Slider ---
if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mx, my, slider_x1, base_y + 280, slider_x2, base_y + 320)) {
        slider_sfx = clamp((mx - slider_x1)/slider_width, 0, 1);
        global.sfx_volume = slider_sfx;
        audio_group_set_gain(audiogroup_default, slider_sfx);
    }
}


// Fullscreen toggle button (matching rectangle)
var fs_x1 = base_x + pad_left;
var fs_y1 = base_y + 370; // moved from 350 → 370
var fs_x2 = fs_x1 + 200;
var fs_y2 = fs_y1 + 30;

if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, fs_x1, fs_y1, fs_x2, fs_y2)) {
        global.fullscreen = !global.fullscreen;
        window_set_fullscreen(global.fullscreen);
    }
}


// --- Back button ---
var back_x1 = base_x + pad_left;
var back_y1 = base_y + 420;
var back_x2 = back_x1 + 150;
var back_y2 = back_y1 + 30;

if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, back_x1, back_y1, back_x2, back_y2)) {
        instance_destroy();
    }
}
