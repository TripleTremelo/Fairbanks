///Step.

if instance_exists(obj_player_menu)
{
	if dir=0 {x=obj_player_menu.x+12   y=obj_player_menu.y-1}
	if dir=1 {x=obj_player_menu.x	   y=obj_player_menu.y-9}
	if dir=2 {x=obj_player_menu.x-11.5 y=obj_player_menu.y-1}
	if dir=3 {x=obj_player_menu.x      y=obj_player_menu.y+12}
}
else
if instance_exists(obj_player)
{
	if dir=0 {x=obj_player.x+12   y=obj_player.y-1}
	if dir=1 {x=obj_player.x	  y=obj_player.y-9}
	if dir=2 {x=obj_player.x-11.5 y=obj_player.y-1}
	if dir=3 {x=obj_player.x      y=obj_player.y+12}
}
else
{
	instance_destroy()
}