switch(state){
	case "closed":
		command		 = "open";
		image_index	 = 0;
	
		if(point_in_rectangle(target.x, target.y, x1, y1, x2, y2)){
			if(f_pressed){
				Debug(obj_door, "Door Opened");
				audio_play_sound(snd_door_open, 5, false);
				with(inst_3A94CCB6){
					y -= 100;
				}
				state	  = "open";
				f_pressed = false;
			}
		}
	break;
	case "open":
		command		 = "close";
		image_index	 = 1;
		
		if(point_in_rectangle(target.x, target.y, x1, y1, x2, y2)){
			if(f_pressed){
				Debug(obj_door, "Door Closed");
				audio_play_sound(snd_door_open, 5, false);
				with(inst_3A94CCB6){
					y += 100;
				}
				state	  = "closed";
				f_pressed = false;
			}
		}
		
	break;
	default: 
		Debug(obj_door, "Step | State does not exist");
	break;
}

// Text location according to player
if(target.x < x) text_x *= -1;
else			 text_x *=	1;