///Idle Movement [1].

if !chasing
{
	if chance(60)
	{
		speed=0.25+random(0.05) 
		direction=choose(0,180)
	}
}

alarm[1]=55+irandom(55)
alarm[2]=25+irandom(13)