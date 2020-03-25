if(!instance_exists(obj_player_limbo)) exit;

var cam_x = camera_get_view_x(view_camera[0]);
var player_pos = cam_x + global.player_pos_to_cam_x;


layer_x("CloseGravesBackground", player_pos / 3.2); // close city
layer_x("FarGravesBackground",	 player_pos / 2.5);	// far city
layer_x("CloudsBackground",		 player_pos / 1.1); // very far city