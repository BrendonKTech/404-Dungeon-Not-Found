// Draw health bar
var bar_w = 80;
var bar_h = 8;
var offset_y = 100;

var hp_percent = hp / max_hp;



if (is_alive)
{
	draw_set_font(Font1);
	draw_set_color(c_black);
	draw_rectangle(x - bar_w/2, y - sprite_height + offset_y, x + bar_w/2, y - sprite_height + offset_y + bar_h, false);

	draw_set_color(c_red);
	draw_rectangle(x - bar_w/2, y - sprite_height + offset_y, x - bar_w/2 + (bar_w * hp_percent), y - sprite_height + offset_y + bar_h, false);

	draw_set_color(c_white);
	draw_rectangle(x - bar_w/2, y - sprite_height + offset_y, x + bar_w/2, y - sprite_height + offset_y + bar_h, true);

	draw_set_color(c_white);
	draw_text(x, y - sprite_height + offset_y - 20, string(hp) + " / " + string(max_hp));

    draw_self();
}