if (unlocked) {
    // Move player to this node
    obj_new_map_controller.current_node = node_index;
    if (instance_exists(obj_map_player)) {
        obj_map_player.x = x;
        obj_map_player.y = y;
    }

    // Go to the appropriate room
    if (is_boss_node) {
        room_goto(rm_boss_battle);
    } else {
        room_goto(room_to_go);
    }
}
