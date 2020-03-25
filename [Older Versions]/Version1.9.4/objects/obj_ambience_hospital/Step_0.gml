if(instance_exists(obj_main_player)){
	left  = true;
	right = false;
	var norm  = false; 
	var rev	  = false;
	var pos_x = obj_main_player.x;
	
	if	   (audio_is_playing(track1)) norm = true;
	else if(audio_is_paused(track1))  norm = false;
	if	   (audio_is_playing(track2)) rev  = true;
	else if(audio_is_paused(track2))  rev  = false;
	
	if(pos_x <= 185){
		right = false;
		left  = true;
	}
	else {
		right = true;
		left  = false;
	}
}