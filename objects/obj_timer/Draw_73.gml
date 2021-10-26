///Draw End.

draw_set_color(c_white)
draw_set_alpha(white_alpha)
draw_rectangle(x-400,y-400,x+400,y+400,0)

set_text(fnt_chava_12,alpha,c_black,fa_center,fa_middle)

draw_text(x,y-25,"COMPLETE")
draw_text(x,y+25,"TIME = " + string(time))