///Draw GUI.

draw_set_color(c_white)
draw_set_alpha(white_alpha)
draw_rectangle(0,0,500,500,0)

set_text(fnt_chava_12,alpha,c_black,fa_center,fa_middle)

draw_set_color(c_green)
draw_text(640,330,"COMPLETE!")
draw_set_color(c_black)
draw_text(640,395,"TIME = " + string(time))


reset_drawing()