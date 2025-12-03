/* Commenting out until I can fix it */

/// scr_map_fix_disconnected.gml
function scr_map_fix_disconnected() {
    for (var f = 0; f < array_length(global.map) - 1; f++) {
        var nodes = global.map[f];
        var next_nodes = global.map[f+1];
        for (var n = 0; n < array_length(nodes); n++) {
            if (array_length(nodes[n].connections) == 0) {
                array_push(nodes[n].connections, irandom(array_length(next_nodes)-1));
            }
        }
    }
}
