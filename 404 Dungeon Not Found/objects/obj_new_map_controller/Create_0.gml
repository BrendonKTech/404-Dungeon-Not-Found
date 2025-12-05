/// obj_new_map_controller – Create
map_nodes = []; // array to store all map node instances
current_node = -1; // will be set to starting node
map_initialized = false;
current_layer = 0; // starting layer

// Collect all map nodes in the room
var num_nodes = instance_number(obj_map_node);
for (var i = 0; i < num_nodes; i++) {
    var n = instance_find(obj_map_node, i);
    array_push(map_nodes, n);

    // Assign starting node (layer 0) as the current node
    if (n.layer_index == 0) {
        current_node = n.node_index;
        n.visible = true;
        n.unlocked = true;
    } else {
        n.visible = false;
        n.unlocked = false;
    }
}
