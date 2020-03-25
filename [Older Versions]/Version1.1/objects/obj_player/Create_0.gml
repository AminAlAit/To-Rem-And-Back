x_speed_		 = 0;
y_speed_		 = 0;

x_speed_fraction = 0;
y_speed_fraction = 0;

max_speed_		= 2;
acceleration_	= 0.5;

// Player's sprite origin is shifted 10 pixels from "Middle Center"
shift_y = 10;
shift_x = 1;

// Dependencies
input = instance_create_layer( 0, 0, "Instances",obj_input);
cam	  = instance_create_layer( x, y, "Instances", obj_camera);