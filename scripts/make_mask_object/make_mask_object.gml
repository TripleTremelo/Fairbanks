///make_mask_object()
///@param x
///@param y
///@param xscale
///@param yscale

function make_mask_object(argument0,argument1,argument2,argument3)
{
	obj_mask=instance_create_layer(argument0,argument1,"Main",obj_dynamic_mask)
	obj_mask.image_xscale=argument2
	obj_mask.image_yscale=argument3
	obj_mask.creator=id
}