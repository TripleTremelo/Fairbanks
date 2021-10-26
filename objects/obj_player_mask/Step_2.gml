///Step.

if instance_exists(obj_player)
{
	if obj_player.crouching
	{
		if obj_player.direction=0 || obj_player.direction=45 || obj_player.direction=315 //If Moving Right.
		{
			x=obj_player.x+5
			y=obj_player.y
			image_angle=270
		}
		else
		if obj_player.direction=180 || obj_player.direction=135 || obj_player.direction=225 //If Moving Left.
		{
			x=obj_player.x-2
			y=obj_player.y
			image_angle=270
		}
		else
		if obj_player.direction=90 //UP.
		{
			x=obj_player.x
			y=obj_player.y+1
			image_angle=0
		}
		else
		if obj_player.direction=270 //DOWN.
		{
			x=obj_player.x
			y=obj_player.y+1
			image_angle=0
		}
	}
	else
	{
		if obj_player.hSpeed >= 0 //If Moving Right.
		{
			x=obj_player.x
			y=obj_player.y-4
			image_angle=0
		}
		else
		if obj_player.hSpeed < 0 //If Moving Left.
		{
			x=obj_player.x
			y=obj_player.y-4
			image_angle=0
		}
	}
}