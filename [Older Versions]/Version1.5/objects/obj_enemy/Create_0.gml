x_speed_		 = 0;
y_speed_		 = 0;

x_speed_fraction = 0;
y_speed_fraction = 0;

max_speed_		= 2.5;
acceleration_	= 0.5;

// Show Grid and path
stats = true;

// Enemy's sprite origin is shifted 10 pixels from "Middle Center"
shift_y = 10;
shift_x = 1;

state = "decide";
direction_x = 0;
direction_y = 0;

chase_range   = 96;
chat_range	  = 32;
x_chase_speed = max_speed_;
y_chase_speed = max_speed_;

// Backbone Timer
timeline_index	  = tl_wander;
timeline_position = 0;
timeline_running  = true;
timeline_loop	  = true;

//// Pathfinding
path = path_add();
// path refresh alarm
//alarm[0] = room_speed;

//// get path to player
target_x = ((obj_player.x div CELL_WIDTH)  * CELL_WIDTH)  + (CELL_WIDTH  / 2);
target_y = ((obj_player.y div CELL_HEIGHT) * CELL_HEIGHT) + (CELL_HEIGHT / 2);

counter = 0;