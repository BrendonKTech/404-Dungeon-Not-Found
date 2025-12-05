function unlock_next_layer(_map_nodes) {
    var next_layer = obj_new_map_controller.current_layer + 1;

    if (next_layer > 13) return; // boss layer already unlocked separately

    // Boss layer
    if (next_layer == 13) {
        for (var i = 0; i < array_length(_map_nodes); i++) {
            var n = _map_nodes[i];
            if (instance_exists(n) && n.layer_index == 13) {
                n.visible = true;
                n.unlocked = true;
            }
        }
        return;
    }

    // Randomly unlock 2–3 nodes in the next layer
    var candidates = [];
    for (var i = 0; i < array_length(_map_nodes); i++) {
        var n = _map_nodes[i];
        if (instance_exists(n) && n.layer_index == next_layer && !n.unlocked) {
            array_push(candidates, n);
        }
    }

    var to_unlock = min(irandom_range(2,3), array_length(candidates));
    for (var j = 0; j < to_unlock; j++) {
        var index = irandom(array_length(candidates)-1);
        var n = candidates[index];
        n.visible = true;
        n.unlocked = true;
        array_delete(candidates, index, 1);
    }

    // Increment current layer after unlocking
    obj_new_map_controller.current_layer = next_layer;
}



