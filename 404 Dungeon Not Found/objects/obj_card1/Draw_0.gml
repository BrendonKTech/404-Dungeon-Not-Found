var card_scale = 0.5;  // your current scale
image_xscale = card_scale;
image_yscale = card_scale;

// --- lift amount ---
var lift = 0;
if (hovered) {
    lift = -30; // moves card 20 pixels upward
}

// --- draw card at lifted position ---
draw_sprite_ext(sprite_index, image_index, x, y + lift, card_scale, card_scale, 0, c_white, 1);

// --- draw hover highlight ---
if (hovered) {
    var w = sprite_width * card_scale;
    var h = sprite_height * card_scale;

    draw_set_alpha(0.4);
    draw_set_color(c_yellow);
    draw_rectangle(
        x - w/2, y - h/2 + lift,
        x + w/2, y + h/2 + lift,
        false
    );
    draw_set_alpha(1);
}