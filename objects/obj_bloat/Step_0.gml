///Step.

depth=-y

if instance_exists(obj_player)
{
	max_spd = 0.9 + (obj_player.speedWalk*0.22)
	
	if obj_player.crouching {chase_distance=45} else {chase_distance=95}
	if point_distance(x,y,obj_player.x,obj_player.y) < chase_distance {chasing=true}
}

if chasing
{
	chase_count+=1
	if chase_count > 800 {chasing=false}
}

if hp < 2 {chasing=true}

if on_screen() {mask=sprite_index} else {mask=spr_blank}
if scale > 1 {scale-=0.05}
shaking_code(0.05)

var _totalFrames = sprite_get_number(sprite_index) / 4
image_index = localFrame + (facing_dir*_totalFrames)

if speed > 0
{
	localFrame+=sprite_get_speed(sprite_index) / FRAME_RATE
	if localFrame >= _totalFrames {localFrame-=_totalFrames}
}
else
{
	image_index=round(direction/90)
}

if chasing
{
	speed=wave(0.8,max_spd,spd_change,0)
	if speed > 0 {if chance(2) {speed=0.44+random(0.03)}} //After initial speed set, randomly selects speed, so herds of zombies move at different speeds. & slow down a bit cuz they are tired?
	
	if (dir_count mod 15) = (0)
	{
		if instance_exists(obj_player) {direction=point_direction(x,y,obj_player.x,obj_player.y)} else {speed=0.4 direction=choose(0,180) chasing=false}
		facing_dir=round(direction/90)
		move_dir=round(direction/45)
		direction=move_dir*45
	}
	
	dir_count+=choose(0,0,1)
	
	sprite_index=spr_bloat_walk
}
else
{
	dir_count=15
	if speed > 0 {sprite_index=spr_bloat_walk} else {sprite_index=spr_bloat_idle}
}


if hp <= 0
{
	play_sound(0,snd_bloat_death,0,0.25,0.9,0.2,250,400,1,80)
	play_sound(0,snd_zombie_splat,0,0.2,1,0.1,250,400,1,80)
	
	instance_create_layer(x,y,"Main",obj_bloat_explosion)
	
	repeat(20) {part_particles_create(global.ptcl_depth_neg_100,x-6+random(12),y-8+random(16),global.bloat_boom,1)}
	
	instance_destroy()
}