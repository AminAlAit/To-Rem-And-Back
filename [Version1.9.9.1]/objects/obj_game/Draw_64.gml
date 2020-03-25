// Room transitioning effects
if(do_transition){
	if(room != spawn_room){ //fade in
		black_alpha += 0.1;
		if (black_alpha >= 1) room_goto(spawn_room)
	}
	else { // fade out
		black_alpha -= 0.1;
		if(black_alpha <= 0) do_transition = false;
	}
	
	draw_set_alpha(black_alpha);
	draw_rectangle_color(0, 0, gui_width, gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

if(fade_in){
	while(time >= 0){
		time --;
		black_alpha = (full_time - time) / full_time;
	
		draw_set_alpha(black_alpha);
		draw_rectangle_color(0, 0, gui_width, gui_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
	}
	fade_in = false;
}

if(fade_out){
	while(time >= 0){
		time --;
		black_alpha = abs(time - full_time) / full_time;
	
		draw_set_alpha(black_alpha);
		draw_rectangle_color(0, 0, gui_width, gui_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
	}
	fade_out = false;
}


/////////////////////////////////
switch(gif_recording){
	#region Recording
	case 1:
		draw_text_color(VIEWPORT_W / 2, 30, "RECORDING", c_red, c_red, c_red, c_red, gif_alpha);
	break;#endregion
	#region Not Recording
	case 0:
	
	break;#endregion
}
