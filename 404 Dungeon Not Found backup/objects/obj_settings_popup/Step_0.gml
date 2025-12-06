/// STEP EVENT --- FULL FIXED VERSION

// If the settings popup exists, block other UI
if (!instance_exists(obj_settings_popup)) exit;

// Convert to GUI coords
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Master vertical offset for everything
var offset_y = 30;

// -------------------------------
// SLIDER INPUT
// -------------------------------
if (mouse_check_button(mb_left))
{
    // Master Volume
    if (point_in_rectangle(mx, my, slider_x1, base_y + 120 + offset_y, slider_x2, base_y + 160 + offset_y))
    {
        slider_master = clamp((mx - slider_x1) / slider_width, 0, 1);
        global.master_volume = slider_master;
        audio_master_gain(global.master_volume);
    }

    // Music Volume
    if (point_in_rectangle(mx, my, slider_x1, base_y + 200 + offset_y, slider_x2, base_y + 240 + offset_y))
    {
        slider_music = clamp((mx - slider_x1) / slider_width, 0, 1);
        global.music_volume = slider_music;
        audio_group_set_gain(audiogroup_default, slider_music);
    }

    // SFX Volume
    if (point_in_rectangle(mx, my, slider_x1, base_y + 280 + offset_y, slider_x2, base_y + 320 + offset_y))
    {
        slider_sfx = clamp((mx - slider_x1) / slider_width, 0, 1);
        global.sfx_volume = slider_sfx;
        audio_group_set_gain(audiogroup_default, slider_sfx);
    }
}

// -------------------------------
// FULLSCREEN TOGGLE
// -------------------------------

// These MUST match your draw positions (update if needed)
var fs_x1_click = fs_x1;
var fs_y1_click = fs_y1 + offset_y;
var fs_x2_click = fs_x2;
var fs_y2_click = fs_y2 + offset_y;

if (mouse_check_button_pressed(mb_left) &&
    point_in_rectangle(mx, my, fs_x1_click, fs_y1_click, fs_x2_click, fs_y2_click))
{
    global.fullscreen = !global.fullscreen;
    window_set_fullscreen(global.fullscreen);

    // IMPORTANT: force GUI refresh so new fullscreen res doesn’t break UI
    display_reset(0, 0);
}


// -------------------------------
// BACK BUTTON
// -------------------------------
if (mouse_check_button_pressed(mb_left) &&
    point_in_rectangle(mx, my, back_x1, back_y1 + offset_y, back_x2, back_y2 + offset_y))
{
    instance_destroy(); // close popup
}


// -------------------------------
// QUIT BUTTON
// -------------------------------
if (mouse_check_button_pressed(mb_left) &&
    point_in_rectangle(mx, my, quit_x, quit_y + offset_y - 20,
                       quit_x + quit_width, quit_y + quit_height + offset_y - 10))
{
    instance_create_layer(display_get_gui_width()/2,
                          display_get_gui_height()/2,
                          "GUI",
                          obj_quit_confirm_popup);
}


// -------------------------------
// BLOCK ANY OTHER INPUT
// -------------------------------
exit;
