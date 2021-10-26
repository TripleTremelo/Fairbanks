///Make Snow + Fog.

repeat(SNOW_AMT)
{
	part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),random(180),global.snow,1)  //Above Snow.
	part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),0-random(30),global.snow,1) //All Over Screen.
	if chance(3) {part_particles_create(global.ptcl_depth_neg_8000,-10+random(330),0-random(35),global.snow_blurry,1)}
}


repeat(5)
{
	part_particles_create(global.ptcl_depth_neg_8000,-20+random(340),-20+random(225),global.fog,1)
}


alarm[0]=42+irandom(6)