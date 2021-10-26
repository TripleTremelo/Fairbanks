///Create.

global.bullets=5

state=PlayerStateFree
collisionMap = layer_tilemap_get_id(layer_get_id("Collision"))

sprite=spr_player_idle
player_hp=100
scale=1
alpha=1
image_speed=0
yy=0
shake_x=0
shake_y=0
shake_amt=0
hSpeed=0
vSpeed=0
speedWalk=1
distanceRoll=52
chop_frame=0
localFrame=0
crouching=false
breath_count=0
can_act=0
crouching=false
aiming_mouse=false
aiming_kb=false
aim_dir_mouse=0
aim_dir_kb=0
aiming_dir=0
moving_backwards=false
aim_snd=false
chop_direction=0
item_space=36
ui_alpha=0.61
items_scale[0]=1
items_scale[1]=1
items_scale[2]=1
items_scale[3]=1
dot_scale[0]=0
dot_scale[1]=0
dot_scale[2]=0
dot_scale[3]=0
dot_scale[4]=0
dot_angle[0]=0
dot_angle[1]=0
dot_angle[2]=0
dot_angle[3]=0
dot_angle[4]=0
can_move_player=true
angle=0
blue_alpha[0]=0
blue_alpha[1]=0
blue_alpha[2]=0
blue_alpha[3]=0
blue_alpha[4]=0
red_alpha[0]=0
red_alpha[1]=0
red_alpha[2]=0
red_alpha[3]=0
red_alpha[4]=0
minus_alpha[0]=0
minus_alpha[1]=0
minus_alpha[2]=0
minus_alpha[3]=0
minus_alpha[4]=0
red_flash=0

spriteIdle=spr_player_idle
spriteIdleCrouch=spr_player_idle_crouch
spriteIdleShoot=spr_player_idle_aim
spriteIdleCrouchShoot=spr_player_idle_crouch_aim

spriteRun=spr_player_run
spriteRunShoot=spr_player_run_aim
spriteRunCrouch=spr_player_run_crouch
spriteRunCrouchShoot=spr_player_run_crouch_aim

spriteIdleChop=spr_player_idle_chop
spriteRunChop=spr_player_run_chop


instance_create_layer(x,y,"Main",obj_player_mask)
instance_create_layer(x,y,"Main",obj_reticle)

alarm[0]=165+irandom(7) //Breathing (Fog).