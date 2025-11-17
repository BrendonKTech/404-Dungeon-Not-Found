if (not_enough_mp_timer > 0) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);

    var alpha = not_enough_mp_timer / 45; // fades out
    draw_set_alpha(alpha);

	draw_set_font(Font1);
    draw_text(room_width / 2, room_height - 500, not_enough_mp_text);

    draw_set_alpha(1); // reset
    draw_set_color(c_white);
}