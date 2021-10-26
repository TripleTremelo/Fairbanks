///PlayerStateFree()

function PlayerStateFree()
{
	hSpeed = lengthdir_x(inputMagnitude*speedWalk,inputDirection)
	vSpeed = lengthdir_y(inputMagnitude*speedWalk,inputDirection)
		
	var _oldSprite = sprite_index;

	if inputMagnitude != 0 //IF MOVING.
	{
		direction=inputDirection
		
		if crouching {speedWalk=0.65 if aiming_kb || aiming_mouse {sprite_index=spriteRunCrouchShoot} else {sprite_index=spriteRunCrouch}}
		else {speedWalk=1 if aiming_kb || aiming_mouse {sprite_index=spriteRunShoot} else {sprite_index=spriteRun}}
	}
	else //IDLE.
	{
		if crouching {if aiming_kb || aiming_mouse {sprite_index=spriteIdleCrouchShoot} else {sprite_index=spriteIdleCrouch}}
		else {if aiming_kb || aiming_mouse {sprite_index=spriteIdleShoot} else {sprite_index=spriteIdle}}
	}

	if !global.reloading
	{if _oldSprite != sprite_index {localFrame=0}} //If you change direction/sprite, starts run animation from 0.


	if global.reloading //Set Reloading Sprite For Each Moving State.
	{
		if inputMagnitude != 0 //IF MOVING.
		{
			if crouching {sprite_index=spr_player_run_crouch_shoot}
			else {sprite_index=spr_player_run_shoot}
		}
		else //IF NOT MOVING.
		{
			if crouching {sprite_index=spr_player_idle_crouch_shoot}
			else {sprite_index=spr_player_idle_shoot}
		}
		
	}

	PlayerCollision()
	PlayerAnimate()
}