///Draw GUI.

draw_set_alpha(1)
draw_set_color(make_color_hsv(143,13,251))
draw_rectangle(x-200,pause_y-200,x+200,pause_y+200,0)

//PAUSE.
set_text(fnt_roboto,0.91,make_color_hsv(148,50,252),fa_center,fa_middle)
draw_text(x,pause_y-21,"P A U S E")

//CRAFTING HINT.
set_text(fnt_chava_6,0.87,make_color_hsv(160,100,240),fa_center,fa_middle)
draw_text(x,pause_y-75,"TENT  = WOOD AND COTTON")
draw_text(x,pause_y-65,"HEALTH  = COTTON AND ROCKS")
draw_text(x,pause_y-55,"BULLETS  = ROCKS AND WOOD")

//MAIN MENU CHOICES.
var m;
for (m=0; m < array_length_1d(menu); m+=1)
{
	//ACTUAL MENU TEXT.
	set_text(fnt_chava_6,0.87,make_color_hsv(145,60,255),fa_left,fa_middle)
	draw_text(x-21,pause_y+16+(m*space),string(menu[m]))
}


//MENU BLIP.
draw_sprite_ext(spr_menu_blip,0,x-23,pause_y+16+(pointer_pos*space),1,1,0,make_color_hsv(148,54,252),0.87)