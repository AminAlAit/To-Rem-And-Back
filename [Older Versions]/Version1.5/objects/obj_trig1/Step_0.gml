if(instance_exists(obj_cutscene_manager)) exit;
if(place_meeting(x, y, target))
	scr_create_cutscene(t_scene_info);