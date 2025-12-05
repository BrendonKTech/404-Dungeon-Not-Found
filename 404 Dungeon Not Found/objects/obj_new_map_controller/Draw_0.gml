/// obj_new_map_controller – Draw
draw_set_color(c_gray);

// Draw nodes that are visible
for (var i = 0; i < array_length(map_nodes); i++) {
    var n = map_nodes[i];
    if (!instance_exists(n)) continue;
    if (!n.visible) continue;
    draw_circle(n.x, n.y, 20, false);
}

// Draw player icon
if (instance_exists(obj_map_player)) {
    draw_set_color(c_red);
    draw_circle(obj_map_player.x, obj_map_player.y, 24, false);
}