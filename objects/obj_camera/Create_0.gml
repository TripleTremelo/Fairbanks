///Create.

target_view=0
follow_rate=0.45 //Speed that camera 'floats' toward player, and direction you aim.
dis=15
x_to=x
y_to=y
count=0
cutscene=false
cutscene_x=x
cutscene_y=y
slime_zoom=false

if instance_exists(obj_player) {x_to=obj_player.x y_to=obj_player.y}
audio_falloff_set_model(audio_falloff_linear_distance)

zoom_amt=0
camera_yy=0
zoom_level=1
zoom_rate=0.01
default_zoom_width=camera_get_view_width(view_camera[0])
default_zoom_height=camera_get_view_height(view_camera[0])