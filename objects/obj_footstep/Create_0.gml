///Create.

sprite=spr_footstep
frame=0
scale=1
alpha=1

alarm[0]=350

if instance_exists(obj_player)
{
	if obj_player.crouching {play_sound(0,snd_step_snow,0,0.4,1.08,0.05,250,400,1,80)}
	else {play_sound(0,snd_step_snow_2,0,0.4,0.97,0.06,250,400,1,80)}
}

part_particles_create(global.ptcl_depth_0,x-1+random(2),y-1+random(2),global.snow_tuft,4)