// Temporary code
switch(room){
	#region Limbo
	case 0:
		following = obj_player_limbo;
	break;
	#endregion
	#region Rem
	case 1:
		following = obj_player;
	break;
	#endregion
	#region Undefined Room
	default:
		show_message("Error: [Obj_cam] Room does not exist");
	break;
	#endregion
}


enum cammode {
	follow_object,
	follow_mouse_drag,
	follow_mouse_border,
	follow_mouse_peek,
	move_to_target,
	move_to_follow_object
}

mode = cammode.follow_object;
boundless = false;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

global.player_pos_to_cam_x = view_w/2;
global.player_pos_to_cam_y = view_h/2;

// SHAKE
screenshake = 0;