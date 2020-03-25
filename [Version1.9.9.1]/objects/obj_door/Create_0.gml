target		 = scr_player_detector("obj_door");
state		 = "closed"; // closed & open
command		 = "open";	 // close & open 
image_index	 = 0;
image_speed	 = 0;

f_pressed	 = false;

text		 = "";
text_x		 = x + 15;
text_y		 = y + sprite_height/2;
counter		 = text_y;

x1 = x - 10;
y1 = y - 10;
x2 = x + sprite_width  + 10;
y2 = y + sprite_height + 10;

// Door's collision wall 
//original_y = 0;
//with(inst_3A94CCB6){
//	other.original_y = y;
//}