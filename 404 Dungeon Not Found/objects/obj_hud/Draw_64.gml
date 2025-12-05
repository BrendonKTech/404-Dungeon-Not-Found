// ==== HUD BAR BACKGROUND ====
// Stretch your HUD bar to top of screen
draw_sprite_stretched(spr_topbar, 0, 0, 0, room_width, 800);


// ==== LEFT SIDE ====
// Starting X positions
var pad     = 20;
var y_mid   = 50; // vertically centered in the bar


// --- PLAYER NAME ---
draw_set_font(Font1);
draw_set_color(c_white);
draw_text(75, 40, global.player_name);


// offset after name
var xx = pad + 180;


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



// ==== RIGHT SIDE ====

// Position from right side inward
var rx = room_width - 70;


// --- GEAR (settings) ---	
draw_sprite(spr_gear, 0, rx, y_mid - 20);
rx -= 90;


// --- CARDS (deck) ---
draw_sprite(spr_cards, 0, rx, y_mid - 20);
rx -= 90;


// --- MAP ---
draw_sprite(spr_map_icon, 0, rx, y_mid - 20);
rx -= 90;


// ========================
// MAP OVERLAY
// ========================
if (show_map_overlay) {

    // Dark transparent background
    draw_set_color(make_color_rgba(0, 0, 0, 180));
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

    draw_set_color(c_white);
    draw_set_font(Font1);
    draw_text(100, 100, "MAP OPEN");

    // Add a close button
    draw_text(100, 200, "[ CLICK ANYWHERE TO CLOSE ]");
}

if (show_map_overlay) {
    with (obj_tempmap_controller) {
        event_perform(ev_draw, 0); // force draw its Draw event UI-style
    }
}

var start_x = 50;
var cy = 135;
var spacing = 60; // distance between relic icons 

for (var i = 0; i < array_length(global.relics); i++) {
	var relic = global.relics[i];
	var cx = start_x + (i * spacing);
	
	// You must assign a sprite for each relic
	var spr = scr_choose_relic_sprite(relic);
	draw_sprite(spr, 0, cx, y);
}
// === CLICK HANDLING FOR HUD ICONS ===
if (mouse_check_button_pressed(mb_left))
{
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    // HUD icon positions (same as your draw code)
    var gear_x  = room_width - 70;
    var gear_y  = 50 - 20;

    var cards_x = gear_x - 90;
    var cards_y = gear_y;

    var map_x   = cards_x - 90;
    var map_y   = gear_y;

    // ==== GEAR ICON ====
    if (sprite_clicked(spr_gear, gear_x, gear_y, mx, my)) {
        if (object_exists(obj_gear)) {
            instance_create_layer(mx, my, "Instances", obj_gear);
        }
    }

    // ==== CARDS ICON ====
    if (sprite_clicked(spr_cards, cards_x, cards_y, mx, my)) {
        if (object_exists(obj_card_icon)) {
            instance_create_layer(mx, my, "Instances", obj_card_icon);
        }
    }

    // ==== MAP ICON ====
    if (sprite_clicked(spr_map_icon, map_x, map_y, mx, my)) {
        if (object_exists(obj_map_icon)) {
            instance_create_layer(mx, my, "Instances", obj_map_icon);
			show_debug_message("Gear Clicked")
        }
    }
}
