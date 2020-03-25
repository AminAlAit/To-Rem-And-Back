//// you must specify the obj target that the trig box should lookout for
//// and run scripts after

t_scene_info = -1;
// Override incase we want another instance to be detected
target		 = scr_player_detector("obj_trig_once");;


//switch(room){
//	case room_rem_first:	 target = obj_player_native;		break;
//	case room_hospital:
//	case room_limbo: target = obj_main_player; break;
//	default: show_debug_message("Error: [Obj_trig_once] Room does not exist"); break;
//}