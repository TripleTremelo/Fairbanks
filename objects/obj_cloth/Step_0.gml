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
	play_sound(0,snd_bush_break,0,0.11,2,0.4,250,400,1,80)
	
	obj=instance_create_layer(x-1,y,"Main",obj_cloth_pickup) obj.direction=180
	obj=instance_create_layer(x+1,y,"Main",obj_cloth_pickup) obj.direction=0
	
	instance_destroy()
}