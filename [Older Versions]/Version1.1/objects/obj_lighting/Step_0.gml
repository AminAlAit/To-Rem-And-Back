var player_radius		  = 30  + random_range(-0.1, 0.1);
var bigger_player_radius  = 100 + random_range(-0.1, 0.1);
var enemy_radius		  = 10  + random_range(-0.1, 0.1);

if (surface_exists(surf)){
	surface_set_target(surf);
	
	// set the dark overlay 
	draw_set_color(c_black);
	draw_set_alpha(opacity);
	draw_rectangle(0, 0, room_width, room_height, 0);
	
	// set circles
	gpu_set_blendmode(bm_subtract);
	
	//// Draw the PLAYER circles
	// Drawing the outer circle
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	with(obj_player){
		draw_set_color(c_gray);
		draw_circle(x - shift_x + random_range(-0.1, 0.1), y - shift_y + random_range(-0.1, 0.1), bigger_player_radius, false);
	}
	
	// Drawing the inner circle
	draw_set_color(c_white);
	draw_set_alpha(1);
	with(obj_player){
		draw_set_color(c_gray);
		draw_circle(x - shift_x + random_range(-0.1, 0.1), y - shift_y + random_range(-0.1, 0.1), player_radius, 0);
	}
	
	//// Draw the ENEMY circles
	draw_set_color(c_black);
	draw_set_alpha(0.01);
	with(obj_enemy){
		draw_set_color(c_green);
		draw_circle(x - shift_x, y - shift_y, enemy_radius, 0);
	}
	
	// Reset all of the set draws
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
} else {
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}