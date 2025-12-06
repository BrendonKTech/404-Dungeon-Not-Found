for (var i = 0; i < array_length(nodes); i++) {
    var n = nodes[i];

    // clickable = child of any visited node
    var clickable = false;
    for (var j = 0; j < array_length(nodes); j++) {
        if (nodes[j].visited && array_contains(nodes[j].next_nodes, i)) {
            clickable = true;
            break;
        }
    }

    if (clickable && point_distance(mouse_x, mouse_y, n.x, n.y) < 40) {
        global.map_nodes[i].visited = true; // persist globally
        room_goto(n.room);
    }
}
