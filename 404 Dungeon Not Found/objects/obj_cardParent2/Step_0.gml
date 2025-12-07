var card_scale = 1;  // same as draw scale
var w = sprite_width * card_scale;
var h = sprite_height * card_scale;

// hover check
hovered = (mouse_x > x - w/2) &&
          (mouse_x < x + w/2) &&
          (mouse_y > y - h/2) &&
          (mouse_y < y + h/2);