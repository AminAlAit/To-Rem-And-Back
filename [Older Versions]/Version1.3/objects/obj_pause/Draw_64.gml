draw_sprite(background, 0, 640, 360);

//// Surface setup
//if (surface_exists(surf)){
//	surface_set_target(surf);
//// set the dark overlay 
//	draw_set_color(c_black);
//	draw_set_alpha(0.5);
//	draw_rectangle(0, 0, room_width, room_height, 0);
//}

//gpu_set_blendmode(bm_subtract);

switch(focus){
	case "continue":
		draw_sprite(spr_pause_continue, 1, 640, 360 - 100);
		draw_sprite(spr_pause_options,	0, 640, 360);
		draw_sprite(spr_pause_exit,		0, 640, 360 + 100);
	break;
	case "options":
		draw_sprite(spr_pause_continue, 0, 640, 360 - 100);
		draw_sprite(spr_pause_options,	1, 640, 360);
		draw_sprite(spr_pause_exit,		0, 640, 360 + 100);
	break;
	case "exit":
		draw_sprite(spr_pause_continue, 0, 640, 360 - 100);
		draw_sprite(spr_pause_options,	0, 640, 360);
		draw_sprite(spr_pause_exit,		1, 640, 360 + 100);
	break;
}