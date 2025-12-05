// Check if the mouse is clicking inside spr_map_icon
if (point_in_sprite(spr_map_icon, 0, mouse_x, mouse_y)) {
    instance_create_layer(0, 1080, "Instances", obj_settings_controller);
	show_debug_message("Setting Clicked")
}
