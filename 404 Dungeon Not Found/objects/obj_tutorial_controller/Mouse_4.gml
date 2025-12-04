// Click Next
if (waiting_for_input && mouse_x > btn_x && mouse_x < btn_x+btn_w && mouse_y > btn_y && mouse_y < btn_y+btn_h) {
    tutorial_step += 1;
    char_index = 0;
    display_text = "";
    waiting_for_input = false;
}

// Click on card (simple tutorial version)
for (var i = 0; i < array_length(obj_player.hand); i++) {
    var card_x = 50 + i*120;
    var card_y = room_height - 200;
    var card_w = 100;
    var card_h = 140;

    if (mouse_x > card_x && mouse_x < card_x+card_w && mouse_y > card_y && mouse_y < card_y+card_h) {
        var card = obj_player.hand[i];

        if (tutorial_step == 3 && card.name == "Strike") {
            // Deal damage to NPC
            obj_npc.hp -= card.damage;
            show_debug_message("Player attacked NPC! NPC HP: " + string(obj_npc.hp));
            tutorial_step += 1;
            char_index = 0;
            display_text = "";
        }
    }
}
