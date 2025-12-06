if (instance_number(obj_relic_controller) > 1) {
	instance_destroy();
	exit;
}

global.relics = [];
global.temp_mp = 0;
global.upgrade_first_draw = false;

global.cards_players_this_turn = 0;
global.shuffled_recently = false;	// Quantum Bit Drive
global.used_glitched_bios = false;	// Once per combat
global.first_unblocked_taken = false;  // for Firewall Chipset

card_temp = noone;
damage_temp = 0;
target_temp = noone;


// Apply effect for Burnt Power Supply
if (array_contains(global.relics, obj_burntpowersupply)) {
    obj_player.weak += 1;
}

// When drawing a card, check if it is a Status or Curse
if (array_contains(global.relics, obj_corruptedRamstick)) {
    if (card_type == "status") {
        obj_player.block += 1;
    }
}

// Exhausting a card
if (array_contains(global.relics, obj_debuggersToolkit)) {
    obj_player.hp += 1;
}

// When drawing cards
if (array_contains(global.relics, obj_fiberOpticSpool) && global.cards_players_this_turn == 0) {
    // Upgrade the first card drawn
    global.first_draw = true;
}

// In the code where the player takes damage
if (array_contains(global.relics, obj_firewallChipset) && !global.first_unblocked_taken) {
    if (damage > obj_player.block) {
        obj_player.block += 10;
        global.first_unblocked_taken = true;
    }
}

// At the start of combat
/*if (array_contains(global.relics, obj_fragmentedHardDrive)) {
    scr_deck_add_card(obj_data_fragment);  
    scr_deck_add_card(obj_data_fragment);
}*/

// At the start of combat or during the player's turn
if (array_contains(global.relics, obj_glitchedBIOSbattery) && !global.used_glitched_bios) {
    if (obj_player.hp <= (obj_player.max_hp * 0.3)) {
        global.used_glitched_bios = true;
        global.temp_mp += 2;
    }
}

// Track cards played in a turn
if (array_contains(global.relics, obj_gpuAccelerator)) {
    global.cards_players_this_turn += 1;
    
    if (global.cards_players_this_turn % 3 == 0) {
        obj_player.mp += 1;
    }
}

if (array_contains(global.relics, obj_memoryLeakCapacitor)) {
    if (card_type == "power") {
        obj_player.mp += 1;
        obj_player.hp -= 2;
    }
}

// At the start of each turn
if (array_contains(global.relics, obj_overclockedCPU)) {
    global.temp_mp += 1;
}

// At the end of the turn, clear temporary Energy
if (global.turn == "enemy") {
    global.temp_mp = 0;
}

// When shuffling the deck
if (array_contains(global.relics, obj_quantumBitDrive)) {
    global.shuffled_recently = true;
}

// When playing a card
if (global.shuffled_recently) {
    scr_play_card(id, target);
    global.shuffled_recently = false;
}

// At the end of the player's turn
if (array_contains(global.relics, obj_quantumcoolingfan)) {
    if (obj_player.block == 0) {
        obj_player.block += 3;
    }
}

