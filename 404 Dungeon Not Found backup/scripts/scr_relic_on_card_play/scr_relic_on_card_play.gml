function scr_relic_on_card_play(_card){
	global.cards_played_this_turn += 1;

    // 8. GPU Accelerator – every 3 cards played gain 1 Strength this turn
    if (array_contains(global.relics, "GPU Accelerator")) {
        if (global.cards_played_this_turn % 3 == 0) {
            obj_player.strength += 1;

            // Temporary strength
            global.temp_strength += 1;
        }
    }

    // 9. Memory Leak Capacitor – When playing a Power, gain 1 energy and lose 2 HP
    if (array_contains(global.relics, "Memory Leak Capacitor")) {
        if (_card.type == "power") {
            obj_player.mp += 1;
            obj_player.hp -= 2;
        }
    }

    // 12. Quantum Bit Drive — duplicate next card after shuffling
    if (array_contains(global.relics, "Quantum Bit Drive")) {
        if (global.shuffled_recently) {
            _card.duplicate = true; // tag the card
            global.shuffled_recently = false;
        }
    }
}