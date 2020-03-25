///@desc Fade in. Independent from room transition.
///@arg time_in_sec
///@arg debug_obj
///@arg debug_str

var full_time  = argument0*room_speed;
var debug_obj  = argument1;
var debug_str  = argument2;

var time	   = full_time;
var _alpha     = (full_time - time) / full_time;

var gui_width  = display_get_gui_width();
var gui_height = display_get_gui_height();

while(time >= 0){
	//_alpha += 0.1;
	if (_alpha >= 1) {
		// execute something else here
		//Debug(debug_obj, debug_str);
	}
	
	_alpha = (full_time - time) / full_time;
	
	draw_set_alpha(_alpha);
	draw_rectangle_color(0, 0, gui_width, gui_height, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	
	time --;
}