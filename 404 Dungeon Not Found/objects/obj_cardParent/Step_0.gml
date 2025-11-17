var w = sprite_width * image_xscale;
var h = sprite_height * image_yscale;

hovered = (mouse_x > x - w/2) &&
          (mouse_x < x + w/2) &&
          (mouse_y > y - h/2) &&
          (mouse_y < y + h/2);