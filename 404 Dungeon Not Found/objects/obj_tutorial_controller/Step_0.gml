if (tutorial_active) {
    switch(tutorial_step) {
        case 0:
            tutorial_text = "Welcome to the tutorial! Click to continue.";
            waiting_for_input = true;
            break;
            
        case 1:
            tutorial_text = "This is your player character.";
            waiting_for_input = true;
            break;
            
        case 2:
            tutorial_text = "This is your robot tutor. Let's practice attacking!";
            waiting_for_input = true;
            break;
            
        case 3:
            tutorial_text = "Click on the robot to attack it!";
            obj_npc.can_be_attacked = true; // allow player to click NPC
            waiting_for_input = false; // wait for attack
            break;
            
        case 4:
            tutorial_text = "Great! Now watch the NPC attack.";
            waiting_for_input = true;
            obj_npc.attack_player(); // NPC attacks player
            break;
            
        case 5:
            tutorial_text = "Keep track of your HP! If it reaches 0, you lose.";
            waiting_for_input = true;
            break;
            
        case 6:
            tutorial_text = "You now understand the basics of attacking and taking damage.";
            waiting_for_input = true;
            break;
            
        case 7:
            tutorial_text = "Tutorial complete! Click to start the real game.";
            waiting_for_input = true;
            break;
            
        case 8:
            room_goto(rm_map); // Go to main game
            break;
    }
	
	if (char_index < string_length(dialogue_text)) {
        letter_timer += 1;
        if (letter_timer >= letter_delay) {
            char_index += 1;
            display_text = string_copy(dialogue_text, 1, char_index);
            letter_timer = 0;
        }
        waiting_for_input = false;
    } else {
        waiting_for_input = true; // player can click Next
    }
}

// Handle tutorial step actions
switch(tutorial_step) {
    case 2:
        global.turn = "player";
        // Highlight the Strike card
        for (var i = 0; i < array_length(obj_player.hand); i++) {
            if (obj_player.hand[i].name == "Ping") {
                player_target_card = obj_player.hand[i];
            }
        }
        break;

    case 3:
        global.turn = "enemy";
        obj_npc.attack_player(); // NPC attacks
        tutorial_step += 1; // auto advance after attack
        char_index = 0;
        display_text = "";
        break;
}