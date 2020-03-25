switch(state){
	#region Decide State
	case "decide":
		//scr_set_state_sprite(spr_enemySS81, 0, 0);
		if(!timeline_running) timeline_running = true;
		
		direction_x = 0;
		direction_y = 0;
		
		#region State Transition
			if(collision_circle(x, y, chase_range, obj_player, false, false)) state = "chase";
		#endregion
	break;#endregion
	#region Move State
	case "move":
		// only enter this state if the timeline is running so that we have a default gateway
		// back to the DECIDE state.
		if(timeline_running){
			//scr_set_state_sprite(spr_enemySS81, 1, 0);
			scr_move_collide_tileCollision(direction_x, direction_y);
			image_xscale = sign(direction_x);
		
			#region State Transitions
				if(collision_circle(x, y, chase_range, obj_player, false, false)) state = "chase";
			#endregion
		}
	break;#endregion
	#region Chase State
	case "chase":
		#region Precausions
			// Never be interrupted by tl_wander decisions while chasing the target
			if(timeline_running) timeline_running = false;
		#endregion
		#region Image
			//scr_set_state_sprite(spr_enemySS81, 0, 0);
		#endregion
		#region State Transitions
			//scr_set_state_sprite(spr_enemySS81, 1, 0);
			if(counter >= room_speed - irandom(5)){
				scr_get_path_to_player(); // and stop sprite overlapping
				counter = 0;
			}
			counter ++;
			
			// exit back to the decide state 
			if(!collision_circle(x, y, chase_range, obj_player, false, false)) state = "decide";
		#endregion
	break;#endregion
	#region Chat State
	case "chat":
		#region Precausions
			// Never be interrupted by tl_wander decisions while chasing the target
			if(timeline_running) timeline_running = false;
		#endregion
		
		//scr_set_state_sprite(spr_enemySS81, 0, 0);
		
		
		// Chatting mechanics here!!
		
		#region State Transitions
			// exit back to the chase state
			if(!collision_circle(x, y, chat_range, obj_player, false, false)) state = "chase";
		#endregion
	break;#endregion
}