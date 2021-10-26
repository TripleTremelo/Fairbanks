///Zoom Camera IN.

if zoom_level > 0.5
{
	camera_yy+=0.2
	if dis > 0 {dis-=0.25}
	
	if zoom_level > 0.5 {zoom_level-=zoom_rate}
	if zoom_rate > 0.001 {zoom_rate-=0.0001}
	
	alarm[0]=1
}
else
{
	zoom_rate=0.01
	zoom_level=0.5
}