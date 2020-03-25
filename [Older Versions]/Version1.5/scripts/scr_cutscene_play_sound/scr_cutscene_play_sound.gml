///@desc cutscene_play_sound
///@arg Sound
///@arg priority
///@arg loop?

var sound	 = argument0;
var priority = argument1;
var loop	 = argument2;

audio_play_sound(sound, priority, loop);

scr_cutscene_end_action();