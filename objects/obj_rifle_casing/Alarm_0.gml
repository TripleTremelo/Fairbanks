///Destroy.

if alpha > 0
{
	alpha-=0.02
	scale+=0.0025
	alarm[0]=1
}
else
{
	instance_destroy()
}