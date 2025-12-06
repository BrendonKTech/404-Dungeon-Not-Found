function scr_play_music(track) {
    audio_stop_all(); // Strong & safe
    global.current_music = audio_play_sound(track, 1, true);
}
