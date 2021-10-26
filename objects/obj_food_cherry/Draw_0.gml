///Draw.

mask_index=mask

draw_sprite_ext(sprite,frame,x+1+shake_x,y+shake_y,x_scale,y_scale,image_angle,c_black,0.04)
draw_sprite_ext(sprite,frame,x+shake_x,y+shake_y,x_scale,y_scale,image_angle,c_white,alpha)

draw_sprite_ext(sprite,flash_frame,x,y,1,1,image_angle,c_white,flash_alpha)