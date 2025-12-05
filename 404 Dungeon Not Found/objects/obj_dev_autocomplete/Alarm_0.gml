// Update the player’s current node
obj_new_map_controller.current_node = global.current_node;

// Unlock the next layer
unlock_next_layer(obj_new_map_controller.map_nodes);

// Return to the map
room_goto(rm_map);