///Draw.

mask_index=mask

if direction=0
{
	draw_set_alpha(line_alpha)
	draw_line_width_color(x_start,y_start,x,y,width,c_white,make_color_hsv(10,sat,255))

	draw_sprite_ext(sprite,0,x,y+5,1,1,direction,c_black,0.15)  //SHADOW.
	draw_sprite_ext(sprite,0,x,y+0.5,1,1,direction,c_white,0.5) //BULLET.
}

if direction=90
{
	draw_set_alpha(line_alpha)
	draw_line_width_color(x_start,y_start,x,y,width,c_white,make_color_hsv(10,sat,255))

	draw_sprite_ext(sprite,0,x+0.5,y+7,1,1,direction,c_black,0.15) //SHADOW.
	draw_sprite_ext(sprite,0,x+0.5,y+1,1,1,direction,c_white,0.5)  //BULLET.
}

if direction=180
{
	draw_set_alpha(line_alpha)
	draw_line_width_color(x_start,y_start-1.5,x,y-1.5,width,c_white,make_color_hsv(10,sat,255))

	draw_sprite_ext(sprite,0,x+1,y+5,1,1,direction,c_black,0.15) //SHADOW.
	draw_sprite_ext(sprite,0,x+1,y,1,1,direction,c_white,0.5)	 //BULLET.
}

if direction=270
{
	draw_set_alpha(line_alpha)
	draw_line_width_color(x_start-1.5,y_start,x-1.5,y,width,c_white,make_color_hsv(10,sat,255))

	draw_sprite_ext(sprite,0,x,y+6,1,1,direction,c_black,0.15) //SHADOW.
	draw_sprite_ext(sprite,0,x,y,1,1,direction,c_white,0.5)		 //BULLET.
}

reset_drawing()

if global.show_masks=1
{
	draw_set_alpha(0.5)
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_blue,c_blue,c_blue,c_blue,false)
	reset_drawing()
}