/// CREATE EVENT — obj_map_controller
/// Initializes the linear 12-node map system

// --- Ensure global variable exists ---
if (!variable_global_exists("map_nodes")) {
    global.map_nodes = [];
}

// --- Find all map nodes in the room manually ---
var node_count = instance_number(obj_map_node);

for (var i = 0; i < node_count; i++) {
    var n = instance_find(obj_map_node, i);
    
    // Initialize node_state if missing
    if (!variable_instance_exists(n, "node_state")) {
        n.node_state = (i == 0) ? 1 : 0;  // First node unlocked, rest locked
    }
    
    // Assign next node id
    n.next_id = i + 1;
    if (n.next_id >= node_count) {
        n.next_id = -1; // Last node has no next node
    }
    
    // Add node to global map_nodes array
    array_push(global.map_nodes, n);
}

