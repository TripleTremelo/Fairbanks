///on_screen()

function on_screen()
{
	var cam = view_camera[0]

	var x1 = camera_get_view_x(cam)
	var y1 = camera_get_view_y(cam)
	var x2 = x1 + camera_get_view_width(cam)
	var y2 = y1 + camera_get_view_height(cam)

	if (point_in_rectangle( x, y, x1-10, y1-10, x2+10, y2+10))
	{
	    return true
	}
}