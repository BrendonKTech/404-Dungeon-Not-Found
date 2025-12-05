// Initialize global progress if not already
if (!variable_global_exists("current_node")) global.current_node = 0;
if (!variable_global_exists("rooms_completed")) global.rooms_completed = 0;

// Find starting node
for (var i = 0; i < instance_number(obj_map_node); i++) {
    var n = instance_find(obj_map_node, i);
    if (n.layer_index == 0) { 
        x = n.x;
        y = n.y;
        global.current_node = n.node_index;
        break;
    }
}