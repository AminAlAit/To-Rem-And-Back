if( not surface_exists(shadow_surface_)){
	shadow_surface_ = surface_create(room_width, room_height)
	
	surface_set_target(shadow_surface_);
	draw_clear_alpha(c_black, 0);
	
	// draw wall shadows according to FLOOR CELL position under a VOID (Wall cell/tile)
	for(var _y= 0; _y < height_ -1; _y++){
		for(var _x=0; _x <width_ -1; _x++){
			if( grid_[# _x, _y] == FLOOR && grid_[# _x, _y-1] == VOID){
				draw_sprite_ext(spr_shadow, 0, _x*CELL_WIDTH, _y*CELL_HEIGHT, 1 ,1, 0, c_white, 0.5);
			}
		}
	}
	surface_reset_target();
}
draw_surface(shadow_surface_, 0 ,0);