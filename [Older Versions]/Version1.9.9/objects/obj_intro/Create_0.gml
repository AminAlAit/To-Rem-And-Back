x_pos		= room_width;

alpha		= 1;
fadeout		= 0;

str			= "";
print		= "";

letter		= 0;
string_next	= 0;

holdspace	= 0;
strings[8] = "";

//// Recieve from initialization script. these are default values
// Obj_Cam_Following declaration
following_x   = 0;
following_y   = 0;
direction_x   = 0;
direction_y   = 0;
// letter typing speed
letter_speed  = 0;
// wait before going to next text
wait		  = 0;
multiply_wait = 0;	// Time calibration
// black bars
black_bars	  = true;
black_bars_h  = 0;


// Create the target object to follow
following_inst = instance_create_layer(following_x, following_y, "Instances", obj_cam_following);