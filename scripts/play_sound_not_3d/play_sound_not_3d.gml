///play_sound_not_3d(stop?,sound,loops,volume,pitch_min,pitch_add)
/// @param stop_snd?
/// @param sound
/// @param loops
/// @param volume
/// @param pitch_min
/// @param pitch_add

function play_sound_not_3d(argument0, argument1, argument2, argument3, argument4, argument5)
{
	if argument0=true {audio_stop_sound(argument1)}

	if global.sound_volume > 0
	{
		snd=audio_play_sound(argument1,80,argument2)
		audio_sound_gain(snd,(global.sound_volume/100)*argument3,0)
		audio_sound_pitch(snd,argument4+random(argument5))
	}
}