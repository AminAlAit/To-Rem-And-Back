///@desc Create Level Elements

var distance_enemy_from_player = 100;
//var odds_of_enemy_spawn		   = 80;
//var odds_of_item_spawn		   = 80;
//var diagonal				   = 1280;

var random_choices_count = 5;

var all_choices = array_create(400, 0);
var i = 0;
//var j = 0;

with(obj_levelMaker){
	other.height_ = height_;
	other.width_  = width_;
	other.grid_	  = grid_;
}
// Draw the level using the grid
for(var _y =1; _y < height_ -1; _y++){
	for( var _x = 1; _x < width_ -1; _x++){
		if(grid_[# _x, _y] == FLOOR){
			// Fetching Controller Coordinates to place objects
			var object_x = _x * CELL_WIDTH  + CELL_WIDTH  / 2;
			var object_y = _y * CELL_HEIGHT + CELL_HEIGHT / 2;
			
			// saving all locations to all_choices array so that we pick random spots from this array
			// this way we ensure a specific number of objects is spawned
			if (point_distance(object_x, object_y, obj_player_native.x, obj_player_native.y) > distance_enemy_from_player){
				all_choices[i, 0] = object_x; all_choices[i, 1] = object_y; i++;
			}
		}
	}
}

var some_choices = array_create(i, 0);
for(_x = 0; _x < i; _x++){
	if(all_choices[_x, 0] != 0 && all_choices[_x, 1] != 0){
		some_choices[_x, 0] = all_choices[_x, 0]; 
		some_choices[_x, 1] = all_choices[_x, 1];
	}
}
random_choices_array = some_choices;

some_choices = scr_array_shuffle(some_choices);

//random_choices_array = all_choices;

////
var random_choices = array_create(5, 0);
// First Entry
var rand_1 = 0;
do{
	rand_1				 = irandom_range(0, i-1);
	random_choices[0, 0] = some_choices[rand_1, 0];
	random_choices[0, 1] = some_choices[rand_1, 1];
}
until(random_choices[0, 0] != 0 && random_choices[0, 1] != 0)
// Second Entry
var rand_2 = 0;
do{
	rand_2				 = irandom_range(0, i-1);
	random_choices[1, 0] = some_choices[rand_2, 0];
	random_choices[1, 1] = some_choices[rand_2, 1];
}
until(random_choices[1, 0] != random_choices[0, 0] && random_choices[1, 0] != 0 &&
	  random_choices[1, 1] != random_choices[0, 1] && random_choices[1, 1] != 0)
// Third Entry
var rand_3 = 0;
do{
	rand_3				 = irandom_range(0, i-1);
	random_choices[2, 0] = some_choices[rand_3, 0];
	random_choices[2, 1] = some_choices[rand_3, 1];
}
until(random_choices[2, 0] != random_choices[1, 0] && random_choices[2, 0] != 0 &&
	  random_choices[2, 1] != random_choices[1, 1] && random_choices[2, 1] != 0 &&
	  random_choices[2, 0] != random_choices[0, 0] && random_choices[2, 0] != 0 &&
	  random_choices[2, 1] != random_choices[0, 1] && random_choices[2, 1] != 0)
// Fourth Entry
var rand_4 = 0;
do{
	rand_4				 = irandom_range(0, i-1);
	random_choices[3, 0] = some_choices[rand_4, 0];
	random_choices[3, 1] = some_choices[rand_4, 1];
}
until(random_choices[3, 0] != random_choices[2, 0] && random_choices[3, 0] != 0 &&
	  random_choices[3, 1] != random_choices[2, 1] && random_choices[3, 1] != 0 &&
	  random_choices[3, 0] != random_choices[1, 0] && random_choices[3, 0] != 0 &&
	  random_choices[3, 1] != random_choices[1, 1] && random_choices[3, 1] != 0 &&
	  random_choices[3, 0] != random_choices[0, 0] && random_choices[3, 0] != 0 &&
	  random_choices[3, 1] != random_choices[0, 1] && random_choices[3, 1] != 0)
// Fifth Entry
var rand_5 = 0;
do{
	rand_5				 = irandom_range(0, i-1);
	random_choices[4, 0] = some_choices[rand_5, 0];
	random_choices[4, 1] = some_choices[rand_5, 1];
}
until(random_choices[4, 0] != random_choices[3, 0] && random_choices[4, 0] != 0 &&
	  random_choices[4, 1] != random_choices[3, 1] && random_choices[4, 1] != 0 &&
	  random_choices[3, 0] != random_choices[2, 0] && random_choices[3, 0] != 0 &&
	  random_choices[3, 1] != random_choices[2, 1] && random_choices[3, 1] != 0 &&
	  random_choices[3, 0] != random_choices[1, 0] && random_choices[3, 0] != 0 &&
	  random_choices[3, 1] != random_choices[1, 1] && random_choices[3, 1] != 0 &&
	  random_choices[3, 0] != random_choices[0, 0] && random_choices[3, 0] != 0 &&
	  random_choices[3, 1] != random_choices[0, 1] && random_choices[3, 1] != 0)

//random_choices_array = some_choices;
random_choices_array = random_choices;

var pos_x = 0;
//spawn enemies
repeat(enemies){
	pos_x = irandom(random_choices_count) -1;
	if(pos_x == -1) pos_x = 0;
	var enemy_x = random_choices[pos_x, 0];
	var enemy_y = random_choices[pos_x, 1];
	
	instance_create_layer(enemy_x, enemy_y, "Player_AI", obj_enemy);
	// GUI
	with (obj_levelMaker) enemies ++;
}
repeat(collectables){
	pos_x = irandom(random_choices_count) -1;
	if(pos_x == -1) pos_x = 0;
	var collect_x = random_choices[pos_x, 0];
	var collect_y = random_choices[pos_x, 1];
	
	instance_create_layer(collect_x, collect_y, "Objects", obj_food);
				
	// GUI
	with (obj_levelMaker) plates ++;
}



//if(irandom(odds_of_enemy_spawn) == odds_of_enemy_spawn)
//	instance_create_layer(object_x, object_y, "Player_AI", obj_enemy);
//	// GUI
//	with (obj_levelMaker) enemies ++;
