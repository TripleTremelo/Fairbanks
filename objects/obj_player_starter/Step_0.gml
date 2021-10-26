///Step.

if white_alpha > 1
{
	white_alpha-=0.02
}
else
{
	if white_alpha > 0 {white_alpha-=0.008}
	else {instance_create_layer(x,y,"Main",obj_player) instance_destroy()}
}