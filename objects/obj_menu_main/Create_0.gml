///Create.

depth=0

menu[0] = "PLAY"
menu[1] = "CONTROLS"
menu[2] = "QUIT"

space=9
pointer_pos=0
shake_x=0
shake_y=0
shake_amt=1
push=0
move=0
scale=1
delay=11
glide=0
glide_count=0
can_navigate=false
alpha=0.65
count=0
pushed_play=false
white_alpha=3
choices_alpha=-0.2

hue=145
sat=232

snd_vol_x=global.sound_volume/2
mus_vol_x=global.music_volume/2


alarm[0]=1

repeat(7)
{
	part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),random(180),global.snow,1)  //Above Snow.
	part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),0-random(30),global.snow,1) //All Over Screen.
	if chance(3) {part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),0-random(35),global.snow_blurry,1)}
	
	part_particles_create(global.ptcl_depth_neg_8000,-20+random(380),-20+random(250),global.fog,1) //FOG.
}

audio_listener_position(-8000,-8000,-8000)
audio_listener_orientation(0,0,1000,0,-1,0)

play_sound_not_3d(1,snd_wind,1,0.39,1,0)