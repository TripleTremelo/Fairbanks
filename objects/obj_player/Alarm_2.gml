///Scale Up FOOD DOT Just Ate [1].

if dot_scale[global.food_in_stomach-1] < 1.5
{
	dot_scale[global.food_in_stomach-1]+=0.3
	dot_angle[global.food_in_stomach-1] = -8+random(16)
	alarm[2]=1
}
else
{
	dot_angle[global.food_in_stomach-1] = -8+random(16)
	alarm[3]=1
}