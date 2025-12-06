/// Create Event - obj_quit_confirm_popup

// Box size and position (slightly bigger)
box_width  = 550;  // was 500
box_height = 270;  // was 250
center_x = display_get_gui_width() / 2;
center_y = display_get_gui_height() / 2;
box_x1 = center_x - box_width / 2;
box_y1 = center_y - box_height / 2;
box_x2 = box_x1 + box_width;
box_y2 = box_y1 + box_height;

// Yes button
yes_width  = 120;
yes_height = 40;
yes_x1 = box_x1 + 60;
yes_y1 = box_y2 - yes_height - 30; // 30px padding from bottom
yes_x2 = yes_x1 + yes_width;
yes_y2 = yes_y1 + yes_height;

// No button
no_width  = 120;
no_height = 40;
no_x1 = box_x2 - no_width - 60;
no_y1 = box_y2 - no_height - 30; // 30px padding from bottom
no_x2 = no_x1 + no_width;
no_y2 = no_y1 + no_height;

// Confirmation text
confirm_text = "Are you sure you want to quit?";
