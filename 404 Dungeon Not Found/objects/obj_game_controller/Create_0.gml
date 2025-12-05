global.player_name = "Player";

if (!variable_global_exists("relics")) {
    global.relics = [];
}


if (!variable_global_exists("current_node")) global.current_node = 0;
if (!variable_global_exists("next_node")) global.next_node = 0;