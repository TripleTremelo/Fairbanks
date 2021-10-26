///Create.

sprite=spr_wood_pickup
mask=spr_blank
frame=irandom(5)
x_scale=choose(-1,1)
y_scale=choose(1.3,1.4)
alpha=1
collected=false
shake_x=0
shake_y=0
shake_amt=0.45+random(0.15)
yy=0
max_bounce=choose(1.5,2,2.5,3)
mask_count=10+irandom(2)

depth=0
alarm[0]=1