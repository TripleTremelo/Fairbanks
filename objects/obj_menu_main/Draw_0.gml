///Draw.

//BACKGROUND COLOR.
draw_set_alpha(1)
draw_set_color(make_color_hsv(143,13,251))
draw_rectangle(-20,-20,500,500,0)

//TITLE.
set_text(fnt_roboto,0.87,make_color_hsv(148,50,252),fa_center,fa_middle)
draw_text(160,69,"F A I R B A N K S")

//MAIN MENU CHOICES.
var m;
for (m=0; m < array_length_1d(menu); m+=1)
{
	set_text(fnt_chava_6,choices_alpha,make_color_hsv(146,54,252),fa_left,fa_middle)
	draw_text(139,106+(m*space),string(menu[m]))
}
 
//MENU BLIP.
draw_sprite_ext(spr_menu_blip,0,137,106 + (pointer_pos*space),1,1,0,make_color_hsv(148,54,252),choices_alpha)

//WHITE OVER EVERYTHING, TO FADE IN AND OUT OF MENU.
draw_set_alpha(white_alpha)
draw_set_color(make_color_hsv(143,3,255))
draw_rectangle(-100,-100,500,500,0)
reset_drawing()