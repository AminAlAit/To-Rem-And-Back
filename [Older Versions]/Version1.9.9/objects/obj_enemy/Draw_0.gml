// Drawing the shadow underneath
draw_sprite_ext(spr_enemyShadow, 0, x, y+1, 1, -0.75, 0, c_white, 0.5);

// Drawing The grid, green areas and red areas according to the enemy AI
if(stats){	
	// Draw Grid
	draw_set_alpha(0.2);
	mp_grid_draw(obj_levelMaker.grid_walls);
	draw_set_alpha(1);
	
	// Draw Path
	draw_set_color(c_white);
	draw_path(path, x, y, false);
}

draw_self();