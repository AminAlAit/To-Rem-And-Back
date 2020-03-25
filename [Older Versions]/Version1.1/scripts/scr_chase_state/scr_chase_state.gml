///@arg target(player)
///@arg range
///@arg next_state

var player	   = argument0;
var range	   = argument1;
var next_state = argument2;


// must find player
if(!instance_exists(player)) exit;

// face towards the player
image_xscale = sign(player.x - x);
if (image_xscale == 0) image_xscale = 1;

// within "next state" range?
var distance_to_player = point_distance(x, y, player.x, player.y);
if(distance_to_player <= range) state = next_state;

// Keep moving
else {
	var facing_direction = image_xscale;
	scr_move_collide_limbo(facing_direction * x_chase_speed, y_chase_speed);
}