// Update sprite based on state
switch(node_state) {
    case 0: sprite_index = spr_node_locked; break;
    case 1: sprite_index = spr_node_unlocked; break;
    case 2: sprite_index = spr_node_cleared; break;
}