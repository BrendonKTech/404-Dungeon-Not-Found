// Update sprite based on state
switch(node_state) {
    case 0: sprite_index = sprite_locked; break;
    case 1: sprite_index = sprite_unlocked; break;
    case 2: sprite_index = sprite_cleared; break;
}