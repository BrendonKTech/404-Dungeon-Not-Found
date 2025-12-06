draw_set_font(fnt_menu);
draw_set_color(c_white);

// ---- Background & Outline ----
draw_set_color(c_black);
draw_rectangle(base_x, base_y, base_x + popup_width, base_y + popup_height, false);

draw_set_color(c_white);
draw_rectangle(base_x, base_y, base_x + popup_width, base_y + popup_height, true);

// ---- Labels ----
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(base_x + pad_left, base_y + 40, "Settings");
draw_text(base_x + pad_left, base_y + 120, "Master Volume");
draw_text(base_x + pad_left, base_y + 200, "Music Volume");
draw_text(base_x + pad_left, base_y + 280, "SFX Volume");

// ---- Sliders ----
slider_width = 300;
slider_x1 = base_x + pad_left + 200;
slider_x2 = slider_x1 + slider_width;

// Master
draw_set_color(c_dkgray);
draw_rectangle(slider_x1, base_y + 120, slider_x2, base_y + 160, false);
draw_healthbar(slider_x1, base_y + 120, slider_x2, base_y + 160, slider_master*100, c_green, c_red, c_white, c_black, 0, true);

// Music
draw_rectangle(slider_x1, base_y + 200, slider_x2, base_y + 240, false);
draw_healthbar(slider_x1, base_y + 200, slider_x2, base_y + 240, slider_music*100, c_green, c_red, c_white, c_black, 0, true);

// SFX
draw_rectangle(slider_x1, base_y + 280, slider_x2, base_y + 320, false);
draw_healthbar(slider_x1, base_y + 280, slider_x2, base_y + 320, slider_sfx*100, c_green, c_red, c_white, c_black, 0, true);

// ---- Buttons ----
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Fullscreen button
fs_x1 = base_x + pad_left;
fs_y1 = base_y + 370;
fs_x2 = fs_x1 + 200;
fs_y2 = fs_y1 + 30;
draw_text((fs_x1 + fs_x2)/2, (fs_y1 + fs_y2)/2, global.fullscreen ? "Fullscreen: ON" : "Fullscreen: OFF");

// Back button
back_x1 = base_x + pad_left;
back_y1 = base_y + 420;
back_x2 = back_x1 + 150;
back_y2 = back_y1 + 30;
draw_text((back_x1 + back_x2)/2, (back_y1 + back_y2)/2, "Back");
// Quit button
draw_text((quit_x1 + quit_x2)/2, (quit_y1 + quit_y2)/2, "Quit Game");
