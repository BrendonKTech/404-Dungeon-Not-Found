// Draw background
draw_sprite(spr_background2, 0, 0, 0);

// Draw paths
for (var i = 0; i < array_length(nodes); i++) {
    var n = nodes[i];
    for (var j = 0; j < array_length(n.next_nodes); j++) {
        var next = nodes[n.next_nodes[j]];
        draw_set_color(c_black);
        draw_line(n.x, n.y, next.x, next.y);
    }
}

// Draw nodes
for (var i = 0; i < array_length(nodes); i++) {
    var n = nodes[i];

    // Highlight clickable nodes (next_nodes of visited nodes)
    var clickable = false;
    for (var j = 0; j < array_length(nodes); j++) {
        if (nodes[j].visited && array_contains(nodes[j].next_nodes, i)) {
            clickable = true;
            break;
        }
    }

    if (clickable) {
        draw_set_color(c_yellow);
        draw_circle(n.x, n.y, 40, false);
    }

    // Draw the node sprite
    draw_sprite(n.sprite, 0, n.x, n.y);
}







/*/// APPLY CAMERA OFFSET
matrix_set(matrix_world, matrix_build(-view_x, -view_y, 0, 0, 0, 0, 1, 1, 1));

var mx = mouse_x + view_x;
var my = mouse_y + view_y;

for (var f = 0; f < array_length(global.map); f++) {

    var nodes = global.map[f];

    for (var i = 0; i < array_length(nodes); i++) {
        var node = nodes[i];

        // --------------------------------------------------------
        // 1. DRAW CONNECTIONS (animated lines)
        // --------------------------------------------------------
        if (f < array_length(global.map) - 1) {
            var next_nodes = global.map[f + 1];

            for (var c = 0; c < array_length(node.connections); c++) {

                var target = next_nodes[node.connections[c]];

                // animated line
                var t = (sin(anim_t) * 0.5 + 0.5);
                var lx = lerp(node.x, target.x, t);
                var ly = lerp(node.y, target.y, t);

                draw_line_width(node.x, node.y, lx, ly, 2);
            }
        }

        // --------------------------------------------------------
        // 2. DRAW ROOM SPRITE
        // --------------------------------------------------------
        draw_sprite(global.spr_room[node.type], 0, node.x, node.y);

        // --------------------------------------------------------
        // 3. DRAW HOVER HIGHLIGHT
        // --------------------------------------------------------
        var hovered = (point_distance(mx, my, node.x, node.y) < 24);

        if (hovered) {
            draw_set_color(c_white);
            draw_circle(node.x, node.y, 28, false);
            draw_set_color(c_white);
        }
    }
}

/// RESET MATRIX
matrix_set(matrix_world, matrix_build(0, 0, 0, 0, 0, 0, 1, 1, 1));
