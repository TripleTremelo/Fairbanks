///PlayerCollision()

//Also MOVES Player.

function PlayerCollision()
{
	var _collision = false

	//Prevents Stuttering When Walk Diagonally, Or When Crouch Walking. Problem Occurs Because Both Of Them Move At Odd Speed, Instead Of Just 1.
	var x_check = 0;
	if hSpeed > 0 {x_check = ceil(hSpeed)}
	else {x_check = floor(hSpeed)}
	
	var y_check = 0;
	if vSpeed > 0 {y_check = ceil(vSpeed)}
	else {y_check = floor(vSpeed)}

	//Horizontal OBJECTS.
	if place_meeting(x+hSpeed,y,obj_structure_parent)
	{
		hSpeed=0
		_collision=true
	}
	
	
	//Horizontal OBJECTS (Only Check While Wind Blows).
	if instance_exists(obj_wind_gust)
	{
		if obj_wind_gust.blowing || obj_wind_gust.blowing_hard
		{
			if place_meeting(x-0.25,y,obj_structure_parent)
			{
				x+=0.25
				_collision=true
			}
			if place_meeting(x-1,y,obj_structure_parent)
			{
				x+=1
				_collision=true
			}
		}
	}
	

	//Vertical OBJECTS.
	if place_meeting(x,y+vSpeed,obj_structure_parent)
	{
		vSpeed=0
		_collision=true
	}
	
	//Horizontal Move.
	x+=hSpeed
	
	//Vertical Move.
	y+=vSpeed
	
	return _collision
}