if(instance_exists(obj_player_limbo)){
	distance_to_player = point_distance(x, y, obj_player_limbo.x, obj_player_limbo.y);
}

switch(state){
	#region Chase State
	case "chase":
		scr_set_state_sprite(spr_knight_walk, 0.4, 0);
		
		// Find player
		if(!instance_exists(obj_player_limbo)) break;
		
		image_xscale = sign(obj_player_limbo.x - x);
		if (image_xscale == 0) image_xscale = 1;
		
		var facing_direction = image_xscale;
		if(distance_to_player <= chase_range){
			state = "attack";
		}
		else {
			scr_move_collide_limbo(facing_direction * chase_speed, 0);
		}
		
	break;
	#endregion
	#region Attack State
	case "attack":
		scr_set_state_sprite(spr_knight_attack, 0.6, 0);
		
		if (scr_animation_hit_frame(4)) 
			scr_create_hitbox(x, y, id, spr_skeleton_attack_one_damage, 4, 4, 10, image_xscale);
		
		//if(distance_to_player > chase_range) state = "chase";
		if(scr_animation_end()) state = "chase";
	break;
	#endregion
	#region Knockback State
	case "knockback":
		scr_knockback_state(spr_knight_hitstun, "chase");
	break;
	#endregion
	#region Default State
	default:
		show_debug_message("State " + state + "does not exist");
		state = "chase";
	break;
	#endregion
}