/// obj_new_map_controller – Step
if (!map_initialized) {
    // Place player icon on current node
    for (var i = 0; i < array_length(map_nodes); i++) {
        var n = map_nodes[i];
        if (instance_exists(n) && n.node_index == current_node) {
            if (instance_exists(obj_map_player)) {
                obj_map_player.x = n.x;
                obj_map_player.y = n.y;
            }
            break;
        }
    }
    map_initialized = true;
}