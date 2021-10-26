///wave()
///@param start
///@param end
///@param lasts
///@param offset

function wave(argument0, argument1, argument2, argument3)
{
	wve = (argument1 - argument0) * 0.5
	return argument0 + wve + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * wve
}