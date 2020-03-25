if(!instance_exists(obj_player_native)) exit;

// -------------------------------MP Potential-------------------------------------//
//// MP Potential Settings: Default settings (default by GM) are defined below
//var maxrot  = 30;	// The number of degrees either side of the current direction that the instance can rotate in a step
//var rotstep = 10;	// The number of degrees either side of the current direction that the instance can check for a collision
//var ahead   = 3;	// The number of steps ahead that the instance can check for a collision. larger values are slower than lower ones
//var onspot  = true;	// Use this to allow the instance to rotate on the spot when no path is found (true) or not (false)

//mp_potential_settings(maxrot, rotstep, ahead, onspot);
//mp_potential_step(target_x, target_y, max_speed_ * 10, true);
// --------------------------------------------------------------------------------//


// returns -1 if it can't find a path so it won't move.
if(mp_grid_path(obj_levelMaker.grid_walls, path, x, y, target_x, target_y, true)){
	path_start(path, max_speed_, path_action_stop, false);
	
	// To stop instances of the same object (enemy) from overlapping their sprites
	if (mp_linear_step(target_x, target_y, max_speed_, true)){
		///// @description move away from another enemy

		//// if on the same spot
		//if(x == other.x && y = other.y){
		//	scr_move_collide_tileCollision(sign(other.id - id), 0);
		//}

		//var dir  = point_direction(other.x, other.y, x, y);
		//var hspd = lengthdir_x(random_range(0.5, 1), dir);
		//var vspd = lengthdir_y(random_range(0.5, 1), dir);
		////scr_move_collide_tileCollision(hspd, vspd);

		//while(collision_circle(x + 1, y + 10, 7.2, id, false, true)){
		//	scr_move_collide_tileCollision(hspd, vspd);
		//}
	}
}