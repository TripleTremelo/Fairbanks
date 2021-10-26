///Tilt Tent.

if image_angle < 3
{
	shake_amt=0.3
	image_angle+=0.025
	alarm[0]=1
}
else
{
	shake_amt=0.18
	alarm[1]=50
}