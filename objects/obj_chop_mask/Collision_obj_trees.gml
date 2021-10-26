///Chop Tree.

play_sound(0,snd_chop,0,0.16,0.95,0.1,250,400,1,80)

part_particles_create(global.ptcl_depth_0,x,y,global.wood_chip,1+irandom(2))

instance_create_layer(x,y,"Main",obj_chop_alert)

with (other)
{
	hit_points-=1
	shake_amt=0.2+random(0.2)
	y_scale=0.9
	
	if instance_exists(obj_player)
	{
		if obj_player.x > other.x {image_angle+=4}
		else
		if obj_player.x < other.x {image_angle-=4}
		else
		if obj_player.x < other.x {image_angle += choose(4,-4)}
	}
}

mask=spr_blank