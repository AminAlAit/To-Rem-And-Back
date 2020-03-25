t_scene_info = [

	//[scr_cutscene_move_character, obj_player_limbo, 712, 319, false, 1],	// Get off the trigger box
	[scr_cutscene_play_sound, snd_teleport, 10, false],						// Sounds upon departure
	[scr_cutscene_instance_create, 856, 319, "Instances", obj_experience],	// Effects upon departure
	[scr_cutscene_instance_destroy_nearest, x + 8, y + 16, obj_player_limbo],							// Remove player from trig1
	
	[scr_cutscene_wait, 0.5],												// Teleportation Pause
	
	[scr_cutscene_play_sound, snd_teleport, 10, false],						// Sounds upon arrival
	[scr_cutscene_instance_create, 712, 319,"Instances", obj_experience],	// Effects upon arrival
	[scr_cutscene_instance_create, 712, 319,"Instances", obj_player_limbo],	// Create Player on trig2
	[scr_cutscene_move_character, obj_player_limbo, -32, 0, true, 2],		// Get off trig2
	
];