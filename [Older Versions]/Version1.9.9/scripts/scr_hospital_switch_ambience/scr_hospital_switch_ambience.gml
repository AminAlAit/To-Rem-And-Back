///@desc Switching volumes between ambiences

//Debug(obj_trig, "SCR Ambience Switch 0");
with(obj_ambience_hospital){
	if(left && !right){
		//Debug(obj_trig, "SCR Ambience Switch 0:0");
		audio_sound_gain(track1, 1, 1);
		audio_sound_gain(track2, 0, 1);
		}
	else if(!left && right){
		//Debug(obj_trig, "SCR Ambience Switch 0:1");
		audio_sound_gain(track1, 0, 1);
		audio_sound_gain(track2, 1, 1);
	}
	
	//Debug(obj_trig, "Player Crossed; Ambience must be different now")
}
scr_cutscene_end_action();