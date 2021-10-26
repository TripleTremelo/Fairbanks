///Create.

depth=-1

menu[0] = "PLAY"
menu[1] = "CONTROL"
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
choices_alpha=-0.54
run_frame=irandom(6)
chop_frame=irandom(6)
shoot_frame=irandom(6)
aim_frame=irandom(1)
crouch_frame=0
tent_frame=irandom(1)
health_frame=0
bullets_frame=irandom(3)

instance_create_layer(180,90,"Main",obj_player_menu)

instance_create_layer(125,112,"Main",obj_zombie_menu)

instance_create_layer(210,110,"Main",obj_trees)
instance_create_layer(220,135,"Main",obj_trees)

instance_create_layer(150,60,"Main",obj_rocks)
instance_create_layer(140,85,"Main",obj_rocks)

instance_create_layer(156,146,"Main",obj_cloth)
instance_create_layer(179,158,"Main",obj_cloth)

instance_create_layer(190,140,"Main",obj_food_cherry)


alarm[0]=1

repeat(5)
{
	part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),random(180),global.snow,1)  //Above Snow.
	part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),0-random(30),global.snow,1) //All Over Screen.
	if chance(3) {part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),0-random(35),global.snow_blurry,1)}
	
	part_particles_create(global.ptcl_depth_neg_8000,-20+random(380),-20+random(250),global.fog,1) //FOG.
}