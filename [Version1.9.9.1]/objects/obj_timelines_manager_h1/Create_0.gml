introduction_textevent = noone;
introduction_textevent_finished = false;

// Semaphore Token: we use this to give access to check whether an instance
// of textevent/textbox exists. If not, that means its over and we can resume
// with other timelines
sema	 = "0";
counter  = 0;
wait_one = 10 * room_speed;
wait_two = 5;

temp1 = true;
temp2 = true;
temp3 = true;
temp4 = true;

// the scripts that form the scenarios
scenario_two = [
	[scr_cutscene_wait, 2],
	//[scr_cutscene_move_character, obj_heartmonitor, 100, 0, true, 1],
	//[scr_cutscene_play_sound, snd_big_hit, 5, false],
	[scr_cutscene_change_variable, id, "sema", "5"],
];
scenario_three = [
	[scr_cutscene_wait, 1],
	[scr_cutscene_room_goto, room_rem_first],
	[scr_cutscene_change_variable, id, "sema", "9"],
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