// DRAW EVENT
// Initialize the draw pile and discard pile coordinates
draw_pile_x = room_width - 100;
draw_pile_y = room_height - 200;
discard_pile_x = 50;
discard_pile_y = room_height - 200;


// Optional: draw card counts
draw_text(draw_pile_x - 10, draw_pile_y + 50, string(ds_list_size(draw_pile)));
draw_text(discard_pile_x - 10, discard_pile_y + 50, string(ds_list_size(discard_pile)));
