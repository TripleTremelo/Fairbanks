///Zoom Camera Back OUT.

if zoom_level < 1
{
	camera_yy-=0.2
	if dis < 25 {dis+=0.25}
	
	if zoom_level < 1 {zoom_level+=zoom_rate}
	if zoom_rate > 0.001 {zoom_rate-=0.0001}
	
	alarm[1]=1
}
else
{
	dis=25
	camera_yy=0
	zoom_level=1
	zoom_rate=0.01
}