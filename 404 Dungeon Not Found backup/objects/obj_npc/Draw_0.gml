draw_self();

var bar_w = 80;
var bar_h = 8;

// Calculate HP percentage
var hp_percent = hp / max_hp;

// Move bar 300px lower than sprite
var bar_y_top = y - sprite_height + 365;
var bar_y_bottom = bar_y_top + bar_h;
var text_y = bar_y_top - 12;  // text slightly above the bar

// Draw background
draw_set_font(Font1);
draw_set_color(c_black);
draw_rectangle(x - bar_w/2, bar_y_top, x + bar_w/2, bar_y_bottom, false);

// Draw HP
draw_set_color(c_red);
draw_rectangle(x - bar_w/2, bar_y_top, x - bar_w/2 + (bar_w * hp_percent), bar_y_bottom, false);

// Draw border
draw_set_color(c_white);
draw_rectangle(x - bar_w/2, bar_y_top, x + bar_w/2, bar_y_bottom, true);

// Draw text
draw_set_color(c_white);
draw_text(x, text_y, string(hp) + " / " + string(max_hp));
