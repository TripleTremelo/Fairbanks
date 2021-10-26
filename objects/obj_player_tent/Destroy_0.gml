///Destroy.

if instance_exists(obj_player)
{
	with (obj_player) {can_move_player=true} 
}

if global.food_in_stomach >= 1 {global.food_in_stomach-=2}