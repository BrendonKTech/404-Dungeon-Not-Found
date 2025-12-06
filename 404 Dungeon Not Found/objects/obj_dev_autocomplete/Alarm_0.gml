// Get the current node index (where the player came from)
var current_index = global.current_node_index;

// Find the node instance for this index
var current_node = noone;
with (obj_map_node) {
    if (node_index == current_index) {
        current_node = id;
    }
}

// Mark the current node as cleared
if (current_node != noone) {
    current_node.node_state = 2; // cleared
}

// Unlock the next node in the sequence
var next_node = noone;
with (obj_map_node) {
    if (node_index == current_index + 1) {
        next_node = id;
    }
}
if (next_node != noone) {
    next_node.node_state = 1; // unlocked
    global.current_node_index = next_node.node_index; // move player icon
}

// Return to the map
room_goto(rm_map);