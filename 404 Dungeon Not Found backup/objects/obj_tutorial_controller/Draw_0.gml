
// Draw filled background for dialogue box
draw_set_color(c_black);
draw_rectangle(20, 50, room_width - 20, 150, true); // 'true' fills the rectangle

// Draw text inside the rectangle
draw_set_color(c_white);
draw_text(room_width / 2, 150, display_text); // y = 80 to be inside the box


// --------- DEBUG: Draw tutorial step counter ---------
//draw_set_color(c_red);
//draw_text(room_width / 2, room_height / 2, "Tutorial Step: " + string(tutorial_step));


