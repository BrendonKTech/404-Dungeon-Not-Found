// Only create icons once
if (!icons_created) {

    var gui_w = display_get_gui_width();

    // Rightmost icon (Gear)
    var gear_x = gui_w - 70;
    instance_create_layer(gear_x, icon_y, "Instances", obj_gear);


    icons_created = true;
}
