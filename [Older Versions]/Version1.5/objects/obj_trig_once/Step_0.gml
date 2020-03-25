if(instance_exists(obj_cutscene_manager)) exit;
if(place_meeting(x, y, target)){
	show_debug_message("Collision with Player Successful!");
	scr_create_cutscene(t_scene_info);
	show_debug_message("must destroy instance now");
	instance_destroy(id);
}