if (node_state == 1) || (node_state == 3) || (node_state == 4) || (node_state == 5) || (node_state == 6) || (node_state == 7){
    // Player clicked this unlocked node
    node_state = 2; // mark as cleared

    // Unlock the next node
    var next_node = instance_find(obj_map_node, next_node_index);
    if (next_node != noone) {
        next_node.node_state = 1;
    }

    // Go to the battle room
    room_goto(room_to_go);

    // Update global variable for player position
    global.current_node_index = node_index;
}