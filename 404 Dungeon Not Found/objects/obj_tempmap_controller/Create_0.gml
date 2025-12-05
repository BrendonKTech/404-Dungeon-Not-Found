if (!variable_global_exists("map_nodes")) {
    // Initialize only once
    map_nodes = [];

    // Node 0 - Start
    array_push(map_nodes, {x: 400, y: 800, sprite: spr_enemy, room: rm_battle1, next_nodes: [1,2], visited: true});
    array_push(map_nodes, {x: 600, y: 600, sprite: spr_shop, room: rm_shop, next_nodes: [3], visited: false});
    array_push(map_nodes, {x: 200, y: 600, sprite: spr_elite, room: rm_battle_elite, next_nodes: [3], visited: false});
    array_push(map_nodes, {x: 400, y: 400, sprite: spr_campfire, room: rm_campfire, next_nodes: [4], visited: false});
    array_push(map_nodes, {x: 400, y: 100, sprite: spr_boss, room: rm_boss1, next_nodes: [], visited: false});
}

// Local reference
nodes = map_nodes;






/*global.spr_room = {
    enemy: spr_enemy,
    elite: spr_elite,
    shop: spr_shop,
    rest: spr_campfire,
    treasure: spr_treasure,
    unknown: spr_unknown,
    boss: spr_boss
};


floors = 15;
generate_map(floors);
scr_map_fix_disconnected();

view_x = 0;
view_y = 0;

dragging = false;
drag_x = 0;
drag_y = 0;

current_node = undefined;   // player’s current node
next_nodes = [];            // reachable nodes next turn

anim_t = 0;
