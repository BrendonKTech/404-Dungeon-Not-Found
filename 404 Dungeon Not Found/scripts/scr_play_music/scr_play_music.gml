function scr_play_music(track)
{
    if (global.current_music != noone && audio_is_playing(global.current_music)) {
        audio_stop_sound(global.current_music);
    }

    global.current_music = audio_play_sound(track, 1, true);
}
