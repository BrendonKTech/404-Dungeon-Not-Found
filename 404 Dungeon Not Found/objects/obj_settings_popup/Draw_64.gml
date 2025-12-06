draw_set_font(fnt_menu);

// ---- Semi-transparent background ----
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

// ---- White outline popup ----
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
draw_set_color(c_dkgray);
// Master
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

// Fullscreen
draw_text((fs_x1 + fs_x2)/2, (fs_y1 + fs_y2)/2, global.fullscreen ? "Fullscreen: ON" : "Fullscreen: OFF");

// Back
draw_text((back_x1 + back_x2)/2, (back_y1 + back_y2)/2, "Back");

// Quit Game
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(quit_x, quit_y, quit_text);
