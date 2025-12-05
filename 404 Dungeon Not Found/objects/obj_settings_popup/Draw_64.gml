/// Draw GUI Event
draw_set_font(fnt_menu);

// Center of the screen
var center_x = display_get_gui_width()/2;
var center_y = display_get_gui_height()/2;

// Popup size
var popup_width  = 900;
var popup_height = 500;

// Base coordinates
var base_x = center_x - popup_width/2;
var base_y = center_y - popup_height/2;

// Padding inside popup
var pad_left = 40;
var pad_top  = 40;

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
var slider_width = 300;
var slider_x1 = base_x + pad_left + 200;
var slider_x2 = slider_x1 + slider_width;

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
// Fullscreen toggle rectangle
var fs_x1 = base_x + pad_left;
var fs_y1 = base_y + 370; // moved from 350 → 370
var fs_x2 = fs_x1 + 200;
var fs_y2 = fs_y1 + 30;

// Draw text centered in rectangle
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((fs_x1 + fs_x2)/2, (fs_y1 + fs_y2)/2, global.fullscreen ? "Fullscreen: ON" : "Fullscreen: OFF");


// Back button
var back_x1 = base_x + pad_left;
var back_y1 = base_y + 420;
var back_x2 = back_x1 + 150;
var back_y2 = back_y1 + 30;

// Draw text centered in rectangles
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text((fs_x1 + fs_x2)/2, (fs_y1 + fs_y2)/2, global.fullscreen ? "Fullscreen: ON" : "Fullscreen: OFF");
draw_text((back_x1 + back_x2)/2, (back_y1 + back_y2)/2, "Back");
