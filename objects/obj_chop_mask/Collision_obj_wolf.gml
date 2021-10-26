///Damage Wolf.

if !axed
{
	part_particles_create(global.ptcl_depth_neg_100,other.x,other.y,global.blood_blue,15)
	
	play_sound(0,snd_zombie_splat,0,0.14,2,0.55,250,400,1,80)
	play_sound(0,snd_hit,0,0.19,1.5,0.2,250,400,1,80)
	
	instance_create_layer(x,y,"Main",obj_chop_alert)

	with (other) {hp-=0.5}
	
	axed=true
	mask=spr_blank
}