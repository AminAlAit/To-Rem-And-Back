switch(state){
	case "fading":
		alpha = alpha + (fade * 0.05) * (1/_speed);

		if(alpha <= 0){ // End of Fade
			if(fade == -1){
				instance_destroy();	
			}
		}
		else if(alpha >= 1){ // Mid Fade
			fade = -1;
			// do some action here
		}

		draw_sprite_ext(spr_pixel, 0, 0, 0, gui_width, gui_height, 0, color, alpha);
 
		// House keeping
		draw_set_alpha(1);
	break;
	case "pause_black":
		while(pause_length > 0){
			draw_sprite_ext(spr_pixel, 0, 0, 0, gui_width, gui_height, 0, color, 1);
			pause_length --;
		}
		if(pause_length <= 0) state = "fading";
	break;	
}