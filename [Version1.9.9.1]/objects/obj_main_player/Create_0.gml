image_speed			   = 0.4;
state				   = "move";

//// Cutscene scripts require these variables
spr_walk			   = spr_main_player_walk;
spr_idle			   = spr_main_player_idle;

//// Global
global.run_speed_main  = 2;
//global.roll_speed_main = 3;

//// Dependencies
global.input		   = instance_create_layer( 0, 0, "Instances",obj_input);

//// Room transition fields
trans_id			   = -1;
facing				   = 0;

//// input switching
input_state = "available";

//// Audio listening
audio_listener_orientation(1, 0, 0, 0, -1, 0);

#region Dialogue Stuff
reset_dialogue_defaults();
myPortrait			   = spr_portrait_player;
myVoice				   = snd_voice2;
myFont				   = fnt_dialogue;
myName				   = "Green";
myPortraitTalk		   = spr_portrait_examplechar_mouth;
myPortraitTalk_x	   = 26;
myPortraitTalk_y	   = 44;
myPortraitIdle		   = spr_portrait_examplechar_idle;
#endregion