if (!flagPickedUp) {
	alarm[0] = 60; // destory instance after 60 frames
	//var snd = audio_play_sound(snd_itemTake, 0, 0);
	//audio_sound_set_track_position(snd, 0.3);
}
flagPickedUp = true;

// signal Obj_Rem_System once
if(one_time_trig) alarm[1] = 1;