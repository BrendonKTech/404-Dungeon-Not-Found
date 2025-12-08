picked_card = treasure_get_card()
obj_loot_chest_popup2.progress = true;
audio_play_sound(snd_chest_open, -5, false)
instance_create_layer(room_width / 2, room_height / 2, "Instances", picked_card);
alarm[0] = 240