

// Select node with arrow keys or mouse (simplest: mouse)
/*if (mouse_check_button_pressed(mb_left)) {
    var mx = mouse_x;
    var my = mouse_y;

    // Check all next nodes for click
    for (var i = 0; i < array_length(current_node.next_nodes); i++) {
        var node = current_node.next_nodes[i];
        var dist = point_distance(mx, my, node.x_pos, node.y_pos);

        if (dist < 16) { // click threshold
            target_node = node;
        }
    }
}

// Move toward target node smoothly
if (target_node != noone) {
    var dx = target_node.x_pos - x;
    var dy = target_node.y_pos - y;
    var move_speed = 4;

    x += clamp(dx, -move_speed, move_speed);
    y += clamp(dy, -move_speed, move_speed);

    // Reached node?
    if (abs(dx) < 2 && abs(dy) < 2) {
        current_node = target_node;
        target_node = noone;
        current_node.visited = true;

        // Trigger node type
        switch (current_node.node_type) {
            case "battle":
                room_goto(rm_battle1); // normal enemy fight
                break;
            case "elite":
                room_goto(rm_battle_elite); // stronger enemy
                break;
            case "treasure":
                room_goto(rm_treasure);
                break;
            case "rest":
                room_goto(rm_campfire);
                break;
            case "shop":
                room_goto(rm_shop);
                break;
            case "unknown":
                room_goto(rm_unknown);
                break;
            case "boss":
                room_goto(rm_boss1);
                break;
        }
    }
}
