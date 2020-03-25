///desc cutscene_change_xscale
///@arg obj_id
///@arg image_xscale*

var args;
var i = 0; repeat(argument_count){
	args[i] = argument[i];
	i++;
}

if(argument_count > 1) with(args[0]) image_xscale = args[1];
	else with(args[0]) image_xscale = -image_xscale;
	

scr_cutscene_end_action();