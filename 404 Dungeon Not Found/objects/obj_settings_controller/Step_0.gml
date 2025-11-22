var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


// MASTER SLIDER
if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mx, my, 250, 120, 550, 160)) {
        slider_master = clamp((mx - 250) / 300, 0, 1);
        global.master_volume = slider_master;
        audio_master_gain(global.master_volume);
    }
}

// MUSIC SLIDER
if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mx, my, 250, 200, 550, 240)) {
        slider_music = clamp((mx - 250) / 300, 0, 1);
        global.music_volume = slider_music;
        audio_group_set_gain(audiogroup_default, slider_music);
    }
}

// SFX SLIDER
if (mouse_check_button(mb_left)) {
    if (point_in_rectangle(mx, my, 250, 280, 550, 320)) {
        slider_sfx = clamp((mx - 250) / 300, 0, 1);
        global.sfx_volume = slider_sfx;
        audio_group_set_gain(audiogroup_default, slider_sfx);
    }
}

if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, 50, 360, 350, 390)) {
        global.fullscreen = !global.fullscreen;
        window_set_fullscreen(global.fullscreen);
    }
}


if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mx, my, 50, 450, 200, 500)) {
        room_goto(rm_main_menu);
    }
}
