///Chop Tree.

play_sound(0,snd_bush_hit,0,0.1,1,0.15,250,400,1,80)

part_particles_create(global.ptcl_depth_0,other.x-3+random(6),other.y-random(3),global.bush_leaf,2+irandom(2))

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