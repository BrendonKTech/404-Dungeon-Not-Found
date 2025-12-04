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
