///Draw.

if global.show_masks=1
{
	draw_set_alpha(0.5)
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_blue,c_blue,c_purple,c_purple,false)
	reset_drawing()
}