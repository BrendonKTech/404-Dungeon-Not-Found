// Draw the "Not enough gold" message if timer > 0
if (not_enough_gold_timer > 0) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);
    
    // Fade out as timer decreases
    var alpha = not_enough_gold_timer / 40;
    draw_set_alpha(alpha);

    draw_set_font(Font1);
    draw_text(room_width / 2, room_height - 200, not_enough_gold_text);

    draw_set_alpha(1); // reset alpha
    draw_set_color(c_white);

    // Decrease timer each frame
    not_enough_gold_timer -= 1;
}

if (success_timer > 0) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(make_color_rgb(255, 215, 0));
    
    // Fade out as timer decreases
    var alpha = success_timer / 40;
    draw_set_alpha(alpha);

    draw_set_font(Font1);
    draw_text(room_width / 2, room_height - 200, success_text);

    draw_set_alpha(1); // reset alpha
    draw_set_color(c_white);

    // Decrease timer each frame
    success_timer -= 1;
}