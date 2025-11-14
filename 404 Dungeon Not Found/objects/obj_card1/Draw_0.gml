draw_self();

if (point_in_rectangle(mouse_x, mouse_y, x-32, y-48, x+32, y+48)) {
	draw_set_color(c_yellow);
	draw_rectangle(x-32, y-48, x+32, y+48, false);
	draw_set_color(c_white);
}