t_scene_info = -1;
switch(room){
	case room_rem:	 target = obj_player;		break;
	case room_limbo: target = obj_player_limbo; break;
	default: show_debug_message("Error: [Obj_trig1] Room does not exist"); break;
}