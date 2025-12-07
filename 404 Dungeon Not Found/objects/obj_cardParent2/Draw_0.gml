// Draw Event
var card_scale = 0.3; // same as Step Event
image_xscale = card_scale;
image_yscale = card_scale;

// --- lift amount ---
var lift = 0;
if (hovered) {
    lift = -30;
}

// --- draw card at lifted position ---
draw_sprite_ext(sprite_index, image_index, x, y + lift, card_scale, card_scale, 0, c_white, 1);

// --- draw hover highlight ---
if (hovered) {
    var w = sprite_width * card_scale / 2;
var h = sprite_height * card_scale / 2;

}
