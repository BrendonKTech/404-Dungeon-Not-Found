// Reset per-turn relic values
global.cards_players_this_turn = 0;
global.first_unblocked_taken = false;

// Overclocked CPU — Gain 1 temporary MP
if (array_contains(global.relics, obj_overclockedCPU)) {
    global.temp_mp += 1;
}
