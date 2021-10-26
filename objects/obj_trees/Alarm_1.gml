///Tip Over [Left].

if image_angle < 90
{
	image_angle+=tip_rate
	if tip_rate < 3.5 {tip_rate+=0.05}
	if shake_amt < 0.15 {shake_amt+=0.051}
	if image_angle > 40 {y-=0.1}
	if image_angle > 30 {shadow_length-=0.25 shadow_alpha-=0.0028}
	
	alarm[1]=1
}
else
{
	play_sound(0,snd_tree_plunk,0,0.17,1.1,0.1,250,400,1,80)
	play_sound(0,snd_tree_thud,0,0.16,1,0,250,400,1,80)
	
	instance_create_layer(x-5,y-0.5+random(1),"Main",obj_wood_pickup)
	instance_create_layer(x-15,y-0.5+random(1),"Main",obj_wood_pickup)
	instance_create_layer(x-25,y-0.5+random(1),"Main",obj_wood_pickup)
	
	instance_destroy()
}