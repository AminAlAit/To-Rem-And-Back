///@desc cutscene_instance_destroy_nearest
///@arg x
///@arg y
///@arg obj

var _x = argument0;
var _y = argument1;
var obj = argument2;

var inst = instance_nearest(_x, _y, obj);

scr_cutscene_instance_destroy(inst);