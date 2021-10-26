///Damage Player.

play_sound(0,snd_player_damage,0,0.25,0.95,0.1,250,400,1,80)

if instance_exists(obj_player)
{
	part_particles_create(global.ptcl_depth_neg_100,obj_player.x,obj_player.y,global.blood_splat,6)
	obj_player.player_hp-=14
	obj_player.scale=1.15
}

with (other) {instance_destroy()}