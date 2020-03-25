///@desc fade_in
///@arg time(seconds)

var _full_time	= argument0 * room_speed;

with(obj_game){
	full_time = _full_time;
	fade_in = true;
}

scr_cutscene_end_action();