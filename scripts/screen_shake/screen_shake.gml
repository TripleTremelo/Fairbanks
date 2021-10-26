///screen_shake(shake_amt,decrease_rate)
///@param shake_amt
///@param decrease_rate

function screen_shake(argument0,argument1)
{
	obj=instance_create_layer(x,y,"Main",obj_screen_shake)
	obj.shake_amt=argument0
	obj.decrease_rate=argument1
}