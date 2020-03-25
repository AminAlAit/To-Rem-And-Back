//// you must specify the obj target that the trig box should lookout for
//// and run scripts after

t_scene_info = -1;
// Override incase we want to destroy this instance
destroy_self = false;
// Override incase we want another instance to be detected
target		 = scr_player_detector("obj_trig");