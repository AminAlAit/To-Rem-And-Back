switch(cam_switch){
	#region Close Cam
	case 0:
		if(!instance_exists(target)) exit;

		x = lerp(x, target.x, 0.1);
		y = lerp(y, target.y, 0.1);

		x = clamp(x, width/2  + CELL_WIDTH,  room_width  - width/2  - CELL_WIDTH);
		y = clamp(y, height/2 + CELL_HEIGHT, room_height - height/2 - CELL_HEIGHT);

		camera_set_view_pos(view_camera[0], x-width/2, y-height/2);
	break;#endregion
	#region All Map Cam
	case 1:
		//camera_set_view_pos(view_camera[1], 0, 0);
	break;#endregion
}
