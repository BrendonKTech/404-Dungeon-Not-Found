// Draw health bar
var bar_w = 80;
var bar_h = 8;
var offset_y = 100;

if (is_alive) {
    var hp_percent = hp / max_hp; // use local variables

    draw_set_font(Font1);
    
    // Draw border
    draw_set_color(c_black);
    draw_rectangle(x - bar_w/2, y - sprite_height + offset_y, x + bar_w/2, y - sprite_height + offset_y + bar_h, false);

    // Draw filled HP
    draw_set_color(c_red);
    draw_rectangle(x - bar_w/2, y - sprite_height + offset_y, x - bar_w/2 + (bar_w * hp_percent), y - sprite_height + offset_y + bar_h, false);

    // Draw background overlay
    draw_set_color(c_white);
    draw_rectangle(x - bar_w/2, y - sprite_height + offset_y, x + bar_w/2, y - sprite_height + offset_y + bar_h, true);

    // Draw HP text
    draw_set_color(c_white);
    draw_text(x, y - sprite_height + offset_y - 20, string(hp) + " / " + string(max_hp));

    draw_self();
}
