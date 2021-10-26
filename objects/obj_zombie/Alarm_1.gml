///Idle Movement [1].

if !chasing
{
	if chance(60)
	{
		speed=0.25+random(0.05) 
		direction=choose(0,45,90,135,180,225,270)
		facing_dir=round(direction/90)
		move_dir=round(direction/45)
	}
}

alarm[1]=55+irandom(55)
alarm[2]=25+irandom(13)