if (!instance_exists(obj_tutorial_controller)) { // normal gameplay
    global.current_node = global.next_node;

    // Unlock next map nodes
    var nodes = instance_find(obj_map_node, 0);
    repeat (instance_number(obj_map_node)) {
        var n = instance_find(obj_map_node, 0);
        if (n.node_index == global.current_node + 1) n.unlocked = true;
    }
room_goto(rm_map)
}