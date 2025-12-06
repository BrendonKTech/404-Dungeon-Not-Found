// Draw node sprite
/*draw_sprite(sprite_index, 0, x_pos, y_pos);

// Draw lines to connected nodes
for (var i = 0; i < array_length(next_nodes); i++) {
    var next_node = next_nodes[i];
    draw_line(x_pos, y_pos, next_node.x_pos, next_node.y_pos);
}

// Optional: overlay to show visited node
if (visited) {
    draw_set_color(c_yellow);
    draw_circle(x_pos, y_pos, 8, false);
    draw_set_color(c_white);
}
