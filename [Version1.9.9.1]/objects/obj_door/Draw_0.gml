if(collision_circle(x + sprite_width /2, y + sprite_height /2, 30, target, false, true)){
		switch(command){
			case "open":  text = "Press F to open\nthis door";		   break;
			case "close": text = "Press F to close\nthis door";		   break;
			default: //Debug(obj_door, "Draw | Command does not exist"); break;
		}
		
		//draw
		text_y = min(counter, y);
		counter++;
		if(counter >= y) counter = y + sprite_height/2;
		
		draw_set_font(fnt_instructions);
		draw_set_color(c_black);
		draw_text(text_x, text_y, text);
}
draw_self();