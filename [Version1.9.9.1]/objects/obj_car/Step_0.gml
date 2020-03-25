x += x_speed;

// destroy instance after it has gotten out of the room
switch(direction_){
	case "right": 
		if(x > 1450) { 
			with(obj_car_spawner) cars_total --;
			instance_destroy();
		}
	break;
	case  "left": 
		if(x < -100) { 
			with(obj_car_spawner) cars_total --;
			instance_destroy(); 
		}
	break;
}