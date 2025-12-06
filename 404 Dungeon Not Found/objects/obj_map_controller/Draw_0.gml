// Draw lines between unlocked/cleared nodes
draw_set_color(c_white);
draw_set_alpha(1);

for (var i = 0; i < array_length(map_nodes) - 1; i++) {
    var n1 = map_nodes[i];
    var n2 = map_nodes[i+1];

    if (n1.node_state > 0 && n2.node_state > 0) {
        draw_line(n1.x, n1.y, n2.x, n2.y);
    }
}

// Draw player icon at current node
var current_node = map_nodes[global.current_node_index];
draw_circle(current_node.x, current_node.y, 16, false);