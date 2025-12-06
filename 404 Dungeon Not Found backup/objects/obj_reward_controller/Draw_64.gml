// Background dim
draw_set_alpha(alpha_background);
draw_set_color(make_color_rgb(0,0,0));
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(), false);
draw_set_alpha(1);


// Title
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(display_get_gui_width()/2, 50, "Choose a Card");


// Draw each card
for (var i = 0; i < array_length(reward_cards); i++) {

    var card_obj = reward_cards[i];
    var spr = card_obj.sprite_index;

    var card_x = (display_get_gui_width()/2) - spacing + (i*spacing);
    var lift = 0;

    if (i == index_hover) lift = -15;
    if (i == index_clicked) lift = -30;

    // Draw the card
    draw_sprite_ext(
        spr, 0,
        card_x, card_y + lift,
        card_scale, card_scale,
        0, c_white, 1
    );

    // Hover outline
    if (i == index_hover && index_clicked == -1) {
        var w = sprite_get_width(spr)  * card_scale;
        var h = sprite_get_height(spr) * card_scale;

        draw_set_color(c_yellow);
        draw_set_alpha(0.5);
        draw_rectangle(card_x-w/2, card_y-h/2 + lift,
                       card_x+w/2, card_y+h/2 + lift, false);
        draw_set_alpha(1);
    }
}
