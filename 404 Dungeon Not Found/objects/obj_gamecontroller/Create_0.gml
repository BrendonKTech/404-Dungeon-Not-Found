global.master_volume = 1;
global.music_volume = 1;
global.sfx_volume = 1;
global.fullscreen = false;
global.gold = 0;

if (!variable_global_exists("player_name")) global.player_name = "Player";

// Initialize relics array
if (!variable_global_exists("relics") || array_length(global.relics) == 0) {
    global.relics = [];
}

// Initialize player stats (example)
global.player_hp = 100;
global.player_max_hp = 100;
global.player_mp = 50;
global.player_strength = 0;
global.player_block = 0;
global.enemy_vulnerable = false;

global.player = noone;