///Step.

depth=-y

if on_screen() {mask=sprite_index} else {mask=spr_blank}
if scale > 1 {scale-=0.05}
shaking_code(0.04)

if instance_exists(obj_player) 
{
	if !obj_player.crouching
	{
		if (obj_player.x) > (x-4) && (obj_player.x) < (x+10) {if speed=0 {scale=1.7 play_sound(0,snd_springer,0,0.3,0.95,0.1,250,400,1,80)} speed=19}
	}
}

if y > 370 || y < 170 {instance_destroy()}

if hp <= 0
{
	play_sound(0,snd_zombie_splat,0,0.22,0.95,0.1,250,400,1,80)
	play_sound(0,snd_hit,0,0.3,1.5,0.1,250,400,1,80)
	instance_destroy()
}