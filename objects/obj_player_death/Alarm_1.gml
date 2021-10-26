///Fade To White, Reset.

if white_alpha < 1.1
{
	white_alpha+=0.025
	alarm[1]=1
}
else
{
	game_restart()
}