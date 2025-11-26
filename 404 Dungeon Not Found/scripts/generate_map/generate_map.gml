// This is broke af

/*function generate_map(_floors) {

    global.map = [];      // 2D array: floors → node list
    var floor_width = 200;  // horizontal spacing
    var height_step = 80; // vertical spacing

    // Generate nodes per floor
    for (var f = 0; f < _floors; f++) {

        var count = irandom_range(2, 6); 

        // Last floor is always 1 boss node
        if (f == _floors - 1) count = 1;

        var nodes = [];

        for (var i = 0; i < count; i++) {
            var xx = f * floor_width;
            var yy = i * height_step + irandom_range(-10, 10);
			
			// This line is causing issues
            var type = choose("enemy", "elite", "shop", "rest", "treasure", "unknown");

            if (f == _floors - 1) type = "boss";

            var node = new MapNode(xx, yy, type);
			array_push(nodes, node);

        }

        global.map[f] = nodes;
    }

    // Connect nodes
    for (var f = 0; f < _floors - 1; f++) {

        var current = global.map[f];
        var next = global.map[f + 1];

        for (var i = 0; i < array_length(current); i++) {

            // Each node connects to 1–3 nodes in next floor
            var connections = irandom_range(1, min(3, array_length(next)));

            for (var c = 0; c < connections; c++) {
                var target_index = irandom_range(0, array_length(next) - 1);

                array_push(current[i].connections, target_index);
            }
        }
    }

    // Guarantee no node is stranded
    script_execute(scr_map_fix_disconnected);

    return global.map;
}
