///Step.

if instance_exists(obj_player)
{
	x=obj_player.x
	y=obj_player.y
}

if blowing
{
	part_particles_create(global.ptcl_depth_0,x+140+random(50),y-200+random(400),global.fog_blown,2)
	part_particles_create(global.ptcl_depth_0,x+140+random(50),y-200+random(400),global.snow_blown,4)
	
	with (obj_player)		{x-=0.15 angle=355}
	with (obj_zombie)		{x-=0.15}
	with (obj_wood_pickup)  {x-=0.2}
	with (obj_rocks_pickup) {x-=0.2}
	with (obj_food_cherry)  {x-=0.2}
}

if blowing_hard
{
	part_particles_create(global.ptcl_depth_0,x+140+random(50),y-200+random(400),global.fog_blown,12)
	part_particles_create(global.ptcl_depth_0,x+140+random(50),y-200+random(400),global.snow_blown,16)
	
	screen_shake(1,0.025)
	
	if white_alpha < 1
	{
		white_alpha+=0.02
	}
	else
	{
		//PLAYER BEING BLOWN BACK.
		if !instance_exists(obj_player_tent) {with (obj_player) {x-=2.75 can_move_player=false} destroy_stuff()} //Blow Player Back.
		can_tent=false
	}
	
	if !instance_exists(obj_player_tent) {with (obj_player) {x-=0.75 angle=350}}
	
	with (obj_zombie)		{x-=0.25}
	with (obj_wood_pickup)  {x-=0.4}
	with (obj_rocks_pickup) {x-=0.4}
	with (obj_food_cherry)  {x-=0.4}
}
else
{
	if white_alpha=1 {if !instance_exists(obj_player_tent) {instance_create_layer(x+50,y,"Main",obj_gen_everything) with (obj_player) {can_move_player=true}}}
	if white_alpha=1 {if instance_exists(obj_player_tent)  {with (obj_player_tent) {instance_destroy()}  with (obj_player) {can_move_player=true} }}
	
	if white_alpha > -3 {white_alpha-=0.02}
}