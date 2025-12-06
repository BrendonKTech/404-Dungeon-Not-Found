/// Draw GUI Event - obj_quit_confirm_popup

// Draw semi-transparent overlay behind everything
draw_set_alpha(0.6); // 60% transparent
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1); // reset alpha

// Draw main confirmation box
draw_set_color(c_black);
draw_rectangle(box_x1, box_y1, box_x2, box_y2, false);

// Outline of the box
draw_set_color(c_white);
draw_rectangle(box_x1, box_y1, box_x2, box_y2, true);

// Draw the confirmation text
draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(center_x, box_y1 + 60, confirm_text);

// Draw Yes and No text buttons (no background rectangles)
draw_text((yes_x1 + yes_x2)/2, (yes_y1 + yes_y2)/2, "Yes");
draw_text((no_x1 + no_x2)/2, (no_y1 + no_y2)/2, "No");
