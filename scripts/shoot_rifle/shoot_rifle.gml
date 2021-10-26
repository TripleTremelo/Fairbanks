///shoot_rifle()

function shoot_rifle()
{
	if global.bullets > 0
	{
		play_sound(0,snd_rifle_shoot,0,0.23,0.97,0.06,250,400,1,80)
		screen_shake(0.38,0.01)
		
		minus_alpha[0]=2
		
		can_shoot=30
		global.bullets-=1
		
		if aiming_mouse {aiming_dir=global.MOUSE_DIR}
		if aiming_kb	{aiming_dir=global.KB_DIR}
		if aiming_dir >= 4 {aiming_dir=0}
		
		if aiming_mouse || aiming_kb
		{
			if crouching
			{
				if aiming_dir=0 {obj=instance_create_layer(x+16,y+2.5,"Main",obj_bullet) obj.direction=aiming_dir*90 obj.image_angle=aiming_dir*90}
				if aiming_dir=1 {obj=instance_create_layer(x+1,y-9,"Main",obj_bullet)    obj.direction=aiming_dir*90 obj.image_angle=aiming_dir*90}
				if aiming_dir=2 {obj=instance_create_layer(x-16,y+4,"Main",obj_bullet)   obj.direction=aiming_dir*90 obj.image_angle=aiming_dir*90}
				if aiming_dir=3 {obj=instance_create_layer(x-1,y+7,"Main",obj_bullet)    obj.direction=aiming_dir*90 obj.image_angle=aiming_dir*90}
			}
			else
			{
				if aiming_dir=0 {obj=instance_create_layer(x+12,y-6.5,"Main",obj_bullet) obj.direction=aiming_dir*90 obj.image_angle=aiming_dir*90}
				if aiming_dir=1 {obj=instance_create_layer(x+0.5,y-16,"Main",obj_bullet) obj.direction=aiming_dir*90 obj.image_angle=aiming_dir*90}
				if aiming_dir=2 {obj=instance_create_layer(x-12,y-5,"Main",obj_bullet)   obj.direction=aiming_dir*90 obj.image_angle=aiming_dir*90}
				if aiming_dir=3 {obj=instance_create_layer(x-1,y+3,"Main",obj_bullet)    obj.direction=aiming_dir*90 obj.image_angle=aiming_dir*90}
			}
		}
		
		localFrame=0
		global.reloading=true
	}
	else
	{
		if global.bullets=0 {play_sound(0,snd_rifle_empty,0,0.15,0.98,0.04,250,400,1,80)}
	}
	
	can_act=59
}