switch(room){
	#region REM
	case room_rem:
		// Draw the surface
		if (!surface_exists(surf)){
			surf = surface_create(room_width, room_height);
		} else {
			if(view_current == 0){
				draw_surface(surf, 0, 0);
			}
		}
	break;#endregion
	#region LIMBO
	case room_limbo:
		
	break;#endregion
	#region HOSPITAL
	case room_hospital:
		
	break;#endregion
	#region	Default
	default:
		show_message("Error: " + string(object_get_name(object_index)) + " Room does not exist | Create Event");
	break;#endregion
}


