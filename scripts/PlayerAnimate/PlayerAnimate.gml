//PlayerAnimate()

//Updates Image Index.

function PlayerAnimate()
{
	#region Footsteps, Running.

	if inputMagnitude != 0 //If MOVING, Leave Footsteps.
	{
		if CARDINAL_DIR=0 || CARDINAL_DIR=2 || CARDINAL_DIR=4 //RIGHT+LEFT+RIGHTDOWN.
		{if localFrame=1 {obj=instance_create_layer(x,y+10,"Main",obj_footstep) obj.image_angle=direction}
		 if localFrame=5 {obj=instance_create_layer(x,y+9,"Main",obj_footstep)  obj.image_angle=direction}}
	 
		if CARDINAL_DIR=1 //UP.
		{if localFrame=3 {obj=instance_create_layer(x+1,y+9,"Main",obj_footstep)  obj.image_angle=direction}
		 if localFrame=7 {obj=instance_create_layer(x-2,y+9,"Main",obj_footstep)  obj.image_angle=direction}}
	 
		if CARDINAL_DIR=3 //DOWN.
		{if localFrame=3 {obj=instance_create_layer(x+2,y+10,"Main",obj_footstep)  obj.image_angle=direction}
		 if localFrame=7 {obj=instance_create_layer(x-1,y+10,"Main",obj_footstep)  obj.image_angle=direction}}
	}
	#endregion
	
	var _totalFrames = sprite_get_number(sprite_index) / 4
	image_index = localFrame + (CARDINAL_DIR*_totalFrames)
	if aiming_mouse {image_index = localFrame + (global.MOUSE_DIR*_totalFrames)}
	if aiming_kb    {image_index = localFrame + (global.KB_DIR*_totalFrames)}
	
	localFrame+=sprite_get_speed(sprite_index) / FRAME_RATE
	if localFrame >= _totalFrames {localFrame-=_totalFrames}
	
	//Make shell. Once reload animation plays, turn reloading OFF.
	if global.reloading
	{
		if localFrame >= _totalFrames-0.2 {global.reloading=false}
		
		if localFrame > 5 && !audio_is_playing(snd_reload_1) && !audio_is_playing(snd_reload_2)
		{
			make_shell_casing()
		}
	}
}