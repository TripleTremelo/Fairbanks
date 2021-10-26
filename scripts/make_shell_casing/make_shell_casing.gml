///make_shell_casing()

function make_shell_casing()
{
	play_sound(0,choose(snd_reload_1,snd_reload_2),0,0.1,0.97,0.06,250,400,1,80)
	
	if crouching
	{
		if direction=0   {obj=instance_create_layer(x+10,y+3,"Main",obj_rifle_casing) obj.direction=110}
		if direction=90  {obj=instance_create_layer(x+1,y-3,"Main",obj_rifle_casing) obj.direction=90}
		if direction=180 {obj=instance_create_layer(x-9,y+3,"Main",obj_rifle_casing) obj.direction=70}
		if direction=270 {obj=instance_create_layer(x-1,y+4,"Main",obj_rifle_casing) obj.direction=90}
	}
	else
	{
		if direction=0   {obj=instance_create_layer(x+6,y-6,"Main",obj_rifle_casing) obj.direction=110}
		if direction=90  {obj=instance_create_layer(x+1,y-10,"Main",obj_rifle_casing) obj.direction=90}
		if direction=180 {obj=instance_create_layer(x-6,y-6,"Main",obj_rifle_casing) obj.direction=70}
		if direction=270 {obj=instance_create_layer(x-1,y,"Main",obj_rifle_casing) obj.direction=90}
	}
}