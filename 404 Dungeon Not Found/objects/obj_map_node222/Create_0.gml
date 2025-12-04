// Node type options: "battle", "elite", "treasure", "rest", "unknown", "shop", "boss"
/*node_type = "battle";

// Array of nodes this node connects to
next_nodes = [];

// Player has visited this node?
visited = false;

// Position for drawing (optional, could use x/y from room)
x_pos = x;
y_pos = y;

// Assign sprite based on node type
switch(node_type) {
    case "battle": sprite_index = spr_enemy; break;
    case "elite": sprite_index = spr_elite; break;
    case "treasure": sprite_index = spr_treasure; break;
    case "rest": sprite_index = spr_campfire; break;
    case "unknown": sprite_index = spr_unknown; break;
    case "shop": sprite_index = spr_shop; break;
    case "boss": sprite_index = spr_boss; break;
}
