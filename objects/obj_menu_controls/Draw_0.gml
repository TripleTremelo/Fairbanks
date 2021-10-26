///Draw.

//BACKGROUND COLOR.
draw_set_alpha(1)
draw_set_color(make_color_hsv(130,17,250))
draw_rectangle(-20,-20,500,500,0)

//CONTROLS.
set_text(fnt_chava_6,0.9,make_color_hsv(151,65,230),fa_left,fa_middle)

//WASD  -  RUNNING.
draw_text(3,10,"WASD -")
draw_sprite_ext(spr_player_run,run_frame,39,9,0.5,0.5,image_angle,c_white,0.94)

//R. CLICK  -  CHOP + SHOOT.
draw_text(3,24,"R. CLICK -")
draw_sprite_ext(spr_player_idle_chop,chop_frame,52,23,0.5,0.5,image_angle,c_white,0.94)
draw_sprite_ext(spr_player_idle_shoot,shoot_frame,64,23,0.5,0.5,image_angle,c_white,0.94)

//L. CLICK  -  AIM.
draw_text(3,38,"L. CLICK -")
draw_sprite_ext(spr_player_menu_aim,aim_frame,52,37,0.5,0.5,image_angle,c_white,0.94)

//C  -  CROUCH.
draw_text(3,52,"C -")
draw_sprite_ext(spr_player_menu_crouch,crouch_frame,22,51,0.5,0.5,image_angle,c_white,0.94)

//SPACE  -  EAT.
draw_text(3,66,"SPACE - EAT")


//-CRAFTING-
set_text(fnt_chava_6,0.98,make_color_hsv(155,82,223),fa_left,fa_middle)
draw_text(3,98,"-CRAFTING-")


set_text(fnt_chava_6,0.9,make_color_hsv(151,65,230),fa_left,fa_middle)

//T  -  TENT.
draw_text(3,112,"T -")
draw_sprite_ext(spr_player_menu_tent,tent_frame,22,111,0.5,0.5,image_angle,c_white,0.94)


//H  -  HEALTH.
draw_text(3,126,"H -")
draw_sprite_ext(spr_player_menu_health,health_frame,22,127,0.5,0.5,image_angle,c_white,0.94)


//B  -  BULLETS.
draw_text(3,140,"B -")
draw_sprite_ext(spr_player_menu_bullets,bullets_frame,28,140,0.5,0.5,image_angle,c_white,0.94)