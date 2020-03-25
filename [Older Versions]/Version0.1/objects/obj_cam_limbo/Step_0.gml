cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

switch(mode){
	#region Follow Object
	case cammode.follow_object:
		if(!instance_exists(following)) 
			break;
		cx = following.x - (global.player_pos_to_cam_x);
		cy = following.y - (global.player_pos_to_cam_y);
	break;
	#endregion
	#region Follow Mouse Drag
	case cammode.follow_mouse_drag:
		
	break;
	#endregion
	#region Follow Mouse Border
	case cammode.follow_mouse_border:
		if(!point_in_rectangle(mouse_x, mouse_y, cx+(view_w*0.1), cy+(view_h*0.1),  cx + (view_w*0.9), cy+(view_h*0.9))){
			cx = lerp(cx, mouse_x - global.player_pos_to_cam_x, 0.01);
			cy = lerp(cy, mouse_y - global.player_pos_to_cam_y, 0.01);
		}
	break;
	#endregion
	#region Follow Mouse Peek
	case cammode.follow_mouse_peek:
		if(instance_exists(obj_player_limbo)){
			cx = lerp(following.x, mouse_x, 0.2) - (global.player_pos_to_cam_x);
			cy = lerp(following.y, mouse_y, 0.2) - (global.player_pos_to_cam_y);
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

if(!boundless){
	cx = clamp(cx, 0, room_width  - view_w);
	cy = clamp(cy, 0, room_height - view_h);
}

camera_set_view_pos(view_camera[0], cx, cy);