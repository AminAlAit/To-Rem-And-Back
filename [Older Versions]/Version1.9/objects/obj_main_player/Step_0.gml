switch(state){
	#region Move State
	case "move":
		if(input.right) {
			scr_move_collide_limbo(global.run_speed_main, 0);
			image_xscale = 1;
			sprite_index = spr_main_player_walk;
			image_speed  = 0.6;
		}
		if(input.left) {
			scr_move_collide_limbo(-global.run_speed_main, 0);
			image_xscale = -1;
			sprite_index = spr_main_player_walk;
			image_speed	 = 0.6;
		}

		// Idle
		if (!input.right && !input.left){
			sprite_index = spr_main_player_idle;
			image_speed  = 0.4;
		} 
		// Walking: play sounds: footsteps
		else if(scr_animation_hit_frame(2) || scr_animation_hit_frame(4))
			audio_play_sound(snd_footstep, 5, false);
		
		// if both buttons are pressed
		if (input.right && input.left){
			sprite_index = spr_main_player_idle;
		}
	break;#endregion
	#region Default State
	default:
		show_debug_message("State " + state + "does not exist");
		show_message("Error: " + string(object_get_name(object_index)) + " Room does not exist | Create Event");
		state = "move";
	break;
	#endregion
}