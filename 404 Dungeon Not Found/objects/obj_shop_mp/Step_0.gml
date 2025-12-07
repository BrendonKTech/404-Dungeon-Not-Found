/// --- Hover detection ---
/// Always use base_scale to prevent multiplying hitbox
var w = sprite_width * base_scale;
var h = sprite_height * base_scale;

hovered = (mouse_x > x - w/2) &&
          (mouse_x < x + w/2) &&
          (mouse_y > y - h/2) &&
          (mouse_y < y + h/2);

/// --- Smooth scale animation ---
var target_scale = hovered ? base_scale * 1.125 : base_scale;
current_scale = lerp(current_scale, target_scale, 0.25);

// Apply to sprite
image_xscale = current_scale;
image_yscale = current_scale;