///Step.

sat-=2

if line_alpha > 0
{
	width-=0.015
	line_alpha-=0.024
}
else
{
	instance_destroy()
}


if !on_screen()
{
	mask=spr_blank
}