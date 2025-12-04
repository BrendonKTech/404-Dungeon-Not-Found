if (can_be_attacked) {
    hp -= 6; // example player attack damage
    show_debug_message("Player attacked NPC! NPC HP: " + string(hp));
    
    // After attack, move tutorial to next step
    with (obj_tutorial_controller) {
        tutorial_step += 1;
    }
    
    can_be_attacked = false;
}
