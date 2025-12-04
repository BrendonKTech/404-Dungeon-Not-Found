// Draw dialogue box
draw_set_color(c_black);
draw_rectangle(20, room_height - 100, room_width - 20, room_height - 20, false);
draw_set_color(c_white);
draw_text(40, room_height - 80, display_text);

// Draw Next button if waiting for input
if (waiting_for_input) {
    draw_set_color(c_gray);
    draw_rectangle(btn_x, btn_y, btn_x+btn_w, btn_y+btn_h, false);
    draw_set_color(c_white);
    draw_text(btn_x+20, btn_y+10, "Next");
}
