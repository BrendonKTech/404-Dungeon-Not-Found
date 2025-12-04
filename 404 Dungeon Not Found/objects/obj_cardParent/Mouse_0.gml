// obj_cardParent Left Pressed Event
if (global.turn == "player") {
    if (obj_player.mp >= card_cost) {
        // Tutorial check
        if (instance_exists(obj_tutorial_controller) && obj_tutorial_controller.tutorial_step == 2) {
            if (id != obj_tutorial_controller.player_target_card) {
                show_debug_message("Play the highlighted card to continue!");
                exit;
            }
        }

        target = instance_nearest(mouse_x, mouse_y, obj_npc);
        if (instance_exists(target)) {
            target.hp -= card_damage;
            obj_player.mp -= card_cost;

            // Damage number instance
            var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
            dmg_text.text = string(card_damage);
            dmg_text.color = c_red;
            dmg_text.vy = -1;
            dmg_text.life_time = 60;
        }

        // Advance tutorial after hitting the target
        if (instance_exists(obj_tutorial_controller) && obj_tutorial_controller.tutorial_step == 2) {
            obj_tutorial_controller.tutorial_step += 1;
            obj_tutorial_controller.char_index = 0;
            obj_tutorial_controller.display_text = "";
        }
    }
}
