///@desc allow or disallow user input

with(obj_input){
	if (state == "available") state = "unavailable";
	else state = "available";	
}

scr_cutscene_end_action();