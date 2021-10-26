///Text Up.

if alpha < 11
{
	if alpha=0
	{
		destroy_stuff()
		with (obj_wind_gust) {instance_destroy()}
		
		if instance_exists(obj_player)
		{
			with (obj_player) {can_move_player=false}
		}
	}
	
	alpha+=0.035
	alarm[2]=1
}
else
{
	game_restart()
}