if(!instance_exists(obj_player_limbo)) instance_destroy();

var cam_x = camera_get_view_x(view_camera[0]);
var player_pos = cam_x + global.player_pos_to_cam_x;


layer_x("CloseGravesBackground", player_pos / 2.5);
layer_x("FarGravesBackground", player_pos / 1.8);
layer_x("CloudsBackground", player_pos / 1.2);