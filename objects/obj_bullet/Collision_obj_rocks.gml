///Hit Rock.

play_sound(0,snd_rock_hit_1,0,0.34,1.15,0.45,250,400,1,80)
play_sound(0,snd_rock_hit_2,0,0.34,1.15,0.45,250,400,1,80)

part_particles_create(global.ptcl_depth_neg_8000,other.x,y,global.rock_spark,4+irandom(2))

if !collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_zombie,0,0)
{
	instance_destroy()
}