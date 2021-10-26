///Tip Over.

if image_angle > -90
{
	image_angle-=fall_rate
	if fall_rate < 4.5 {fall_rate+=0.125}
	alarm[0]=1
}
else
{
	play_sound(0,snd_tree_thud,0,0.25,1.5,0.2,250,400,1,80)
	image_angle = -90
	frame=1
	alarm[1]=60
}