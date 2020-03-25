randomize();

// Show Stats
stats = true;

// Variables for GUI
cont_changes = 0;
cont_wall2Floor = 0;
enemies = 0;
plates = 0;
cont_last_pos[0] = 0;
cont_last_pos[1] = 0;

// Controller Steps Tracker
steps_count = 0;

taken_spots_x		= [];	// this spot is claimed by another object
taken_spots_y		= [];

global.distance_enemy_from_player = 80;

global.odds_of_enemy_spawn		  = 80;
global.odds_of_item_spawn		  = 80;

shadow_surface_ = noone;

// Get the tile layer map id
var _wall_map_id = layer_tilemap_get_id("WallTiles");

// Set up grid
width_  = room_width  div CELL_WIDTH;
height_ = room_height div CELL_HEIGHT;
grid_   = ds_grid_create(width_, height_);
ds_grid_set_region(grid_, 0, 0, width_, height_, VOID);

// Create the controller
_controller_x			  = width_  div 2;
_controller_y			  = height_ div 2;

// GUI
origin__controller_x	  = _controller_x;
origin__controller_y	  = _controller_y;

var _controller_direction = irandom(3);
global._steps			  = 400;

repeat(global._steps){
	taken_spots_x[global._steps - 1] = 0;
	taken_spots_y[global._steps - 1] = 0;
}

// Player placement
_player_start_x = _controller_x * CELL_WIDTH  + CELL_WIDTH  / 2;
_player_start_y = _controller_y * CELL_HEIGHT + CELL_HEIGHT / 2;
instance_create_layer(_player_start_x, _player_start_y, "Player_AI", obj_player);

// Adding player to the list of objects in the room
taken_spots_counter = 0;
taken_spots_x[taken_spots_counter] = _player_start_x;
taken_spots_y[taken_spots_counter] = _player_start_y;
taken_spots_counter++;

var _direction_change_odds = 1;

repeat(global._steps){
	grid_[# _controller_x, _controller_y] = FLOOR;
	
	// Randomize the direction
	if (irandom(_direction_change_odds) == _direction_change_odds) {
		_controller_direction = irandom(3);
		
		// GUI
		cont_changes ++;
	}
	
	// Move the controller
	var _x_direction = lengthdir_x(1, _controller_direction * 90);
	var _y_direction = lengthdir_y(1, _controller_direction * 90);
	_controller_x	+= _x_direction;
	_controller_y	+= _y_direction;
	
	// Make sure we don't go outside the grid
	if(_controller_x < 2 || _controller_x >= width_ - 2){
		_controller_x += - _x_direction * 2;
	}
	if(_controller_y < 2 || _controller_y >= height_ - 2){
		_controller_y += - _y_direction * 2;
	}
	steps_count ++;
	if(steps_count == 400) {
		cont_last_pos[0] = _controller_x;
		cont_last_pos[1] = _controller_y;
	}
}

// Removing single walls
for(var _y =1; _y < height_ -1; _y++){
	for( var _x = 1; _x < width_ -1; _x++){
		if(grid_[# _x, _y] != FLOOR){
			var _north_tile = grid_[# _x, _y-1] == VOID;
			var _west_tile  = grid_[# _x-1, _y] == VOID;
			var _east_tile  = grid_[# _x+1, _y] == VOID;
			var _south_tile = grid_[# _x, _y+1] == VOID;
			
			var _tile_index = NORTH * _north_tile + WEST * _west_tile + EAST * _east_tile + SOUTH * _south_tile +1;
			
			if(_tile_index == 1){
				grid_[# _x, _y] = FLOOR;
				// GUI
				cont_wall2Floor ++;
			}
		}
	}
}

// Draw the level using the grid
for(var _y =1; _y < height_ -1; _y++){
	for( var _x = 1; _x < width_ -1; _x++){
		if(grid_[# _x, _y] != FLOOR){
			var _north_tile = grid_[# _x, _y-1] == VOID;
			var _west_tile  = grid_[# _x-1, _y] == VOID;
			var _east_tile  = grid_[# _x+1, _y] == VOID;
			var _south_tile = grid_[# _x, _y+1] == VOID;
			
			var _tile_index = NORTH * _north_tile + WEST * _west_tile + EAST * _east_tile + SOUTH * _south_tile +1;
			
			// Draw the floor
			tilemap_set(_wall_map_id, _tile_index, _x, _y);
		} else {
			//// Adding level elements
			// Fetching Controller Coordinates to place objects
			object_x = _x * CELL_WIDTH  + CELL_WIDTH  / 2;
			object_y = _y * CELL_HEIGHT + CELL_HEIGHT / 2;
			
			// Add enemies
			if (point_distance(object_x, object_y, obj_player.x, obj_player.y) > global.distance_enemy_from_player){
				if(irandom(global.odds_of_enemy_spawn) == global.odds_of_enemy_spawn){
					instance_create_layer(object_x, object_y, "Player_AI",obj_enemy);
					
					// GUI
					enemies ++;
				}
			}
			
			//add collectable
			if(irandom(global.odds_of_item_spawn) == global.odds_of_item_spawn){
				instance_create_layer(object_x, object_y, "Items", obj_food);
				
				// GUI
				plates ++;
			}
		}
	}
}




