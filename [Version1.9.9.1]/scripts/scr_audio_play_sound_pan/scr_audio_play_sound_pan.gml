///audio_play_sound_pan(soundid, priority, loops, pan)
/***************************************************
  Simple audio panning.
  argument 0 - sound index
  argument 1 - sound priority
  argument 2 - loop?
  argument 3 - pan (-1 - left to 1 - right)
  returns: sound index
 ***************************************************/

audio_falloff_set_model(audio_falloff_linear_distance);
return audio_play_sound_at(argument0, -median(-1, argument3, 1), 0, 0, 1, 0, 0, argument2, argument1);