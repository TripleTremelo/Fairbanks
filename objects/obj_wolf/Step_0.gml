///Step.

depth=-y

if on_screen() {mask=sprite_index} else {mask=spr_blank}
if scale > 1 {scale-=0.05}
shaking_code(0.05)

if direction > 90 && direction < 270 {x_scale=-1} else {x_scale=1}

if instance_exists(obj_player) 
{
	if obj_player.crouching {chase_distance=90} else {chase_distance=130}
	
	if point_distance(x,y,obj_player.x,obj_player.y) < chase_distance {chasing=true}
}

if chasing
{
	chase_count+=1
	if chase_count > 1200 {chasing=false}
}

if speed > 0
{
	if frame < 1.75 {frame+=0.25} else {frame=0}
}
else
{
	frame=0
}

if chasing
{
	if !growled {alarm[0]=1 growled=true}
	speed=wave(1.1,1.28,spd_change,0)
	if dir_count mod 18 = 0
	{
		if instance_exists(obj_player) {direction=point_direction(x,y,obj_player.x,obj_player.y)}
	}
	dir_count+=1
	sprite_index=spr_wolf_run
}
else
{
	if speed > 0 {sprite_index=spr_wolf_run} else {sprite_index=spr_wolf_idle}
}


if hp <= 0
{
	play_sound(0,snd_wolf_death,0,0.07,0.95,0.1,250,400,1,80)
	stop_sound(snd_wolf_growl)
	instance_destroy()
}