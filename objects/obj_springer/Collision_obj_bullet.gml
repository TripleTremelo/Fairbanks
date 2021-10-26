///Bullet Hit.

if !shot
{
	scale=1.2
	shake_amt=0.7
	hp-=1
	part_particles_create(global.ptcl_depth_100,x,y,global.blood_blue,23+irandom(5))
	shot=true
}