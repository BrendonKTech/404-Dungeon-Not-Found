if (!variable_global_exists("unlock_index")) {
    global.unlock_index = 0; // or whatever default value you want
}

global.inventory = [0]

randomize();

global.hp          = 200;
global.max_hp      = 200;
global.was_hit = false;
global.enemy_hit = false;
global.extra_current_damage = 3
global.turn_count = 0
global.gold = 0;
global.mp = 3
global.max_mp = 3
global.auto_block = 0