/// Create Event

// Slider values
slider_master = global.master_volume;
slider_music  = global.music_volume;
slider_sfx    = global.sfx_volume;

// Popup size and position
popup_width  = 900;
popup_height = 500;
center_x = display_get_gui_width() / 2;
center_y = display_get_gui_height() / 2;
base_x = center_x - popup_width / 2;
base_y = center_y - popup_height / 2;
pad_left = 40;

// Sliders coordinates
slider_width = 300;
slider_x1 = base_x + pad_left + 200;
slider_x2 = slider_x1 + slider_width;

// Fullscreen button
fs_x1 = base_x + pad_left;
fs_y1 = base_y + 370;
fs_x2 = fs_x1 + 200;
fs_y2 = fs_y1 + 30;

// Back button
back_x1 = base_x + pad_left;
back_y1 = base_y + 420;
back_x2 = back_x1 + 150;
back_y2 = back_y1 + 30;
