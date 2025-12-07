// Step: only receive card clicks if tutorial step is active
if (tutorial != noone && tutorial.tutorial_active) {
    if (tutorial.tutorial_step == 2 && tutorial.waiting_for_card_click) {
        // Do nothing here, handled by card objects
    }
}
