///Scale Up FOOD DOT Just Ate [2].

if dot_scale[global.food_in_stomach-1] > 1
{
	dot_scale[global.food_in_stomach-1]-=0.2
	dot_angle[global.food_in_stomach-1] = -8+random(16)
	alarm[3]=1
}
else
{
	dot_scale[global.food_in_stomach-1]=1
	dot_angle[global.food_in_stomach-1] = 0
}