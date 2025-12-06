if (!variable_global_exists("unlock_index")) {
    global.unlock_index = 0; // or whatever default value you want
}

global.inventory = [0, 1, 2, 3]

randomize();

global.hp          = 100;
global.max_hp      = 100;
global.was_hit = false;
global.enemy_hit = false;
global.extra_current_damage = 3