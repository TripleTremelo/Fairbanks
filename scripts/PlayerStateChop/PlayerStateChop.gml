///PlayerStateChop()

function PlayerStateChop()
{
	hSpeed = lengthdir_x(inputMagnitude*speedWalk,inputDirection)
	vSpeed = lengthdir_y(inputMagnitude*speedWalk,inputDirection)
	PlayerCollision()
	
	crouching=false
	
	if chop_frame=0 {play_sound(0,snd_swish,0,0.075,1,0.1,250,400,1,80)}
	
	if inputMagnitude != 0 {sprite_index=spriteRunChop}
	else {sprite_index=spriteIdleChop}
	
	var _totalFrames = sprite_get_number(sprite_index)/4
	image_index = (global.MOUSE_DIR * _totalFrames) + chop_frame
	direction=global.MOUSE_DIR*90
	
	if chop_frame < 6
	{
		if chop_frame > 2 && !instance_exists(obj_chop_mask)
		{
			obj=instance_create_layer(x,y,"Main",obj_chop_mask) obj.dir=global.MOUSE_DIR
		}
		
		chop_frame+=global.chop_speed
	}
	else
	{
		chop_frame=0
		state=PlayerStateFree
	}
	can_act = 15 - ceil(global.chop_speed*10)
}