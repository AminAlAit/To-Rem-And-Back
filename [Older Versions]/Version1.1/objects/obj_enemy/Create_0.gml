x_speed_		 = 0;
y_speed_		 = 0;

x_speed_fraction = 0;
y_speed_fraction = 0;

max_speed_		= 1.5;
acceleration_	= 0.5;

//instance_create_layer(x, y, "Instances", obj_camera);

// Enemy's sprite origin is shifted 10 pixels from "Middle Center"
shift_y = 10;
shift_x = 1;

state = "decide";

chase_range  = 100;
x_chase_speed = max_speed_;
y_chase_speed = max_speed_;
chat_range   = 30;

// initial direction
x_dir = random_range(-1, 1);
y_dir = irandom_range(-1, 1);

// Idle/Decide state
counter = 0;
