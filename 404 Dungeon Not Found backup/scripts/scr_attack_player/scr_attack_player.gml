function scr_attack_player(){
	with(obj_player) {
		hp -= other.damage; // subtract NPC damage from player
    show_debug_message("NPC attacked player! Player HP: " + string(hp));
	}
	// Play the "player hit" sound
	audio_play_sound(snd_player_hit, 1, false);

}