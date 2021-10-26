///Fade Away.

if alpha > 0
{
	scale-=0.0006
	alpha-=0.0048
	alarm[0]=1
}
else
{
	instance_destroy()
}