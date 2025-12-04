// Fade in background
if (alpha_background < 0.6) alpha_background += 0.05;

// If already chosen a card
if (index_clicked != -1) {
    if (close_timer == -1) close_timer = 20;
    close_timer--;

    if (close_timer <= 0) {
        instance_destroy();
    }
    exit;
}


// Hover detection
var mx = device_mouse_x(0);
var my = device_mouse_y(0);

index_hover = -1;

for (var i = 0; i < array_length(reward_cards); i++) {

    var card_obj = reward_cards[i];

    var card_x = (display_get_gui_width()/2) - spacing + (i * spacing);

    var w = sprite_get_width(card_obj.sprite_index)  * card_scale;
    var h = sprite_get_height(card_obj.sprite_index) * card_scale;

    if (mx > card_x - w/2 && mx < card_x + w/2 &&
        my > card_y - h/2 && my < card_y + h/2) {
        index_hover = i;
    }
}
