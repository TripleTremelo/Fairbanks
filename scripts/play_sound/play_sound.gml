///play_sound(stop?,sound,loops,volume,pitch_min,pitch_add,falloff_ref,fallof_max,falloff_factor,priority)
/// @param stop_snd?
/// @param sound
/// @param loops
/// @param volume
/// @param pitch_min
/// @param pitch_add
/// @param falloff_ref
/// @param falloff_max
/// @param falloff_factor
/// @param priority

function play_sound(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9)
{
	if argument0=true {audio_stop_sound(argument1)}

	if global.sound_volume > 0
	{
		snd=audio_play_sound_at(argument1,x,y,0,argument6,argument7,argument8,argument2,argument9)
		audio_sound_gain(snd,(global.sound_volume/100)*argument3,0)
		audio_sound_pitch(snd,argument4+random(argument5))
	}
}