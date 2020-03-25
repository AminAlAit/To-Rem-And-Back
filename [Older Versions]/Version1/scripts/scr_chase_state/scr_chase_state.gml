// must find player
if(!instance_exists(obj_player_limbo)) exit;

// face towards the player
image_xscale = sign(obj_player_limbo.x - x);
if (image_xscale == 0) image_xscale = 1;

// within fighting range?
var distance_to_player = point_distance(x, y, obj_player_limbo.x, obj_player_limbo.y);
if(distance_to_player <= chase_range) state = "attack";
// Keep moving
else {
	var facing_direction = image_xscale;
	scr_move_collide_limbo(facing_direction * chase_speed, 0);
}