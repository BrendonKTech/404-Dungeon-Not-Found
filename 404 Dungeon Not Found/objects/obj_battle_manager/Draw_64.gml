if (not_enough_mp_timer > 0) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);

    var alpha = not_enough_mp_timer / 40; // fades out
    draw_set_alpha(alpha);

	draw_set_font(Font1);
    draw_text(room_width / 2, room_height - 500, not_enough_mp_text);

    draw_set_alpha(1); // reset
    draw_set_color(c_white);
}

// --- MP Gauge Parameters ---
var bar_width  = 200;
var bar_height = 20;
var bar_x      = room_width / 2 - 100;
var bar_y      = room_height - 300;
var padding    = 2;

// --- Draw bar background ---
draw_set_color(c_black);
draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

// --- Clamp MP ratio so filled width never exceeds the bar ---
var mp_ratio_raw = obj_player.mp / obj_player.max_mp;
var mp_ratio_clamped = clamp(mp_ratio_raw, 0, 1);

// --- Choose bar color ---
if (obj_player.mp > obj_player.max_mp) {
    draw_set_color(make_color_rgb(180, 0, 255)); // purple
} else {
    draw_set_color(c_blue);
}

// --- Draw filled portion ---
draw_rectangle(
    bar_x + padding,
    bar_y + padding,
    bar_x + padding + (bar_width - 2 * padding) * mp_ratio_clamped,
    bar_y + bar_height - padding,
    false
);

// --- Draw MP text ---
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(bar_x + bar_width/2, bar_y + bar_height/2, string(obj_player.mp) + " / " + string(obj_player.max_mp));


if (show_victory_overlay) {
    // Draw semi-transparent black rectangle over the whole screen
    draw_set_color(c_black);
    draw_set_alpha(overlay_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

   draw_set_color(c_yellow);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(Font1);
draw_text(room_width/2, room_height/2, "Enemy Slain, Battle Won!");
}

if (show_defeat_overlay) {
    // Draw semi-transparent black rectangle over the whole screen
    draw_set_color(c_black);
    draw_set_alpha(overlay_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

   draw_set_color(c_yellow);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(Font1);
draw_text(room_width/2, room_height/2, "Defeat...");
}
