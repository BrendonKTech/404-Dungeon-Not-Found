// DRAW EVENT
draw_sprite(drawpile_sprite, 0, draw_pile_x, draw_pile_y);
draw_sprite(discardpile_sprite, 0, discard_pile_x, discard_pile_y);

// Optional: draw card counts
draw_text(draw_pile_x - 10, draw_pile_y + 50, string(ds_list_size(draw_pile)));
draw_text(discard_pile_x - 10, discard_pile_y + 50, string(ds_list_size(discard_pile)));
