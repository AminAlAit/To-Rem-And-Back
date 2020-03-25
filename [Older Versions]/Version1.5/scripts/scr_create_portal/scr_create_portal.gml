///@desc Create_Portal
///@arg Cell_X
///@arg Cell_Y

var cellx = argument0;
var celly = argument1;

object_x = cellx * CELL_WIDTH  + CELL_WIDTH  / 2;
object_y = celly * CELL_WIDTH  + CELL_WIDTH  / 2;

show_debug_message("found suitable distance");

var inst_trig_once = instance_create_layer(object_x, object_y, "Cutscenes_Trigger_Boxes", obj_trig_once);

show_debug_message("created a trigger box");	

with (inst_trig_once) { // Create only one obj_trig_once
	// visible = false;
	t_scene_info = [
		[scr_cutscene_player_input_switch, true],
		[scr_cutscene_play_sound, snd_teleport, 10, false],
							
		[scr_cutscene_wait, 5],
							
		[scr_cutscene_player_input_switch, false],
		[scr_cutscene_play_sound, snd_teleport, 10, false],
							
		//[scr_cutscene_cinematic() ],
	];
							
	show_debug_message("setup the scripts for the cutscene");
}
var inst_portal = instance_create_layer(object_x, object_y, "Instances", obj_portal_door);
with(inst_portal) image_speed = 1;