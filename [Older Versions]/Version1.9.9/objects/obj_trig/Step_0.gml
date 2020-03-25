if(instance_exists(obj_cutscene_manager)) exit;
if(place_meeting(x, y, target)){
	//Debug(obj_trig, "Step: reached the trigger box");
	scr_create_cutscene(t_scene_info);
	if(destroy_self) instance_destroy(id);
}