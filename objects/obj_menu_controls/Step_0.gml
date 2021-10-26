///Step.

if run_frame   < 7.8   {run_frame+=0.2}   else {run_frame=0}
if chop_frame  < 6.8   {chop_frame+=0.2}  else {chop_frame=0}
if shoot_frame < 6.8   {shoot_frame+=0.2} else {shoot_frame=0}
if aim_frame   < 1.9   {aim_frame+=0.025} else {aim_frame=0}
if crouch_frame < 1.9  {crouch_frame+=0.02} else {crouch_frame=0}
if tent_frame   < 1.9  {tent_frame+=0.03}   else {tent_frame=0}
if health_frame < 1.9  {health_frame+=0.05} else {health_frame=0}
if bullets_frame < 3.8 {bullets_frame+=0.06} else {bullets_frame=0}

if keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("Q"))
{
	game_restart()
}