///@desc create_cutscene
///@arg scene_info

var inst	= instance_create_layer(0, 0, "Cutscenes_Trigger_Boxes", obj_cutscene_manager);
var sc_info = argument0;
with(inst){
	scene_info = sc_info;
	event_perform(ev_other, ev_user0);
}