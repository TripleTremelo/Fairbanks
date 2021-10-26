///Create.

#region  System Variables.

global.camera=view_camera[0]

global.overall_light_amount=0.8
global.lights_alpha=1
global.show_masks=false
global.reloading=false
global.touching_food=false

global.font=font_add_sprite_ext(spr_font,"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?.,+-=*()[]\/",false,1)

#endregion
#region  Options + Controls.

global.wood=0
global.rocks=0
global.bush=0
global.cloth=0
global.bullets=0

global.food_in_stomach=0
global.chop_speed=0.25

global.fullscreen=0

global.v_sync = 0
global.sound_volume = 100
global.music_volume = 100

global.kb_up     = ord("W")
global.kb_down   = ord("S")
global.kb_left   = ord("A")
global.kb_right  = ord("D")
global.kb_chop   = ord("Z")
global.kb_crouch = ord("C")

window_set_fullscreen(1)
display_set_gui_size(view_wport[0],view_hport[0])

#endregion