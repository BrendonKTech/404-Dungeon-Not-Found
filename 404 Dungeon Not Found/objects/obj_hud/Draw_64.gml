/// --- HUD DRAW GUI ---

// Top bar background
draw_sprite_stretched(spr_topbar, 0, 0, 0, room_width, 120);

// === BASE POSITIONS ===
var pad = 70;
var icon_y = 30;       // top-left of each icon
var text_offset_y = 10; // text offset from the top of the icon

draw_set_font(Font1);
draw_set_color(c_white);

// ==== LEFT SIDE ====
var xx = pad;


// =====================================
// PLAYER NAME
// =====================================
// --- PLAYER NAME ---
draw_text(xx + 55, y_mid - 10, global.player_name);
xx += 180;


// =====================================
// HEART (HP)
// =====================================
draw_sprite(spr_heart, 0, xx - 30, icon_y);

draw_text(
    xx + 70, 
    icon_y + text_offset_y, 
    string(global.hp) + " / " + string(global.max_hp)
);

xx += 160;


// =====================================
// GOLD
// =====================================
draw_sprite(spr_gold, 0, xx, icon_y);
draw_text(xx + 50, icon_y + text_offset_y, string(global.gold));
xx += 140;


// =====================================
// POTIONS (3 slots)
// =====================================
for (var i = 0; i < 3; i++)
{
    draw_sprite(spr_empty_potion, 0, xx, icon_y);
    xx += 70;
}



// =====================================
// RIGHT-SIDE ICONS (TOP-LEFT)
// =====================================

// independent cursor for right side
var rx = room_width - 70;

// GEAR
draw_sprite(spr_gear, 0, rx, icon_y);
rx -= 90;

// CARDS
draw_sprite(spr_cards, 0, rx, icon_y);
rx -= 90;

// MAP (if used)
// draw_sprite(spr_map_icon, 0, rx, icon_y);
// rx -= 90;



// =====================================
// RELICS (Top-Left Icons)
// =====================================
var relic_start_x = 60;
var relic_y = icon_y + 60;
var spacing = 55;

for (var i = 0; i < array_length(global.relics); i++)
{
    var spr = scr_choose_relic_sprite(global.relics[i]);
    draw_sprite(spr, 0, relic_start_x + i * spacing, relic_y);
}



// =====================================
// MAP OVERLAY
// =====================================
if (show_map_overlay)
{
    draw_set_color(make_color_rgba(0,0,0,180));
    draw_rectangle(0, 0, room_width, room_height, false);

    draw_set_color(c_white);
    draw_text(100, 100, "MAP OPEN");
    draw_text(100, 200, "[ CLICK ANYWHERE TO CLOSE ]");

    with (obj_tempmap_controller)
        event_perform(ev_draw, 0);
}
