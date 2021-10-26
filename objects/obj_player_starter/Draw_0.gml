///Draw.

draw_sprite_ext(sprite,0,x,y,1,1,image_angle,c_white,1)

draw_set_alpha(white_alpha)
draw_set_color(make_color_hsv(143,3,255))
draw_rectangle(x-200,y-200,x+200,y+200,0)
reset_drawing()