opacity = 0.5;

// Create surface with size of the room
surf = surface_create(room_width, room_height);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

// Reset to application surface
surface_reset_target();

//switch(room){
//	#region REM
//	case room_rem:
		
//	break;#endregion
//	#region LIMBO
//	case room_limbo:
		
//	break;#endregion
//	#region HOSPITAL
//	case room_hospital:
		
//	break;#endregion
//	#region	Default
//	default:
//		show_message("Error: " + string(object_get_name(object_index)) + " Room does not exist | Create Event");
//	break;#endregion
//}