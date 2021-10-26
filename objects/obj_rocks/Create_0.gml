///Create.

sprite=spr_rocks
mask=spr_rocks

hit_points=4
frame=irandom(4)
x_scale=1
y_scale=1
alpha=1
shake_x=0
shake_y=0
shake_amt=0
tip_rate=0
obj_mask=noone

make_mask_object(x-5,y-11,12,6)

/*

x += 10000
nearest=instance_nearest(x,y,obj_rocks)
x -= 10000
distance=point_distance(x-10000,y,nearest.x,nearest.y)
if distance < 50 {instance_destroy()}