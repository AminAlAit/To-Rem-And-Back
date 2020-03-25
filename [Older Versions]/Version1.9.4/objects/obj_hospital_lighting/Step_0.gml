if (surface_exists(surf)){
	surface_set_target(surf);	
	// set the dark overlay: Bed Room 
	draw_set_color(c_black);
	draw_set_alpha(opacity);
	draw_rectangle(8, 198, 182, 281, 0);
	// set the dark overlay: Waiting Room 
	draw_rectangle(187, 228, 478, 281, 0);
	
	
	// set rays
	gpu_set_blendmode(bm_subtract);
	draw_sprite(spr_lamp_light, 0, 8, 198);		// Left Lamp rays
	// ---------------------------------------------------------------//
	// CHANGE SPRITES BELOW
	// ---------------------------------------------------------------//
	draw_sprite(spr_lamp_light, 0, 284, 228);	// Mid Lamp rays
	draw_sprite(spr_lamp_light, 0, 381, 228);	// Right Lamp rays
	
#region Leave this stuff
	// Reset all of the set draws
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
}
else {
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, clearalpha);
	surface_reset_target();
}
#endregion