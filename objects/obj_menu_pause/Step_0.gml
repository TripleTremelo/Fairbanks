///Step.

if keyboard_check_pressed(ord("P")) {instance_destroy()}

if can_navigate
{
	var move=0;

	if (delay > 0) {delay -=1}
 
	move -= max(keyboard_check_pressed(vk_up),  keyboard_check_pressed(ord("W")),0)
	move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0)
	
	if move!=0
	{				
		if move=1  {if pointer_pos!=2 {play_sound_not_3d(1,snd_menu_move,0,0.4,1,0)}}
		if move=-1 {if pointer_pos!=0 {play_sound_not_3d(1,snd_menu_move,0,0.4,1,0)}}
		pointer_pos+=move
		if pointer_pos < 0 {pointer_pos=0}
		if pointer_pos > array_length_1d(menu)-1 {pointer_pos=array_length_1d(menu)-1}
	}

	push_buttons()

	if push
	{
		switch (pointer_pos)
		{
			case 0: instance_destroy(); break;
			case 1: game_restart(); break;
			case 2: game_end(); break;
		}
	}
}