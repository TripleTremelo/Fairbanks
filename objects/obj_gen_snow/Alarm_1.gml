///Make Fog.

repeat(FOG_AMT+irandom(3))
{
	if instance_exists(obj_menu_pause)
	{
		part_particles_create(global.ptcl_depth_neg_8000,random(1280),random(720),global.fog,1)
	}
	
	part_particles_create(global.ptcl_depth_neg_8000,x-410+random(800),y-350+random(700),global.fog,1)
}

alarm[1]=48+irandom(2)