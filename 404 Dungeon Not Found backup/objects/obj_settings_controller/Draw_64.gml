draw_set_font(fnt_menu);
draw_set_color(c_white);

// Title
draw_text(50, 40, "Settings");

// Labels
draw_text(50, 120, "Master Volume");
draw_text(50, 200, "Music Volume");
draw_text(50, 280, "SFX Volume");

// Sliders
draw_set_color(c_dkgray);
draw_rectangle(250, 120, 550, 160, false);
draw_healthbar(250, 120, 550, 160, slider_master * 100, c_green, c_red, c_white, c_black, 0, true);

draw_set_color(c_dkgray);
draw_rectangle(250, 200, 550, 240, false);
draw_healthbar(250, 200, 550, 240, slider_music * 100, c_green, c_red, c_white, c_black, 0, true);

draw_set_color(c_dkgray);
draw_rectangle(250, 280, 550, 320, false);
draw_healthbar(250, 280, 550, 320, slider_sfx * 100, c_green, c_red, c_white, c_black, 0, true);

// Fullscreen toggle
var fs_text = global.fullscreen ? "Fullscreen: ON" : "Fullscreen: OFF";
draw_text(50, 360, fs_text);

// Back button
draw_text(50, 450, "Back");