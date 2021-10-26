///DRAW GUI.

//ITEM SLOTS.
draw_sprite_ext(spr_item_slots,0,24+item_space*0,685,1,1,0,c_white,0.59)
draw_sprite_ext(spr_item_slots,1,24+item_space*1,685,1,1,0,c_white,0.59)
draw_sprite_ext(spr_item_slots,2,24+item_space*2,685,1,1,0,c_white,0.59)
draw_sprite_ext(spr_item_slots,3,24+item_space*3,685,1,1,0,c_white,0.59)

//ITEM AMOUNTS.
set_text(fnt_chava_12,0.59,c_white,fa_middle,fa_center)
draw_set_color(make_color_hsv(34,204,230)) draw_text(23+item_space*0,710,string(global.bullets))
draw_set_color(make_color_hsv(24,110,105)) draw_text(23+item_space*1,710,string(global.wood))
draw_set_color(make_color_hsv(158,6,153))  draw_text(23+item_space*2,710,string(global.rocks))
draw_set_color(make_color_hsv(18,180,95))  draw_text(23+item_space*3,710,string(global.cloth))

//Food Meter.
yy=0
for(j=0; j < 5; j+=1)
{
	draw_sprite_ext(spr_food_meter,0,18,656-yy,1,1,image_angle,c_white,0.56)
	yy+=21
}

//Food Meter (Food In Stomach).
yy=0
for(j=0; j < global.food_in_stomach; j+=1)
{
	draw_sprite_ext(spr_food_meter,1,18,656-yy,1,1,image_angle,c_white,0.56)
	yy+=21
}

//Health Meter.
draw_set_alpha(0.57)
draw_healthbar(31,564,37,664,hp,make_colour_hsv(1,3,198),make_colour_hsv(2,243,171),make_colour_hsv(2,243,171),3,1,0)
reset_drawing()