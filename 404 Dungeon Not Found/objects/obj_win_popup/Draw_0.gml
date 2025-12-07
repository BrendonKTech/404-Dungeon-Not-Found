// Set font, color, and alignment
draw_set_font(Font1);           // Replace Font1 with your font
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width/2, 300, "You Win! Thanks For Playing!");
draw_text(room_width/2, 400, "Turns Taken: " + string(global.turn_count));