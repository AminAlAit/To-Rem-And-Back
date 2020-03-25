///@desc cutscene_instance_create
///@arg x
///@arg y
///@arg layer_id
///@arg obj

var _x		 = argument0;
var _y		 = argument1;
var layer_id = argument2;
var obj		 = argument3;

var inst = instance_create_layer(_x, _y, layer_id, obj);

scr_cutscene_end_action();

return inst;