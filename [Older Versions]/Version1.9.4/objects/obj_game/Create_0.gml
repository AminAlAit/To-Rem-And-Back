gui_width			=  display_get_gui_width();
gui_height			=  display_get_gui_height();
spawn_room			= -1;
do_transition		=  false;
black_alpha			=  0;
spawn_x				=  0;
spawn_y				=  0;
spawn_player_facing = -1;

// Fading Section (Initialized by the scripts: scr_cutscene_fade_in/out)
fade_in		 = false;
fade_out	 = false;
full_time	 = 0;
time	     = full_time;
black_alpha  = -1;
gui_width    = display_get_gui_width();
gui_height   = display_get_gui_height();
initial_room = room;
player		 = scr_player_detector("obj_game");

enum dir {
	right = 0,
	up	  = 90,
	left  = 180,
	down  = 270,
}