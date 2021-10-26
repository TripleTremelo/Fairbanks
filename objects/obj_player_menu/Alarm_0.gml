///Breathing (Fog).

if breath_count < 12
{
	part_type_direction(global.breath,CARDINAL_DIR*90,CARDINAL_DIR*90,0,0)
	
	if CARDINAL_DIR=0 {part_particles_create(global.ptcl_depth_neg_1000,x+3,y-7,global.breath,2)}
	if CARDINAL_DIR=1 {part_particles_create(global.ptcl_depth_neg_1000,x,y-10,global.breath,2)}
	if CARDINAL_DIR=2 {part_particles_create(global.ptcl_depth_neg_1000,x-2,y-7,global.breath,2)}
	if CARDINAL_DIR=3 {part_particles_create(global.ptcl_depth_neg_1000,x,y-7,global.breath,2)}
	
	breath_count+=1
	
	alarm[0]=1
}
else
{
	breath_count=0
	alarm[0]=165+irandom(7)
}