///Hit Tree.

play_sound(0,snd_hit,0,0.1,1.4,0.2,250,400,1,80)
play_sound(0,snd_chop,0,0.16,1.2,0.2,250,400,1,80)

part_particles_create(global.ptcl_depth_0,other.x,y-3+random(6),global.wood_chip,2+irandom(1))