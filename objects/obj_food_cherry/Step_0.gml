///Step.

depth=-y

eat_button=keyboard_check(vk_space)
if space_alpha > -0.5 {space_alpha-=0.004}

if global.food_in_stomach >= 4 {eat_text="FULL" yy=0} else {eat_text="EAT" yy=wave(-1,1,1,0)}

if touching > 0
{
	if flash_frame < 3.9 {flash_frame+=0.1} else {flash_frame=2}
	flash_alpha=1.1
	touching-=1
}

if flash_alpha > 0 {flash_alpha-=0.1}

if !eat_button || !touching {if xx > -4 {xx-=0.5}}

if collected
{
	if alpha > 0.1 {alpha-=0.075} else {instance_destroy()}
	x_scale*=1.025
	y_scale*=1.025
	flash_alpha=0
	mask=spr_blank
	y-=0.33
}
else
{
	if y_scale > 1  {y_scale-=0.1}
	if mask_count <= 0 {mask=sprite}
	if mask_count > 0  {mask_count-=1}
}

shaking_code(0.05)

if marked
{
	if instance_exists(obj_player)
	{if !collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_player,0,0) {marked=false global.touching_food=false}}
	
	if instance_exists(obj_player_menu)
	{if !collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_player_menu,0,0) {marked=false global.touching_food=false}}
}