// Player stats
/*draw_text(32, 32, "Player HP: " + string(obj_player.hp));
draw_text(32, 64, "Player MP: " + string(obj_player.mp));

// NPC stats
draw_text(room_width - 200, 32, "NPC HP: " + string(obj_npc.hp));

// Draw tutorial dialogue
if (instance_exists(obj_tutorial_controller)) {
    draw_set_color(c_black);
    draw_rectangle(20, room_height - 100, room_width - 20, room_height - 20, false);
    draw_set_color(c_white);
    draw_text(40, room_height - 80, obj_tutorial_controller.display_text);
}

// Draw cards (smaller version)
for (var i = 0; i < array_length(obj_player.hand); i++) {
    var card = obj_player.hand[i];
    var cx = 50 + i*120;
    var cy = room_height - 200;
    draw_self(); // cardParent handles scale, hover
}

