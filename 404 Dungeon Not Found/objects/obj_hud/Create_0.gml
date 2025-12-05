// HUD state
show_map_overlay = false;
show_deck_overlay = false;
show_settings_overlay = false;

current_overlay = ""; // "", "map", "deck", "settings"

// Positions
pad = 20;
y_mid = 50;

// Right-side icon Y position
icon_y = 30;

// Track spawned icons to prevent duplicates
icons_created = false; // just initialize normally

// Example relics array
if (!variable_global_exists("relics")) global.relics = [];
