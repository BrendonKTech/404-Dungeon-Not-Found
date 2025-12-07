global.master_volume = 1;
global.music_volume = 1;
global.sfx_volume = 1;
global.fullscreen = false;

if (!variable_global_exists("player_name")) global.player_name = "Player";

// Initialize relics array
if (!variable_global_exists("relics") || array_length(global.relics) == 0) {
    global.relics = [];
}

// Initialize player stats (example)

global.player = noone;