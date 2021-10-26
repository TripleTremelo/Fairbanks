///destroy_stuff()

function destroy_stuff()
{
	with (obj_trees)	 {instance_destroy()}
	with (obj_rocks)	 {instance_destroy()}
	with (obj_cloth)	 {instance_destroy()}
	with (obj_zombie)	 {instance_destroy()}
	with (obj_bloat)	 {instance_destroy()}
	with (obj_wolf)		 {instance_destroy()}
	with (obj_springer)	 {instance_destroy()}
	with (obj_bear_trap) {instance_destroy()}

	with (obj_wood_pickup)	 {instance_destroy()}
	with (obj_rocks_pickup)	 {instance_destroy()}
	with (obj_cloth_pickup)	 {instance_destroy()}
	with (obj_food_cherry)	 {instance_destroy()}
}