if (tutorial_active) {

    // Initialize new step
    if (tutorial_step != prev_step) {
        prev_step = tutorial_step;
        char_index = 0;
        display_text = "";
        letter_timer = 0;
        waiting_for_input = false;

        // Reset step-specific flags
        waiting_for_card_click = false;
        waiting_for_end_turn = false;

        switch(tutorial_step) {
            case 0:
                dialogue_text = "Welcome to the tutorial! Hit Space to continue.";
                audio_play_sound(snd_tutorial1, 1, false);
				break;
            case 1:
                dialogue_text = "This is your player character.";
				audio_play_sound(snd_tutorial2, 1, false);
                break;

            // Step 2: click any card to attack
            case 2:
                dialogue_text = "Let's practice attacking! Click a card to attack!";
                waiting_for_card_click = true; // lock until card clicked
                audio_play_sound(snd_tutorial3, 1, false);
				break;
			case 3:
				dialogue_text = "Great! Using cards will deplete your MP based on their cost.";
               audio_play_sound(snd_newTutorialVoice1, 1, false);
				break;
			
            // Step 3: instruction dialogue
            case 4:
                dialogue_text = "You can keep attacking until you run out of MP or end your turn.";
                audio_play_sound(snd_tutorial4, 1, false);
				break;

            // Step 4: must click End Turn
            case 5:
                dialogue_text = "Try hitting the 'End Turn' button now.";
				waiting_for_end_turn = true;
                audio_play_sound(snd_tutorial5, 1, false);
				break;
			case 6:
                dialogue_text = "Enemies get a chance to attack when your turn ends.";
               audio_play_sound(snd_newTutorialVoice2, 1, false);
				break;
            case 7:
                dialogue_text = "Keep track of your HP! If it reaches 0, you lose.";
                audio_play_sound(snd_tutorial6, 1, false);
				break;
			case 8:
                dialogue_text = "There's also icons below your HP bar to indicate status effects on you.";
               audio_play_sound(snd_newTutorialVoice3, 1, false);
				break;
			case 9:
             dialogue_text = "You now understand the basics of attacking and taking damage.";
            audio_play_sound(snd_tutorial7, 1, false);
				break;
			case 10:
            dialogue_text = "When you start the real game, you'll be given a random set of cards.";
           audio_play_sound(snd_newTutorialVoice4, 1, false);
				break;
			case 11:
            dialogue_text = "You can obtain more cards throughout the game from loot and shops.";
            audio_play_sound(snd_newTutorialVoice5, 1, false);
				break;
            
            case 12:
                dialogue_text = "Tutorial complete! Hit Space to return to the menu.";
                audio_play_sound(snd_tutorial8, 1, false);
				break;
            case 13:
                game_restart()
                break;
        }
    }

    // Typewriter effect
    if (char_index < string_length(dialogue_text)) {
        letter_timer++;
        if (letter_timer >= letter_delay) {
            char_index++;
            display_text = string_copy(dialogue_text, 1, char_index);
            letter_timer = 0;
        }
        waiting_for_input = false;
    } else {
        // Dialogue finished, determine allowed input
        if (tutorial_step == 2 && waiting_for_card_click) {
            waiting_for_input = false; // player must click a card
        } else if (tutorial_step == 5) {
            waiting_for_end_turn = true; // unlock End Turn button
            waiting_for_input = false; // prevent Space/Next
        } else {
            waiting_for_input = true; // normal progression for other steps
        }
    }
}