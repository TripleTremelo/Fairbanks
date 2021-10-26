///Draw GUI.

//ITEM SLOTS.
draw_sprite_ext(spr_item_slots,0,24+item_space*0,685,items_scale[0],items_scale[0],0,c_white,ui_alpha)
draw_sprite_ext(spr_item_slots,1,24+item_space*1,685,items_scale[1],items_scale[1],0,c_white,ui_alpha)
draw_sprite_ext(spr_item_slots,2,24+item_space*2,685,items_scale[2],items_scale[2],0,c_white,ui_alpha)
draw_sprite_ext(spr_item_slots,3,24+item_space*3,685,items_scale[3],items_scale[3],0,c_white,ui_alpha)

//ITEM SLOTS (BLUE).
draw_sprite_ext(spr_item_slots,0,24+item_space*0,685,items_scale[0],items_scale[0],0,c_blue,blue_alpha[0])
draw_sprite_ext(spr_item_slots,1,24+item_space*1,685,items_scale[1],items_scale[1],0,c_blue,blue_alpha[1])
draw_sprite_ext(spr_item_slots,2,24+item_space*2,685,items_scale[2],items_scale[2],0,c_blue,blue_alpha[2])
draw_sprite_ext(spr_item_slots,3,24+item_space*3,685,items_scale[3],items_scale[3],0,c_blue,blue_alpha[3])

//ITEM SLOTS (RED).
draw_sprite_ext(spr_item_slots,0,24+item_space*0,685,items_scale[0],items_scale[0],0,c_red,red_alpha[0])
draw_sprite_ext(spr_item_slots,1,24+item_space*1,685,items_scale[1],items_scale[1],0,c_red,red_alpha[1])
draw_sprite_ext(spr_item_slots,2,24+item_space*2,685,items_scale[2],items_scale[2],0,c_red,red_alpha[2])
draw_sprite_ext(spr_item_slots,3,24+item_space*3,685,items_scale[3],items_scale[3],0,c_red,red_alpha[3])

//-5 OVER ITEMS WHEN CRAFTED.
set_text(fnt_chava_12,1,c_black,fa_middle,fa_center)

draw_set_alpha(minus_alpha[0])
draw_text(24+item_space*0,655,"-1")

draw_set_alpha(minus_alpha[1])
draw_text(24+item_space*1,655,"-5")

draw_set_alpha(minus_alpha[2])
draw_text(24+item_space*2,655,"-5")

draw_set_alpha(minus_alpha[3])
draw_text(24+item_space*3,655,"-5")


//ITEM AMOUNTS.
set_text(fnt_chava_12,ui_alpha,c_white,fa_middle,fa_center)

draw_set_color(make_color_hsv(34,204,230))
draw_text(23+item_space*0,710,string(global.bullets))

draw_set_color(make_color_hsv(24,110,105))
draw_text(23+item_space*1,710,string(global.wood))

draw_set_color(make_color_hsv(158,6,153))
draw_text(23+item_space*2,710,string(global.rocks))

draw_set_color(make_color_hsv(18,180,95))
draw_text(23+item_space*3,710,string(global.cloth))

reset_drawing()


//Food Meter.
yy=0
for(j=0; j < 4; j+=1)
{
	draw_sprite_ext(spr_food_meter,0,18,656-yy,1,1,dot_angle[j],c_white,ui_alpha)
	yy+=21
}

//Food Meter (Food In Stomach).
yy=0
for(j=0; j < global.food_in_stomach; j+=1)
{
	draw_sprite_ext(spr_food_meter,1,18,656-yy,dot_scale[j],dot_scale[j],dot_angle[j],c_white,ui_alpha)
	yy+=21
}

//Health Meter.
draw_set_alpha(ui_alpha)
draw_healthbar(31,584,37,664,player_hp,make_colour_hsv(1,3,198),make_colour_hsv(2,243,171),make_colour_hsv(2,243,171),3,1,0)
reset_drawing()