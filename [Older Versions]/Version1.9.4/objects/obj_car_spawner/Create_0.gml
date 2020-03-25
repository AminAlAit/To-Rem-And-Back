second = room_speed;

r_x_launch = 1400;
r_y_launch = 336;
l_x_launch = -100;
l_y_launch = 352;
y_average  = 344;

target	   = scr_player_detector("obj_car_spawner");
cars_total = 0;
car_speed  = 4;

cars = [
	spr_bluecar, 
	spr_bubblecar, 
	spr_sportscar, 
	spr_casualcar, 
	spr_classiccar, 
	spr_estatecar, 
	spr_sportscar1, 
	spr_turbo, 
	spr_van, 
	spr_vintage
];