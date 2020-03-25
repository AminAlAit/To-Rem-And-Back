///@desc Objects decide which obj is the player based on the room this object is in
///@arg current_object_name(string)
var obj_name = argument0;
var target		= 0;

switch(room){
	#region Limbo
	case room_limbo:
		//target = obj_player_limbo;
		target = obj_main_player;
	break;#endregion
	#region Rem
	case room_rem_first:
	case room_rem_second:
		target = obj_player_native;
	break;#endregion
	#region Intro
	case room_intro:
		target = obj_cam_following;
	break; #endregion
	#region Hospital
	case room_hospital_first:
	case room_hospital_second:
		target = obj_main_player;
	break; #endregion
	#region Dialogue System Demo
	case rm_dialoguesystem_demo:
		target = obj_player;
	break; #endregion
	#region Undefined Room
	default:
		show_message("Error: " + obj_name + ". Room does not exist");
	break;
	#endregion
}

return target;