/// obj_map_controller Create Event

// --- Create nodes ---
// Bottom row: starting battle nodes
/*var start_node = instance_create_layer(200, 400, "Instances", obj_map_node);
start_node.node_type = "battle";

var battle_node2 = instance_create_layer(400, 400, "Instances", obj_map_node);
battle_node2.node_type = "battle";

// Middle row: rest, elite, treasure, unknown, shop
var rest_node = instance_create_layer(150, 300, "Instances", obj_map_node);
rest_node.node_type = "rest";

var elite_node = instance_create_layer(300, 300, "Instances", obj_map_node);
elite_node.node_type = "elite";

var treasure_node = instance_create_layer(450, 300, "Instances", obj_map_node);
treasure_node.node_type = "treasure";

var unknown_node = instance_create_layer(600, 300, "Instances", obj_map_node);
unknown_node.node_type = "unknown";

var shop_node = instance_create_layer(750, 300, "Instances", obj_map_node);
shop_node.node_type = "shop";

// Top row: boss
var boss_node = instance_create_layer(400, 150, "Instances", obj_map_node);
boss_node.node_type = "boss";

// --- Connect nodes ---
// Bottom nodes to middle row
array_push(start_node.next_nodes, rest_node);
array_push(start_node.next_nodes, elite_node);

array_push(battle_node2.next_nodes, treasure_node);
array_push(battle_node2.next_nodes, unknown_node);

// Middle row to boss
array_push(rest_node.next_nodes, boss_node);
array_push(elite_node.next_nodes, boss_node);
array_push(treasure_node.next_nodes, boss_node);
array_push(unknown_node.next_nodes, boss_node);
array_push(shop_node.next_nodes, boss_node);

// --- Create player ---
var map_player = instance_create_layer(start_node.x_pos, start_node.y_pos, "Instances", obj_map_player);
map_player.current_node = start_node;
map_player.target_node = noone;
