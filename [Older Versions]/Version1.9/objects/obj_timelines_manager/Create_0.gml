// Backbone Timer
timeline_index	  = tl_intro;
timeline_position = 0;
timeline_running  = true;
timeline_loop	  = false;

sema = true;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Green";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;
//--------Dialogue Stuff