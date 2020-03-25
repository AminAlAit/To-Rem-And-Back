if(stats){
	draw_set_color(c_white);

					draw_text(0, y_pos, "Grid: "						 + string(width_)							  + "x" + string(height_));
	y_pos += y_gap; draw_text(0, y_pos, "Player grid origin: "			 + string(_player_start_x div CELL_WIDTH)	  + "-" + string(_player_start_y	 div CELL_WIDTH));
	y_pos += y_gap; draw_text(0, y_pos, "Player pixel origin: "		     + string(_player_start_x)					  + "-" + string(_player_start_y));
	y_pos += y_gap; draw_text(0, y_pos, "Player gird pos: "			     + string(obj_player_native.x div CELL_WIDTH) + "-" + string(obj_player_native.y div CELL_HEIGHT));
	y_pos += y_gap; draw_text(0, y_pos, "Player pixel pos: "			 + string(obj_player_native.x)				  + "-" + string(obj_player_native.y));
	y_pos += y_gap; draw_text(0, y_pos, "Controller Origin: "			 + string(origin__controller_x)				  + "-" + string(origin__controller_y));
	y_pos += y_gap; draw_text(0, y_pos, "Controller Origin: "			 + string(cont_last_pos[0])					  + "-" + string(cont_last_pos[1]));
	y_pos += y_gap; draw_text(0, y_pos, "Controller Direction Changes: " + string(cont_changes));
	y_pos += y_gap; draw_text(0, y_pos, "Wall Solos: "					 + string(cont_wall2Floor));
	y_pos += y_gap; draw_text(0, y_pos, "Enemies: "						 + string(enemies));
	y_pos += y_gap; draw_text(0, y_pos, "Plates: "						 + string(plates));
	y_pos += y_gap; draw_text(0, y_pos, "Collected: "					 + string(collected));

	y_pos = 15;
	//draw_text(0, 100, string(object_x));
	//draw_text(0, 120, string(object_y));

	//draw_text(0, 140, string(taken_spots_x[taken_spots_counter]));
	//draw_text(0, 160, string(taken_spots_y[taken_spots_counter]));
	
	// fetching collected from rem_systems
	with(obj_rem_system_first) other.collected = collected;
}