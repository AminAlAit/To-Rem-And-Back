///@desc cutscene_cinematic_intro
///@arg obj_cam_following_x_pos
///@arg obj_cam_following_y_pos
///@arg obj_cam_following_x_direction
///@arg obj_cam_following_y_direction
///@arg letter_per_frame
///@arg wait_time_after_next_text
///@arg black_bars?
///@arg black_bars_height
///@arg* text_in_strings

var f_x				= argument0;
var f_y				= argument1;
var f_d_x			= argument2;
var f_d_y			= argument3;
var let_per_frame	= argument4;
var wait_time		= argument5;
var wait_multiplyer = 1 / let_per_frame;
var bb				= argument6;
var bb_height		= argument7;
var temp = false;
if(argument_count > 8) {
	temp = true;
	temp_strings[8] = "";
}
while(temp){
	var i = 8;
	var j = 0;
	while(argument_count > i){
		if(i > 15) {
			temp = false;
			break;
		}
		else temp_strings[j] = argument[i];
		i++;j++;
	}
}

var inst = instance_create_layer(0, 0, "Instances", obj_intro);
with(inst){
	following_x   = f_x;
	following_y   = f_y;
	direction_x   = f_d_x;
	direction_y   = f_d_y;
	letter		  = let_per_frame;
	wait		  = wait_time;
	multiply_wait = wait_multiplyer;
	black_bars	  = bb;
	black_bars_h  = bb_height;
	
	for(var k = 0; k < j; k++) strings[k] = temp_strings[k];
}

scr_cutscene_end_action();