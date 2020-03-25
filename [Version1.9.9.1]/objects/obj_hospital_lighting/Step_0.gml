if (surface_exists(surf)){
	surface_set_target(surf);	
	// set the dark overlay: Bed Room 
	draw_set_color(c_black);
	draw_set_alpha(opacity);
	draw_rectangle(119, 198, 293, 281, 0);
	// set the dark overlay: Waiting Room 
	draw_rectangle(298, 228, 589, 281, 0);
	
	
	// set rays
	gpu_set_blendmode(bm_subtract);
	draw_sprite(spr_lamp_light, 0, 119, 198);	// Left Lamp rays
	// ---------------------------------------------------------------//
	// CHANGE SPRITES BELOW
	// ---------------------------------------------------------------//
	draw_sprite(spr_lamp_light, 0, 295, 213);	// Mid Lamp rays
	draw_sprite(spr_lamp_light, 0, 392, 213);	// Right Lamp rays
	
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