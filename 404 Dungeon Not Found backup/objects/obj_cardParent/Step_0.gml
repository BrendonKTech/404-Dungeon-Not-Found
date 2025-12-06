var w = sprite_width * image_xscale;
var h = sprite_height * image_yscale;

hovered = (mouse_x > x - w) &&
          (mouse_x < x + w) &&
          (mouse_y > y - h) &&
          (mouse_y < y + h);