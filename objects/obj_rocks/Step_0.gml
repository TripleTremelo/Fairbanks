///Step.

depth=-y
shaking_code(0.05)

if y_scale < 1 {y_scale+=0.05}


if hit_points > 0
{
	if image_angle > 0 {image_angle-=0.5}
	if image_angle < 0 {image_angle+=0.5}
}

if hit_points <= 0
{
	play_sound(0,snd_rock_break,0,0.17,0.95,0.1,250,400,1,80)
	part_particles_create(global.ptcl_depth_neg_100,x-5+random(10),y-2+random(4),global.rock_cloud,6+irandom(1))
	
	obj=instance_create_layer(x,y,"Main",obj_rocks_pickup) obj.direction=180
	obj=instance_create_layer(x,y,"Main",obj_rocks_pickup) obj.direction=0
	
	with (obj_mask) {instance_destroy()}
	instance_destroy()
}