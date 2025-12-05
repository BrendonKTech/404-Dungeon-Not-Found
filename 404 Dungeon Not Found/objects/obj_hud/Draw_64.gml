// === LEFT SIDE HUD ===
draw_set_font(Font1);
draw_set_color(c_white);

var xx = pad;

// --- PLAYER NAME ---
draw_text(xx + 55, y_mid - 10, global.player_name);
xx += 180;

// --- HEART / HP ---
draw_sprite(spr_heart, 0, xx, y_mid - 20);
draw_text(xx + 80, y_mid - 10, string(obj_player.hp) + " / " + string(obj_player.max_hp));
xx += 160;

// --- GOLD ---
draw_sprite(spr_gold, 0, xx, y_mid - 20);
draw_text(xx + 50, y_mid - 10, string(global.gold));
xx += 140;

// --- POTIONS (3 slots) ---
for (var i = 0; i < 3; i++)
{
    draw_sprite(spr_empty_potion, 0, xx, y_mid - 20);
    xx += 70;
}

// === RELICS ===
var start_x = 50;
var cy = 135;
var spacing = 60;

for (var i = 0; i < array_length(global.relics); i++)
{
    var relic = global.relics[i];
    var cx = start_x + (i * spacing);
    var spr = scr_choose_relic_sprite(relic);
    draw_sprite(spr, 0, cx, y_mid);
}

// === OVERLAYS ===
if (show_map_overlay) {
    // Dark transparent background
    draw_set_color(make_color_rgba(0, 0, 0, 180));
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

    draw_set_color(c_white);
    draw_set_font(Font1);
    draw_text(100, 100, "MAP OPEN");

    // Add a close button
    draw_text(100, 200, "[ CLICK ANYWHERE TO CLOSE ]");

    // Force draw a map controller if it exists
    with (obj_tempmap_controller) {
        event_perform(ev_draw, 0);
    }
}
