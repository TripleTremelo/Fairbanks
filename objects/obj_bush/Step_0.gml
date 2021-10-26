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
	play_sound(0,snd_bush_break,0,0.11,1,0.15,250,400,1,80)
	
	obj=instance_create_layer(x,y,"Main",obj_food_cherry)
	obj.direction=270
	
	instance_destroy()
}