// This script is dedicated for the AI REM characters only [Wanderers]
///@arg X_Direction
///@arg Y_Direction

var x_dir = argument0;
var y_dir = argument1;

x_speed_ += x_dir * acceleration_;
y_speed_ += y_dir * acceleration_;

var _speed	   = point_distance(0, 0, x_speed_, y_speed_);
var _direction = point_direction(0, 0, x_speed_, y_speed_);

#region keep bounding to speed limit
if (_speed > max_speed_) {
	x_speed_ = lengthdir_x(max_speed_, _direction);
	y_speed_ = lengthdir_y(max_speed_, _direction);
}
#endregion
#region gradually decrease speed to 0 when there is no input
if (x_dir == 0) x_speed_ = lerp(x_speed_, 0, .25);
if (y_dir == 0) y_speed_ = lerp(y_speed_, 0, .25);
#endregion
#region Idle
if (x_dir == 0 && y_dir == 0) {
	image_speed = 0;
	image_index = 0;
} else image_speed = 0.7;	
#endregion
#region Adjsut Image direction
if (x_speed_ < 0) image_xscale = -1 else image_xscale = 1;	
#endregion

//// Tile Collision & Movement Section
#region reapply the fractions 
x_speed_ += x_speed_fraction; 
y_speed_ += y_speed_fraction; 
#endregion
#region store and remove the fractions 
x_speed_fraction = x_speed_ - (floor(abs(x_speed_)) * sign(x_speed_)); 
x_speed_		-= x_speed_fraction; 
y_speed_fraction = y_speed_ - (floor(abs(y_speed_)) * sign(y_speed_)); 
y_speed_		-= y_speed_fraction;
#endregion
#region Horizontal Movement & Collision
x += x_speed_;

// Right collisions
if (x_speed_ > 0) {
	if (grid_place_meeting(self, obj_levelMaker.grid_)) {
		x  = bbox_right&~(CELL_WIDTH-1);
		x -= bbox_right-x;
		x_speed_ = 0;
		state = "decide";
	}
} else if (x_speed_ < 0) {
	// Left collisions
	if (grid_place_meeting(self, obj_levelMaker.grid_)) {
		x  = bbox_left &~ (CELL_WIDTH-1);
		x += CELL_WIDTH + x - bbox_left;
		x_speed_ = 0;
		state = "decide";
	}
}
#endregion
#region Vertical Movement & Collision
y += y_speed_;

// Vertical collisions
if (y_speed_ > 0) {
	// Bottom collisions
	if (grid_place_meeting(self, obj_levelMaker.grid_)) {
		y = bbox_bottom &~ (CELL_HEIGHT-1);
		y -= bbox_bottom - y;
		y_speed_ = 0;
		state = "decide";
	}
} else if (y_speed_ < 0) {
	// Top collisions
	if (grid_place_meeting(self, obj_levelMaker.grid_)) {
		y = bbox_top&~(CELL_HEIGHT-1);
		y += CELL_HEIGHT+y-bbox_top;
		y_speed_ = 0;
		state = "decide";
	}
}
#endregion