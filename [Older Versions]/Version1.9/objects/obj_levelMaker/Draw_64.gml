if(stats){
	draw_set_color(c_white);

	draw_text(0,   0, "Grid: "						   + string(width_)							+ "x" + string(height_));
	draw_text(0,  20, "Player grid origin: "		   + string(_player_start_x div CELL_WIDTH) + "-" + string(_player_start_y div CELL_WIDTH));
	draw_text(0,  40, "Player pixel origin: "		   + string(_player_start_x)				+ "-" + string(_player_start_y));
	draw_text(0,  60, "Player gird pos: "			   + string(obj_player_native.x div CELL_WIDTH)    + "-" + string(obj_player_native.y div CELL_HEIGHT));
	draw_text(0,  80, "Player pixel pos: "			   + string(obj_player_native.x)					+ "-" + string(obj_player_native.y));
	draw_text(0, 100, "Controller Origin: "			   + string(origin__controller_x)			+ "-" + string(origin__controller_y));
	draw_text(0, 120, "Controller Origin: "			   + string(cont_last_pos[0])				+ "-" + string(cont_last_pos[1]));
	draw_text(0, 140, "Controller Direction Changes: " + string(cont_changes));
	draw_text(0, 160, "Wall Solos: "				   + string(cont_wall2Floor));
	draw_text(0, 180, "Enemies: "					   + string(enemies));
	draw_text(0, 200, "Plates: "					   + string(plates));


	//draw_text(0, 100, string(object_x));
	//draw_text(0, 120, string(object_y));

	//draw_text(0, 140, string(taken_spots_x[taken_spots_counter]));
	//draw_text(0, 160, string(taken_spots_y[taken_spots_counter]));
	
	
	
}