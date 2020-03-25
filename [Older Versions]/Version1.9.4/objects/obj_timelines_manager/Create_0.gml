introduction_textevent = noone;
introduction_textevent_finished = false;

// Semaphore Token: we use this to give access to check whether an instance
// of textevent/textbox exists. If not, that means its over and we can resume
// with other timelines
sema = 0;

t_scene_info = [
	[scr_cutscene_move_character, obj_heartmonitor, 100, 0, true, 1],
	[scr_cutscene_wait, 2],
	[scr_cutscene_play_sound, snd_big_hit, 5, false],
];

#region Dialogue Stuff
	reset_dialogue_defaults();
	myPortrait			= spr_portrait_player;
	myVoice				= snd_voice2;
	myFont				= fnt_dialogue;
	myName				= "Green";

	myPortraitTalk		= spr_portrait_examplechar_mouth;
	myPortraitTalk_x	= 26;
	myPortraitTalk_y	= 44;
	myPortraitIdle		= spr_portrait_examplechar_idle;
#endregion

timeline_index	  = tl_intro;
timeline_position = 0;
timeline_running  = false;
timeline_loop	  = false;