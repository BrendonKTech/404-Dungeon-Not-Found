with (obj_player) {
    hp = hp + (hp * 0.30); // Increase HP by 30%
}
global.unlock_index++

// Return to the map
room_goto(rm_map);