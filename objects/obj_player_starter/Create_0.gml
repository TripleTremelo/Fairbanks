///Create.

depth=-7500

sprite=spr_player_idle
white_alpha=2.2

//Burst Of Fog & Snow At Start.
repeat(300)
{
	part_particles_create(global.ptcl_depth_neg_8000,x-300+random(600),y-250+random(500),global.fog,1)
	part_particles_create(global.ptcl_depth_neg_8000,x-250+random(500),0-random(120),global.snow,1)
}