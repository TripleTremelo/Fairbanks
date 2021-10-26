///shaking_code()
//@param decrement
//@param angle

function shaking_code(argument0)
{
	shake_x = -shake_amt + random(shake_amt*2)
	shake_y = -shake_amt + random(shake_amt*2)
	if shake_amt > 0 {shake_amt-=argument0} else {shake_amt=0 shake_x=0 shake_y=0}
}