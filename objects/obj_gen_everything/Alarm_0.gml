///Make Trees.

spawn_chance=1+irandom(100)
if spawn_chance >= 1 && spawn_chance <= 18  {instance_create_layer(xx-10+random(20),y-63+random(148),"Main",obj_trees)}
if spawn_chance > 18 && spawn_chance <= 36  {instance_create_layer(xx-10+random(20),y-86+random(170),"Main",obj_rocks)}
if spawn_chance > 36 && spawn_chance <= 54  {instance_create_layer(xx-10+random(20),y-86+random(170),"Main",obj_cloth)}
if spawn_chance > 54 && spawn_chance <= 65  {instance_create_layer(xx-10+random(20),y-73+random(168),"Main",obj_zombie)}
if spawn_chance > 65 && spawn_chance <= 75  {instance_create_layer(xx-10+random(20),y-86+random(170),"Main",obj_bush)}
if spawn_chance > 75 && spawn_chance <= 84  {instance_create_layer(xx-10+random(20),y-86+random(170),"Main",obj_bear_trap)}
if spawn_chance > 84 && spawn_chance <= 94  {instance_create_layer(xx-10+random(20),y-86+random(170),"Main",obj_wolf)}
if spawn_chance > 94 && spawn_chance <= 101 {instance_create_layer(xx-10+random(20),y-86+random(170),"Main",obj_springer)}

if chance(50)
{
	if chance(66)
	{
		obj=instance_create_layer(xx-25+random(50),y-89+random(188),"Main",obj_ground_details)
		obj.frame=detail_frame
		if detail_frame < 10 {detail_frame+=1} else {detail_frame=0}
	}
	else
	{
		obj=instance_create_layer(xx-25+random(50),y-89+random(188),"Main",obj_ground_details)
		obj.frame=irandom(10)
	}
}

alarm[0]=5+irandom(5)