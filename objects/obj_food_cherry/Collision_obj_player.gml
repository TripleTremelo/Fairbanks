///Player Collision.

if marked
{
	touching=2
	
	if space_alpha < 0.5 {space_alpha+=0.005}
	
	if eat_button && global.food_in_stomach < 4
	{
		if xx < 5
		{
			xx+=0.25
			if !audio_is_playing(snd_eating_ding) {play_sound(1,snd_eating_ding,0,0.2,0.93,0.13,250,400,1,80)}
		
		}
		else
		{
			if !collected
			{
				if instance_exists(obj_player) {with (obj_player) {player_hp+=15}}
				global.food_in_stomach+=1
				global.touching_food=false
				
				play_sound(0,snd_eat_food,0,0.2,0.99,0.02,250,400,1,80)
				with (obj_player) {alarm[2]=1}
				mask=spr_blank
				space_alpha=0
				touching=0
				collected=true
			}
		}
	}
	else
	{
		if keyboard_check_pressed(vk_space) {play_sound(0,snd_cant_craft,0,0.2,1,0.1,250,400,1,80)}
	}
}


if !global.touching_food
{
	marked=true
	global.touching_food=true
}