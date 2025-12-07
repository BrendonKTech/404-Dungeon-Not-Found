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
var mp_ratio_raw = global.mp / global.max_mp;
var mp_ratio_clamped = clamp(mp_ratio_raw, 0, 1);

// --- Choose bar color ---
if (global.mp > global.max_mp) {
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
draw_text(bar_x + bar_width/2, bar_y + bar_height/2, string(global.mp) + " / " + string(global.max_mp));