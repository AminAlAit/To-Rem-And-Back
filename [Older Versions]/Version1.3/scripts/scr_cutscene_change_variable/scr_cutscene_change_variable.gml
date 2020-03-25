///@desc cutscene_change_variable
///@arg obj_id
///@arg "var"
///@arg value

var obj_id	 = argument0;
var variable = argument1;
var value	 = argument2;

with(obj_id) variable_instance_set(id, variable, value);

scr_cutscene_end_action();