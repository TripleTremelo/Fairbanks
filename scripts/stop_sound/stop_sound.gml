///stop_sound(snd)
///@param sound

function stop_sound(argument0)
{
	if audio_is_playing(argument0)
	{
		audio_stop_sound(argument0)
	}
}