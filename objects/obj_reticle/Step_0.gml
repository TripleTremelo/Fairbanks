///Step.

x=mouse_x
y=mouse_y

if mouse_check_button(mb_left)
{
	if frame < 6.5 {frame+=0.33}
}
else
{
	if frame > 2 {frame-=0.33}
}


if mouse_check_button(mb_right) && !mouse_check_button(mb_left)
{
	if frame > 0 {frame-=0.33}
}


if !mouse_check_button(mb_right) && !mouse_check_button(mb_left)
{
	if frame < 2 {frame+=0.33}
}