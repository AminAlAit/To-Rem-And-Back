#region
switch(room){
	case room_rem_first:
		//audio_stop_sound();
		
		if(!rem_isPlaying) {
			audio_play_sound(snd_rem, 1, true);
			rem_isPlaying = true;
		}
	break;
	case room_hospital_first:
		
	break;
	case room_limbo:
		if(temp2) { 
			audio_stop_sound(snd_hospital_ambience);
			temp2 = false;
		}

		if(!limbo_isPlaying) {
			audio_play_sound(snd_limbo, 1, true);
			limbo_isPlaying = true;
		}
	break;
}
#endregion

switch(sema){
	case "0":
		// wait 1 sec
		counter++;
		if(counter >= wait_one) {
			sema = "1";
			counter = 0;
		}
	break;
	case "1": 
		if(temp1){
			if(alarm[0] <= 0) alarm[0] = 1;
			sema = "2";
			temp1 = false;
		}
	break;
	case "2":
		counter++;
		if(counter >= wait_two) {
			sema = "3";
			counter = 0;
		}
	break;
	case "3":
		if(!instance_exists(rem_textevent)) 
			sema = "4";
	break;
	case "4":
		//Debug(obj_timelines_manager_h1, "dialogue ended, now we go to scripts. sema = ");
		if(temp2) {
			//scr_create_cutscene(scenario_two);
			//Debug(obj_timeline_manager_r1, "Sema = 4");
			// change this in the scripts of scenario_two sema = "5";
			temp2 = false;
		}
	break;
	case "5": 
		//scr_create_cutscene(t_scene_info);
		//Debug(obj_timelines_manager_h1, "scripts ended");
		sema = "6";
	break;
	case "6":
		if(temp4){
			var inst = instance_create_layer(0, 0, "Objects", obj_fade);
			with(inst){
				_speed = 4;
				color = c_black;
				//alpha = 1.1;
			}
			temp4 = false;
			sema = "7";
		}
	break;
	case "7": // enters another room here
		if(temp3) {
			scr_create_cutscene(scenario_three);
			// change this in the scripts of scenario_two sema = "..." (whichever state is next);
			temp3 = false;
		}
	break;
	default:
		//Debug(obj_timelines_manager_h1, "Default reached");
	break;
}