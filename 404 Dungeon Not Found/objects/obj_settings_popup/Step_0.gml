/// Step Event
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

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

// --- Fullscreen toggle ---
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, fs_x1, fs_y1, fs_x2, fs_y2)) {
        global.fullscreen = !global.fullscreen;
        window_set_fullscreen(global.fullscreen);
    }
}

// --- Back button ---
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, back_x1, back_y1, back_x2, back_y2)) {
        instance_destroy();
    }
}
