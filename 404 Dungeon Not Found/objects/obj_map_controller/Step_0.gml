/*// start drag
if (mouse_check_button_pressed(mb_left)) {
    dragging = true;
    drag_x = mouse_x + view_x;
    drag_y = mouse_y + view_y;
}

// stop drag
if (mouse_check_button_released(mb_left)) {
    dragging = false;
}

// dragging logic
if (dragging) {
    view_x = drag_x - mouse_x;
    view_y = drag_y - mouse_y;
}

// clamp (optional)
//view_y = clamp(view_y, -200, 2000);

var mx = mouse_x + view_x;
var my = mouse_y + view_y;

if (mouse_check_button_pressed(mb_left)) {

    for (var f = 0; f < array_length(global.map); f++) {
        var nodes = global.map[f];

        for (var n = 0; n < array_length(nodes); n++) {
            var node = nodes[n];

            if (point_distance(mx, my, node.x, node.y) < 24) {

                // If no node selected yet, choose it
                if (current_node == undefined) {
                    current_node = {floor: f, index: n};
                    next_nodes = node.connections;
                }
                else {
                    // only allow selecting next nodes
                    if (f == current_node.floor + 1) {
                        if (array_index_of(next_nodes, n) != -1) {
                            current_node = {floor: f, index: n};
                            next_nodes = node.connections;
                        }
                    }
                }
            }
        }
    }
}

anim_t += 0.03;
