///Create.

sprite=spr_trees
mask=spr_trees

hit_points=3
frame=irandom(4)
x_scale=choose(-1,1)
y_scale=1
alpha=1
shake_x=0
shake_y=0
shake_amt=0
tip_rate=0
yy=y
shadow_length=27+random(2)
shadow_alpha=0.11+random(0.02)

make_mask_object(x-2,y-12,4,1)



/*
x += 10000
nearest=instance_nearest(x,y,obj_trees)
x -= 10000
distance=point_distance(x-10000,y,nearest.x,nearest.y)
if distance < 50 {instance_destroy()}