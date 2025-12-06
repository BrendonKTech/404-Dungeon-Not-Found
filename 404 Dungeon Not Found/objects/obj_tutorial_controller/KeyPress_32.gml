if (waiting_for_input)
{
    tutorial_step++;
    char_index = 0;
    display_text = "";
    waiting_for_input = false;
    show_debug_message("Next button clicked! Step is now: " + string(tutorial_step));
}

// Player clicks card to attack during Step 3
var p = global.player; // get the actual player instance
if (instance_exists(p)) {
    for (var i = 0; i < array_length(p.hand); i++) {
        var card_x = 50 + i * 120;
        var card_y = room_height - 200;
        var card_w = 100;
        var card_h = 140;

        if (mouse_x >= card_x && mouse_x <= card_x + card_w &&
            mouse_y >= card_y && mouse_y <= card_y + card_h) {
            var card = p.hand[i];

            if (tutorial_step == 3 && card.name == "Ping") {
                // Player damages NPC
                if (instance_exists(obj_npc)) {
                    obj_npc.hp -= card.damage;
                }

                // Clear current tutorial text and set waiting for input
                tutorial_step = 4;  // Move to Step 4 after card click
                char_index = 0;
                display_text = "";
                waiting_for_input = true; // Allow spacebar to continue the tutorial
            }
        }
    }
}
