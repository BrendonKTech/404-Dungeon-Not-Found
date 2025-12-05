// Update progress
global.current_node = global.next_node;
global.rooms_completed += 1;

// Go back to map
room_goto(rm_map);