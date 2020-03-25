//var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
//var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);

switch(state){
	#region Decide State
	case "decide":
		counter ++;
		image_index = 0;
		image_speed = 0;
		
		//// Transition Triggers
		/// Transition to move state
		// make a decision every 3 seconds
		if(counter >= room_speed * 3){
			var change = choose(0, 1);
			switch(change){
				case 0: state = "move";
				case 1: counter = 1; break;
			}
		}
		/// Transition to chase state
		if(collision_circle(x, y, chase_range, obj_player, false, false)){
			state = "chase";
		}
	break;
	#endregion
	#region Move Up State
	case "move":
		scr_move_collide_tileCollision(x_dir, y_dir);
		
		// within the chase range?
		var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
		if(distance_to_player <= chase_range){
			// stop the timeline;
			timeline_running = false;
			state = "chase";
		}
	break;
	#endregion
	#region Chase State
	case "chase":
		// stop the timeline;
		timeline_running = false;
		
		var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
		scr_chase_state(obj_player, chat_range, "chat");
		
		// exit back to the move state
		if(distance_to_player > chase_range) state = "decide";
	break;
	#endregion
	#region Chat State
	case "chat":
		// stop the timeline;
		timeline_running = false;
		
		var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);
		
		// exit back to the move state
		if(distance_to_player > chat_range) state = "decide";
		
		// Chatting mechanics here!!
		
		
	break;
	#endregion
}