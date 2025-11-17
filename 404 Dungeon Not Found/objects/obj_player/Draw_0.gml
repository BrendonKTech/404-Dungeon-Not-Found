draw_self();
var bar_w = 80;
var bar_h = 8;

var hp_percent = hp / max_hp;

draw_set_font(Font1);
draw_set_color(c_black);
draw_rectangle(x - bar_w/2, y - sprite_height - 20, x + bar_w/2, y - sprite_height - 20 + bar_h, false);

draw_set_color(c_lime);
draw_rectangle(x - bar_w/2, y - sprite_height - 20, x - bar_w/2 + (bar_w * hp_percent), y - sprite_height - 20 + bar_h, false);

draw_set_color(c_white);
draw_rectangle(x - bar_w/2, y - sprite_height - 20, x + bar_w/2, y - sprite_height - 20 + bar_h, true);

draw_set_color(c_white);
draw_text(x, y - sprite_height - 32, string(hp) + " / " + string(max_hp));
