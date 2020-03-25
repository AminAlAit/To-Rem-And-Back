#region creating the portal somewhere near the picked object
//	if(portal_trigger){
//		portal_trigger = false;
//		if(cell_x > 0 || cell_y > 0){
//			var temp = 0;
//				 if(grid[# cell_x + 1, cell_y] == FLOOR) { temp = cell_x + 1; scr_create_portal(temp, cell_y);}
//			else if(grid[# cell_x, cell_y + 1] == FLOOR) { temp = cell_y + 1; scr_create_portal(cell_x, temp);}
//			else if(grid[# cell_x - 1, cell_y] == FLOOR) { temp = cell_x - 1; scr_create_portal(temp, cell_y);}
//			else if(grid[# cell_x, cell_y - 1] == FLOOR) { temp = cell_y - 1; scr_create_portal(cell_x, temp);}
//		}
//	}
#endregion

switch(collected){
	case 0:
		// waiting for a collectable to be collected
		// or do action here
		
	break;
	case 1:
		// Picked up first collectable
		// audio effects: telegraph progress to the player 
		
		collected ++;
	break;
	case 2:
		// waiting for another collectable to be collected
		// or do action here
		if (tempo) {
			// do action once here
			
			
			tempo = false;
		}
	break;
	case 3:
		
		var inst = instance_create_depth(0, 0, -9999, obj_fade);
		with(inst) {
			//color = c_black;
			
			// _speed is a multiplier to the main fade speed
			_speed = 3;
		}
		
		collected ++;
	break;
	case 4:
		// waiting for another collectable to be collected
		// or do action here
		if(!tempo){
			
			tempo = true;
		}
	break;
	default:
		//Debug(obj_rem_system_first, "WARNING: Reached Default state at Step Event");
	break;
}







