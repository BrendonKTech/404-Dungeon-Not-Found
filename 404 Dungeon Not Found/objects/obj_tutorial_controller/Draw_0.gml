
// Draw filled background for dialogue box
draw_set_color(c_black);
draw_rectangle(20, 50, room_width - 20, 150, true); // 'true' fills the rectangle

// Draw text inside the rectangle
draw_set_color(c_white);
draw_text(room_width / 2, 150, display_text); // y = 80 to be inside the box

// Draw Next button
//if (waiting_for_input)
//{
//    draw_set_color(c_gray);
//    draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, false);
//
 //   draw_set_color(c_white);
 //   draw_text(btn_x + 20, btn_y + 10, "Next");
//}

// --------- DEBUG: Draw tutorial step counter ---------
draw_set_color(c_red);
draw_text(room_width / 2, room_height / 2, "Tutorial Step: " + string(tutorial_step));


