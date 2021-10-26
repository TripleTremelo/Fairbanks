///Damage.

if other.frame=0
{
	play_sound(0,snd_player_damage,0,0.15,0.95,0.1,250,400,1,80)
	
	if instance_exists(obj_player)
	{
		part_particles_create(global.ptcl_depth_neg_100,obj_player.x,obj_player.y,global.blood_splat,12)
		obj_player.player_hp-=50
		obj_player.scale=1.15
	}
}

with (other)
{
	if frame=0
	{
		play_sound(0,snd_bear_trap,0,0.4,0.98,0.01,250,400,1,80)
		y-=4
		frame=1
		scale=1.4
		alarm[0]=2
		alarm[1]=220
	}
}