// Get all nodes in the room
map_nodes = array_create(12); // linear array of 12 nodes
for (var i = 0; i < 12; i++) {
    var n = instance_find(obj_map_node, i);
    if (n != noone) {
        map_nodes[i] = n;
        n.node_index = i;
    }
}

// Set initial node unlocked
if (array_length(map_nodes) > 0) {
    map_nodes[0].node_state = 1; // first node is unlocked
}

// Track current node globally
global.current_node_index = 0;