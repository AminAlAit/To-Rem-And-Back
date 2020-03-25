// right to left
var inst = instance_create_layer(r_x_launch, r_y_launch, "Far_Cars", obj_car);
cars_total ++;
with(inst){
	var multi = other.multiplier;
	x_speed		 = -other.car_speed;
	image_xscale = 1 * multi;
	image_yscale = 1 * multi;
	image_blend  = c_ltgray;
	direction_	 = "left";
	sprite_index = other.cars[irandom(9)];
}