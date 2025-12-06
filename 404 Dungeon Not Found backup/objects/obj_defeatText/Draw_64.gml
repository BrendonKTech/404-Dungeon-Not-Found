draw_set_color(c_yellow);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Font2);

// Use these functions instead of gui_width/gui_height
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 - 50, "Defeat...");