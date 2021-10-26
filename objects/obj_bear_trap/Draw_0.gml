///Draw.

draw_sprite_ext(sprite,frame,x,y,scale,scale,image_angle,c_white,alpha)

if frame=0 {draw_sprite_ext(sprite,2,x,y,scale,scale,image_angle,c_white,white_alpha)}


if global.show_masks=1
{
	draw_set_alpha(0.5)
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_green,c_green,c_green,c_green,false)
	reset_drawing()
}