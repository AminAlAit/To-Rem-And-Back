///@desc accept or deny input from player
///@arg neutralize_player_movement?(true/false)

var neut = argument0;

with(obj_input){
	if(control_switch) control_switch = false;
	else control_switch = true;
}

if(neut){
	switch(room){
		case room_limbo: 
			obj_player_limbo.x = 0; 
			obj_player_limbo.y = 0; 
		break;
		case room_rem:
			with(obj_player_native){
				x_speed_ = 0;
				y_speed_ = 0;
				hspeed = 0;
				vspeed = 0;
				speed = 0;
			}
		break;
		default: show_message("Error: [Scr Cutscene Player Input Switch] Room does not exist"); break;
	}
}

scr_cutscene_end_action();