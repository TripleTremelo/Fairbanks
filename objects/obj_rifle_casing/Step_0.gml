///Step.

direction+=dir_change
image_angle+=spin_speed
spin_speed*=0.98

if shadow_alpha > 0 {if scale > 0.5 {scale-=0.25}}

if y > y_stop
{
	if speed > 0
	{
		play_sound(0,snd_step_snow,0,0.34,1.25,0.1,250,400,1,80)
		
		depth=0
		speed=0
		gravity=0
		spin_speed=0
		shadow_alpha=0
		dir_change=0
	}
}