///Damage Player.

if !audio_is_playing(snd_player_damage)
{
	play_sound(0,snd_player_damage,0,0.25,0.8,0.08,250,400,1,80)
}

if instance_exists(obj_player)
{
	part_particles_create(global.ptcl_depth_neg_100,obj_player.x,obj_player.y,global.blood_splat,10)
	obj_player.player_hp-=51
	obj_player.scale=choose(1,1.05,1.1)
}

with (other) {instance_destroy()}