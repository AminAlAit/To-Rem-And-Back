///@desc change cam moode
///@arg cam_mode
///@arg target_object

var cam_mode = argument0;
var target = argument1;

with(obj_cam){
	mode = cam_mode;
	following = target;
}