///@desc Transition_From_Room_To_Room
///@arg target_room
///@arg Fade_out?
///@arg position_x*
///@arg position_y*
///@arg fade_out_time(seconds)*
///@arg obj_player

var args;
var i = 0; repeat(argument_count){
	args[i] = argument[i];
	i++;
}

if(args[1]){
	var inst = room_instance_add(args[0], args[2], args[3], obj_trig_once);
	with(inst){
		t_scene_info = [
		
			[scr_cutscene_fade_out, args[4]],
			[scr_cutscene_move_character, obj_player_limbo, 32, 0, true, 2],
		
		];
	}
}
scr_cutscene_move_character(obj_player_limbo, 32, 0, true, 2);
room_goto(args[0]);

scr_cutscene_end_action();