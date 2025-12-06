// Node states: 0 = locked, 1 = unlocked, 2 = cleared
node_state = 0;

// Index of this node in the linear map
node_index = 0;

// Room to go to when this node is clicked
room_to_go = rm_battle1; // default, can change per node

// Reference to the next node in sequence (optional)
next_node_index = node_index + 1;

// Sprites for different states
sprite_locked = spr_node_locked;
sprite_unlocked = spr_node_unlocked;
sprite_cleared = spr_node_cleared;

// Initially set sprite based on state
sprite_index = sprite_locked;