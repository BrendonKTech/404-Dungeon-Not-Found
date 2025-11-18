draw_set_color(color);
draw_set_alpha(alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw text
draw_text(x, y, text);

// reset alpha
draw_set_alpha(1);
draw_set_color(c_white);