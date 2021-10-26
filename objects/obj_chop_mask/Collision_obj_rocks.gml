///Chop Tree.

play_sound(0,choose(snd_rock_hit_1,snd_rock_hit_2),0,0.25,0.95,0.1,250,400,1,80)

part_particles_create(global.ptcl_depth_neg_8000,x,y,global.rock_spark,2+irandom(2))

instance_create_layer(x,y,"Main",obj_chop_alert)

with (other)
{
	hit_points-=1
	shake_amt=0.35+random(0.15)
	y_scale=0.9
	
	if instance_exists(obj_player)
	{
		if obj_player.x > other.x {image_angle+=3}
		else
		if obj_player.x < other.x {image_angle-=3}
		else
		if obj_player.x < other.x {image_angle += choose(3,-3)}
	}
}

mask=spr_blank