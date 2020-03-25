switch(state){
	#region Move State
	case "move":
		if(input.right) {
			scr_move_collide_limbo(global.run_speed_limbo, 0);
			image_xscale = 1;
			sprite_index = spr_skeleton_run;
			image_speed = 0.6;
		}
		if(global.input.left) {
			scr_move_collide_limbo(-global.run_speed_limbo, 0);
			image_xscale = -1;
			sprite_index = spr_skeleton_run;
			image_speed = 0.6;
		}

		// Idle
		if (!global.input.right && !global.input.left){
			sprite_index = spr_skeleton_idle;
			image_speed = 0.4;
		} 
		// Walking: play sounds: footsteps
		else if(scr_animation_hit_frame(2) || scr_animation_hit_frame(5))
			audio_play_sound(snd_footstep, 50, false);
		
		if (global.input.right && global.input.left){
			sprite_index = spr_skeleton_idle;
		}
		
		if (global.input.roll) { 
			state = "roll";
		}
		
		if(global.input.attack){
			state = "attack one";
		}
	break;
	#endregion
	#region Roll State
	case "roll":
		scr_set_state_sprite(spr_skeleton_roll, 0.7, 0);
		// "Animation End" Event switches state to "move"
		
		if (image_xscale == 1){
			scr_move_collide_limbo(global.roll_speed_limbo, 0);
		}
		if (image_xscale == -1) {
			scr_move_collide_limbo(-global.roll_speed_limbo, 0);
		}
		if(scr_animation_end()) state = "move";
	break;
	#endregion
	#region Attack One State
	case "attack one":
		scr_set_state_sprite(spr_skeleton_attack_one, 0.6, 0);
		
		if(scr_animation_hit_frame(0)) {
			scr_create_hitbox(x, y, id, spr_skeleton_attack_one_damage, 3, 4, 5, image_xscale);
			// Play swipe audio
			audio_play_sound(snd_swipe, 75, false);
		}
		
		if(global.input.attack && scr_animation_hit_frame_range(2, 4)){
			state = "attack two";
		}
		if(scr_animation_end()) state = "move";
		
		//Send signal that first strike is executed
		with(obj_hitbox_limbo) first_strike = true;
	break;
	#endregion
	#region Attack Two State
	case "attack two":
		scr_set_state_sprite(spr_skeleton_attack_two, 0.6, 0);
		
		if(scr_animation_hit_frame(1)) {
			scr_create_hitbox(x, y, id, spr_skeleton_attack_two_damage, 3, 4, 6, image_xscale);
			// Play swipe audio
			audio_play_sound(snd_swipe, 75, false);
		}
		
		if(global.input.attack && scr_animation_hit_frame_range(2, 4)){
			state = "attack three";
		}
		if(scr_animation_end()) state = "move";
		
		//Send signal that second strike is executed
		with(obj_hitbox_limbo) second_strike = true;
	break;
	#endregion
	#region Attack Three State
	case "attack three":
		scr_set_state_sprite(spr_skeleton_attack_three, 0.6, 0);
		
		if(scr_animation_hit_frame(2)) {
			scr_create_hitbox(x, y, id, spr_skeleton_attack_three_damage, 5, 4, 10, image_xscale);
			// Play swipe audio
			audio_play_sound(snd_swipe, 75, false);
		}
		
		if(scr_animation_end()) state = "move";
		
		//Send signal that third strike is executed
		with(obj_hitbox_limbo) third_strike = true;
	break;
	#endregion
	#region Knockback State
	case "knockback":
		scr_knockback_state(spr_skeleton_hitstun, "move");
	break;
	#endregion
	#region Default State
	default:
		show_debug_message("State " + state + "does not exist");
		state = "move";
	break;
	#endregion
}