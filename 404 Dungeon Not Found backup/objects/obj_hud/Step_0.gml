// Only create icons once
if (!icons_created) {

    var gui_w = display_get_gui_width();

    // Rightmost icon (Gear)
    var gear_x = gui_w - 70;
    instance_create_layer(gear_x, icon_y, "Instances", obj_gear);

    // Cards icon
    var cards_x = gear_x - 90;
    instance_create_layer(cards_x, icon_y, "Instances", obj_card_icon);

    // Map icon
    var map_x = cards_x - 90;
    instance_create_layer(map_x, icon_y, "Instances", obj_map_icon);

    icons_created = true;
}
