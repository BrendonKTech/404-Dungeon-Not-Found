if (global.turn == "player" && obj_player.mp >= card_cost) {

    var tutorial = instance_exists(obj_tutorial_controller) ? instance_find(obj_tutorial_controller, 0) : noone;

    if (tutorial != noone && tutorial.tutorial_active) {

        // Lock cards until Step 2
        if (tutorial.tutorial_step < 2) exit;

        // Step 2: click any card to progress
        if (tutorial.tutorial_step == 2 && tutorial.waiting_for_card_click) {
            show_debug_message("Card clicked! Tutorial progresses to Step 3.");

            tutorial.tutorial_step = 3;
            tutorial.waiting_for_card_click = false;
            tutorial.char_index = 0;
            tutorial.display_text = "";
        }
    }

    // Normal card attack logic
    var target = instance_nearest(mouse_x, mouse_y, obj_npc);
    if (instance_exists(target)) {
        target.hp -= card_damage;
        obj_player.mp -= card_cost;

        var dmg_text = instance_create_layer(target.x, target.y - 50, "Instances", obj_damage_number);
        dmg_text.text = string(card_damage);
        dmg_text.color = c_red;
        dmg_text.vy = -1;
        dmg_text.life_time = 60;
		instance_destroy()
    }
}