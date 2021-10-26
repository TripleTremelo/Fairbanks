///Step.

if instance_exists(obj_player)
{
	if point_distance(x,y,obj_player.x,obj_player.y) < 360
	{
		if !audio_is_playing(snd_civilization)
		{
			play_sound(0,snd_civilization,1,0.35,1,0,250,400,1,80)
		}
	}
}