/// Hover detection
var w = sprite_width * image_xscale;
var h = sprite_height * image_yscale;

hovered = (mouse_x > x - w/2) &&
          (mouse_x < x + w/2) &&
          (mouse_y > y - h/2) &&
          (mouse_y < y + h/2);

/// Smooth scale animation
var target_scale = hovered ? 2.5 : 2.0;  // normal = 1.0, enlarged = 1.2
image_xscale = lerp(image_xscale, target_scale, 0.25);
image_yscale = image_xscale;