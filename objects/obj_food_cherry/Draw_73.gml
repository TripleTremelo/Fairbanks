///Draw End.

//EAT Bar.
if xx > -4
{
	draw_set_color(c_black)
	draw_set_alpha(0.045)
	draw_rectangle(x-5,y+10,x+xx,y+12,0)
	draw_set_color(make_color_hsv(3,235,249))
	draw_set_alpha(1)
	draw_rectangle(x-5,y+10,x+xx,y+11,0)
}

//"EAT" Shadow.
set_text(global.font,touching*0.022,make_color_hsv(175,120,40),fa_center,fa_middle)
draw_text(x+3,y+yy+7,eat_text)

//"EAT" Text.
set_text(global.font,touching,make_color_hsv(165,200,50),fa_center,fa_middle)
draw_text(x+2,y+yy+6,eat_text)


//"EAT" Text.
set_text(global.font,space_alpha,make_color_hsv(165,200,50),fa_center,fa_middle)
draw_text(x,y-13,"SPACE BAR")