///Step.

#region MAIN.

depth=-y

for(k=0;  k < 4; k+=1)
{
	if red_alpha[k]   > 0 {red_alpha[k]-=0.05}
	if blue_alpha[k]  > 0 {blue_alpha[k]-=0.05}
	if minus_alpha[k] > 0 {minus_alpha[k]-=0.05}
}

if global.food_in_stomach=0 {speedWalk=1    - (crouching*0.25) global.chop_speed=0.25}
if global.food_in_stomach=1 {speedWalk=1.05 - (crouching*0.25) global.chop_speed=0.3}
if global.food_in_stomach=2 {speedWalk=1.1  - (crouching*0.25) global.chop_speed=0.35}
if global.food_in_stomach=3 {speedWalk=1.15 - (crouching*0.25) global.chop_speed=0.4}
if global.food_in_stomach=4 {speedWalk=1.2  - (crouching*0.25) global.chop_speed=0.5}

if global.food_in_stomach < 0 {global.food_in_stomach=0}
for(j=0; j < 4; j+=1) {if items_scale[j] > 1 {items_scale[j]-=0.05}}
if can_act > 0  {can_act-=1}
if scale > 1    {scale-=0.05}
if player_hp > 100 {player_hp=100}
aim_dir_mouse=point_direction(x,y,mouse_x,mouse_y)
global.MOUSE_DIR=round(aim_dir_mouse/90)
if global.MOUSE_DIR >= 4 {global.MOUSE_DIR=0}

//Declare Button Inputs.
keyLeft=keyboard_check(global.kb_left)
keyRight=keyboard_check(global.kb_right)
keyUp=keyboard_check(global.kb_up)
keyDown=keyboard_check(global.kb_down)
keyChop=keyboard_check_pressed(global.kb_chop)
keyCrouch=keyboard_check_pressed(global.kb_crouch)

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp)
inputMagnitude = (keyRight-keyLeft != 0) || (keyDown-keyUp != 0)


//CRAFT - TENT.
if keyboard_check_pressed(ord("T"))
{
	play_sound(0,snd_craft,0,0.3,0.95,0.1,250,400,1,80)

	blue_alpha[1]=1.2
	blue_alpha[3]=1.2
	minus_alpha[1]=2
	minus_alpha[3]=2
	instance_create_layer(x,y,"Main",obj_player_tent_menu)
}


//CRAFT - BULLETS.
if keyboard_check_pressed(ord("B"))
{
	play_sound(0,snd_craft,0,0.3,0.95,0.1,250,400,1,80)
	global.bullets+=5
		
	blue_alpha[1]=1.2
	blue_alpha[2]=1.2
	minus_alpha[1]=2
	minus_alpha[2]=2
}

//CRAFT - HEALTH KIT.
if keyboard_check_pressed(ord("H"))
{
	play_sound(0,snd_craft,0,0.3,0.95,0.1,250,400,1,80)
	
	blue_alpha[2]=1.2
	blue_alpha[3]=1.2
	minus_alpha[2]=2
	minus_alpha[3]=2
}


if can_move_player
{
	if (keyCrouch) {if !crouching {crouching=true play_sound(0,snd_crouch_down,0,0.11,0.95,0.02,250,400,1,80)} else {crouching=false play_sound(0,snd_crouch_up,0,0.1,0.99,0.02,250,400,1,80)}}

	if can_act=0
	{
		if mouse_check_button(mb_left) {aiming_mouse=true} else {aiming_mouse=false}

		if keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)
		{aiming_kb=true} else {aiming_kb=false}

		if aiming_kb || aiming_mouse
		{
			if !aim_snd {play_sound(1,snd_rifle_equip,0,0.055,0.96,0.08,250,400,1,80) aim_snd=true}
		}

		if aiming_mouse
		{
			if hSpeed=0 && vSpeed=0 {direction=global.MOUSE_DIR*90}
			if mouse_check_button_pressed(mb_right) {if can_act=0 {shoot_rifle()}}
		}

		if aiming_kb
		{
			if keyboard_check(vk_right) {global.KB_DIR=0}
			if keyboard_check(vk_up)	{global.KB_DIR=1}
			if keyboard_check(vk_left)	{global.KB_DIR=2}
			if keyboard_check(vk_down)	{global.KB_DIR=3}
	
			if hSpeed=0 && vSpeed=0 {direction=global.KB_DIR*90}
	
			if keyboard_check_pressed(vk_space) {if can_act=0 {shoot_rifle()}}
		}
	}

	if !aiming_kb && !aiming_mouse {aim_snd=false}

	if mouse_check_button(mb_right)
	{
		if !aiming_mouse && !aiming_kb && can_act=0 {state=PlayerStateChop}
	}


	script_execute(state)
}

#endregion
#region ETC. - Have to put this AT START??  (top of step event)

//3D Audio Listener.
audio_listener_position(x,y,0)
audio_listener_orientation(0,0,1000,0,-1,0)

shaking_code(0)

#endregion