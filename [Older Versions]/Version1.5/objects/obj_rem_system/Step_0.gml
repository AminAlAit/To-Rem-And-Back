if(portal_trigger){
	portal_trigger = false;
	if(cell_x > 0 || cell_y > 0){
		var temp = 0;
			 if(grid[# cell_x + 1, cell_y] == FLOOR) { temp = cell_x + 1; scr_create_portal(temp, cell_y);}
		else if(grid[# cell_x, cell_y + 1] == FLOOR) { temp = cell_y + 1; scr_create_portal(cell_x, temp);}
		else if(grid[# cell_x - 1, cell_y] == FLOOR) { temp = cell_x - 1; scr_create_portal(temp, cell_y);}
		else if(grid[# cell_x, cell_y - 1] == FLOOR) { temp = cell_y - 1; scr_create_portal(cell_x, temp);}
	}
}










