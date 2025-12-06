// Quantum Cooling Fan — If Block = 0, gain 3 Block
if (array_contains(global.relics, obj_quantumcoolingfan)) {
    if (obj_player.block == 0) {
        obj_player.block += 3;
    }
}

// End of player turn — Clear temp MP when enemy starts
if (global.turn == "enemy") {
    global.temp_mp = 0;
}
