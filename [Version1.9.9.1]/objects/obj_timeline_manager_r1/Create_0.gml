#region Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_native_idle;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "";

myPortraitTalk		= spr_native_idle;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_native_idle;
#endregion

rem_isPlaying = false;
limbo_isPlaying = false;

sema = "0";

temp1 = true;
temp2 = true;
tmep3 = true;

wait_one = 1 * room_speed;
wait_two = 5;

scenario_one = [

];

rem_textevent = noone;
rem_textevent_finished = false;

counter = 0;
//switch(counter){
//	case 0:
//		create_textevent(["Where am I? I think i'm dreaming...",], -1, -1, -1, -1, -1, -1, -1, -1, -1);
//	break;
//	case 1:
//		create_textevent(["Here we go again",], -1, -1, -1, -1, -1, -1, -1, -1, -1);
//	break;
//	default:
//		create_textevent(["This can go on forever.. I gotta make it this time.",], -1, -1, -1, -1, -1, -1, -1, -1, -1);
//	break;
//}
