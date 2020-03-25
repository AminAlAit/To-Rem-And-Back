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


//////////////////////////////////////////////////
#region MACROs & ENUMs
	#macro RESOLUTION_W 1280
	#macro RESOLUTION_H 720
	#macro FRAME_RATE	60
	#macro VIEWPORT_W	1024
	#macro VIEWPORT_H	768
	#macro CAMERA_0_W	1280
	#macro CAMERA_0_H	720
#endregion
#region Font : Converting Sprite to Font
//global.FONT = font_add_sprite(spr_font, ord(" "), 0, 1);

//draw_set_color(c_white);
//draw_set_font(global.FONT);

//fontAng = 0;
//fontDir = 1;
#endregion

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

// GIF
//surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
gif_recording = 0;
gif_alpha	  = 0;