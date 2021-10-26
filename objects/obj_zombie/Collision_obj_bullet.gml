///Bullet Hit.

if !shot
{
	scale=1.2
	shake_amt=0.7
	
	chasing=true
	
	hp-=other.damage
	with (other) {damage=0.5}
	
	part_particles_create(global.ptcl_depth_100,x,y,global.blood_blue,23+irandom(5))
	
	play_sound(0,snd_zombie_splat,0,0.15,2,1.5,250,400,1,80)
	shot=true
	
	alarm[0]=5
}