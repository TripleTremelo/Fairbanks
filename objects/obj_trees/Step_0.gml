///Step.

depth = (-y) + (13)

shaking_code(0.05)

if y_scale < 1 {y_scale+=0.05}


if hit_points > 0
{
	if image_angle > 0 {image_angle-=0.5}
	if image_angle < 0 {image_angle+=0.5}
}

if hit_points <= 0
{
	if mask=sprite
	{
		if !audio_is_playing(snd_tree_crack) {play_sound(0,snd_tree_crack,0,0.18,1,0.1,250,400,1,80)}
		if !audio_is_playing(snd_tree_fall)  {play_sound(0,snd_tree_fall,0,0.01,1.25,0.05,250,400,1,80)}
		if instance_exists(obj_player) {if x > obj_player.x {alarm[0]=1} else {alarm[1]=1}}
		if instance_exists(obj_player_menu) {if x > obj_player_menu.x {alarm[0]=1} else {alarm[1]=1}}
		
		if instance_exists(obj_mask) {with (obj_mask) {instance_destroy()}}
		
		mask=spr_blank
	}
}