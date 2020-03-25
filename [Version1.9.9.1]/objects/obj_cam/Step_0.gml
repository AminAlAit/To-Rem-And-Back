global.cx = camera_get_view_x(view_camera[0]);
global.cy = camera_get_view_y(view_camera[0]);

switch(mode){
	#region Follow Object & Thirds
	case cammode.follow_object:
		if(!instance_exists(following)) break;
		// 2/3 in front, 1/3 in the back
		//var thirds = obj_player_limbo.image_xscale * 32;
		
		// We use lerp for smoothness
		//x = lerp(x, target.x, 0.1);
		//y = lerp(y, target.y, 0.1);
		global.cx = following.x - (global.player_pos_to_cam_x);	// + thirds;
		global.cy = following.y - (global.player_pos_to_cam_y);
	break;
	#endregion
	#region Follow Mouse Drag
	case cammode.follow_mouse_drag:
		
	break;
	#endregion
	#region Follow Mouse Border
	case cammode.follow_mouse_border:
		if(!point_in_rectangle(mouse_x, mouse_y, global.cx+(global.view_w*0.1), global.cy+(global.view_h*0.1),  global.cx + (global.view_w*0.9), global.cy+(global.view_h*0.9))){
			global.cx = lerp(global.cx, mouse_x - global.player_pos_to_cam_x, 0.01);
			global.cy = lerp(global.cy, mouse_y - global.player_pos_to_cam_y, 0.01);
		}
	break;
	#endregion
	#region Follow Mouse Peek
	case cammode.follow_mouse_peek:
		if(instance_exists(obj_player_limbo)){
			global.cx = lerp(following.x, mouse_x, 0.2) - (global.player_pos_to_cam_x);
			global.cy = lerp(following.y, mouse_y, 0.2) - (global.player_pos_to_cam_y);
		}
	break;
	#endregion
	#region Move To Target
	case cammode.move_to_target:
		
	break;
	#endregion
	#region Move To Follow Object
	case cammode.move_to_follow_object:
		
	break;
	#endregion
}

// keeping cam in room bounds
if(!boundless){
	global.cx = clamp(global.cx, 0, room_width  - global.view_w);
	global.cy = clamp(global.cy, 0, room_height - global.view_h);
}

//ScreenShakes
var shakes = random_range(-screenshake, screenshake);
global.cx += shakes;
global.cy += shakes;

camera_set_view_pos(view_camera[0], global.cx, global.cy);