following = scr_player_detector(string(object_get_name(object_index)));

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

global.view_w = camera_get_view_width(view_camera[0]);
global.view_h = camera_get_view_height(view_camera[0]);

global.player_pos_to_cam_x = global.view_w/2;
global.player_pos_to_cam_y = global.view_h/2;

// SHAKE
screenshake = 0;