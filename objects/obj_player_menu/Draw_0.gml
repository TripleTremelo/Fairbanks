///Draw.

if can_move_player {mask_index=sprite_index} else {mask_index=spr_blank}
if can_move_player {draw_sprite_ext(sprite_index,image_index,x+shake_x,y+shake_y,scale,scale,angle,c_white,alpha)}



if global.show_masks=1
{
	draw_set_alpha(0.5)
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false)
	reset_drawing()
}


//Text For Testing.
//set_text(global.font,0,c_black,fa_center,fa_middle)
//draw_text(x,y+15,"global.MOUSE_DIR = " + string(global.MOUSE_DIR))
//reset_drawing()