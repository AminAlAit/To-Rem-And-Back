/// @description Float

if (flagPickedUp) {
	image_xscale = 0.9 * image_xscale;
	image_yscale = 0.9 * image_yscale;
	direction = point_direction(x, y, obj_player_native.x, obj_player_native.y);
	speed = 2;
}
else
	y = ystart + sin(get_timer()/500000)*5;
