// Left to right
var inst = instance_create_layer(l_x_launch, l_y_launch - 5, "Close_Cars", obj_car);
cars_total ++;
with(inst){
	var multi = other.multiplier;
	x_speed		 = other.car_speed;
	image_xscale = -1 * multi;
	image_yscale = 1 * multi;
	image_blend	 = c_ltgray;
	direction_	 = "right";
	sprite_index = other.cars[irandom(9)];
}