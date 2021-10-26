///Step.

global.camera=view_camera[target_view]

if instance_exists(obj_player)
{
	if obj_player.aiming_mouse && instance_exists(obj_reticle)
	{
		x_to = obj_player.x + lengthdir_x(dis*1.8,point_direction(x,y,obj_reticle.x,obj_reticle.y))
		y_to = obj_player.y + lengthdir_y(dis*1.8,point_direction(x,y,obj_reticle.x,obj_reticle.y))
		x += (x_to - x) / 12
		y += (y_to - y) / 12
	}
	else
	{
		x_to = obj_player.x + lengthdir_x(min(dis,distance_to_point(obj_player.x, obj_player.y)), direction)
		y_to = obj_player.y + lengthdir_y(min(dis,distance_to_point(obj_player.x, obj_player.y)), direction)
		x += (x_to - x) / 4
		y += (y_to - y) / 4
	}
}

//Get New Position
var vpos_x = camera_get_view_x(view_camera[target_view])
var vpos_y = camera_get_view_y(view_camera[target_view])
var vpos_w = camera_get_view_width(view_camera[target_view])  * 0.5
var vpos_h = camera_get_view_height(view_camera[target_view]) * 0.5

//Set New Position.
var new_x = lerp(vpos_x, obj_camera.x - vpos_w, follow_rate)
var new_y = lerp(vpos_y, obj_camera.y - vpos_h, follow_rate)

//Update New Position.
camera_set_view_pos(view_camera[target_view],new_x,180)

//Get new sizes by interpolating current and target zoomed size
var new_w = lerp(vpos_w, zoom_level * default_zoom_width,  1);
var new_h = lerp(vpos_h, zoom_level * default_zoom_height, 1);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);