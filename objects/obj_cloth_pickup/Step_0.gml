///Step.

depth=-y

if y_scale > 1 {y_scale-=0.1}

if collected
{
	if alpha > 0.1 {alpha-=0.075} else {instance_destroy()}
	x_scale*=1.008
	y_scale*=1.008
	mask=spr_blank
	y-=0.32
}
else
{
	if mask_count <= 0 {mask=sprite}
	if mask_count > 0 {mask_count-=1}
}

shaking_code(0.05)