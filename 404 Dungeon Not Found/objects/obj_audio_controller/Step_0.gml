if (room == rm_shop || room == rm_treasure || room == rm_map || room == rm_campfire) {
    // Stop all current music
    audio_stop_all();

    // Play map music if not already playing
    if (!audio_is_playing(snd_map_music)) {
        audio_play_sound(snd_map_music, 1, true);
    }
}
