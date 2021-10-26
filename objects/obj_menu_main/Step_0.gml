///Step.

shaking_code(0)

snd_vol_x=global.sound_volume/2
mus_vol_x=global.music_volume/2

if can_navigate
{
	var move=0;

	if (delay > 0) {delay -=1}
 
	move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0)
	move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0)
	
	if move!=0
	{
		if move=-1 if pointer_pos!=0 {play_sound_not_3d(0,snd_menu_move,0,0.4,1,0)}
		if move=1  if pointer_pos!=3 {play_sound_not_3d(0,snd_menu_move,0,0.4,1,0)}
		pointer_pos+=move
		if pointer_pos < 0 {pointer_pos=0}
		if pointer_pos > array_length_1d(menu)-1 {pointer_pos=array_length_1d(menu)-1}
	}

	push_buttons()

	if push
	{
		switch (pointer_pos)
		{
		/*PLAY*/ case 0:  play_sound_not_3d(0,snd_start_game,0,0.46,1,0); stop_sound(snd_wind); can_navigate=0; pushed_play=1; alarm[2]=60; break;
		/*CNTL*/ case 1:  play_sound_not_3d(0,snd_menu_move,0,0.4,1,0); instance_create_layer(x,y,"Main",obj_menu_controls); can_navigate=0; break;
		/*QUIT*/ case 2:  play_sound_not_3d(0,snd_menu_move,0,0.4,1,0); can_navigate=0; pushed_play=1; alarm[3]=7; break;
		}
	}
}

//Fade Away Entire Menu, When Push PLAY.
if pushed_play
{
	if white_alpha < 1 {white_alpha+=0.02}
}
else
{
	if white_alpha > 0 {white_alpha-=0.05}
	else {if choices_alpha < 0.85 {choices_alpha+=0.05} else {if choices_alpha=0.85 {can_navigate=true choices_alpha=0.86}}}
}