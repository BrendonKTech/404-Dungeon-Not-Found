if (obj_tutorial_controller != noone && obj_tutorial_controller.tutorial_active) {
    if (obj_tutorial_controller.tutorial_step == 2 && obj_tutorial_controller.waiting_for_card_click) {
        show_debug_message("Tutorial card clicked!");
        obj_tutorial_controller.waiting_for_card_click = false;

        // Deal damage to tutorial NPC
        if (instance_exists(obj_npc)) {
            obj_npc.hp -= damage;
			obj_player_tutorial.mp -= card_cost
			audio_play_sound(snd_robot_hit, -5, false)
			var dmg_text = instance_create_layer(obj_npc.x, obj_npc.y - 50, "Popup", obj_damage_number);
		dmg_text.depth = -1000;
        dmg_text.text = damage
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
			
        }

        // Advance tutorial
        obj_tutorial_controller.tutorial_step = 3;
        obj_tutorial_controller.char_index = 0;
        obj_tutorial_controller.display_text = "";
        obj_tutorial_controller.waiting_for_input = true;
		instance_destroy()
    }
}
