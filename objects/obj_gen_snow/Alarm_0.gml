///Make Snow.

repeat(SNOW_AMT+irandom(2))
{
	if instance_exists(obj_menu_pause)
	{
		part_particles_create(global.ptcl_depth_neg_8000,random(1280),random(720),global.snow,1)  //Above Snow.
		part_particles_create(global.ptcl_depth_neg_8000,random(1280),0-random(35),global.snow,1) //All Over Screen.
		if chance(3) {part_particles_create(global.ptcl_depth_neg_8000,random(1280),0-random(35),global.snow_blurry,1)}
	}

	part_particles_create(global.ptcl_depth_neg_8000,x-275+random(550),y-95-random(25),global.snow,1)  //Above Snow.
	part_particles_create(global.ptcl_depth_neg_8000,x-170+random(340),y-90+random(180),global.snow,1) //All Over Screen.
	
	if chance(2) //Blurry Snow.
	{
		if chance(66) //SMALL.
		{
			part_type_size(global.snow_blurry,0.11,0.15,0,0.007)
			part_type_alpha3(global.snow_blurry,0.47,0.46,0.45)
			part_particles_create(global.ptcl_depth_neg_8000,x-275+random(550),y-95-random(30),global.snow_blurry,1)
		}
		else //BIG
		{
			part_type_size(global.snow_blurry,0.33,0.36,0,0.007)
			part_type_alpha3(global.snow_blurry,0.41,0.40,0.39)
			part_particles_create(global.ptcl_depth_neg_8000,x-275+random(550),y-95-random(30),global.snow_blurry,1)
		}
	}
}

alarm[0]=33+irandom(7)