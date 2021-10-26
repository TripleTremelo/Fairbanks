///Stop Shaking, Destroy.

if shake_amt > 0.35
{
	shake_amt-=decrease_rate
	
	angle = -shake_amt+random(shake_amt*2)
	camera_set_view_angle(view_camera[0],angle)

	alarm[0]=1
}
else
{
	shake_amt=0
	camera_set_view_angle(view_camera[0],0)
	instance_destroy()
}