// obj_food seems to remain in its place in the room so to ensure a new batch is deployed, we destroy the old ones
instance_destroy(obj_food);

audio_play_sound(snd_playerTransition, 5, false);

//with(obj_rem_ui) clues = 0;
room_restart();