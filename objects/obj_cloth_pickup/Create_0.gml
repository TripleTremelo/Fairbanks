///Create.

sprite=spr_cloth_pickup
mask=spr_blank
frame=irandom(1)
x_scale=1
y_scale=choose(1.3,1.4)
alpha=1
collected=false
shake_x=0
shake_y=0
shake_amt=0.45+random(0.15)
yy=0
max_bounce=choose(4,4.5,5)
mask_count=15+irandom(3)

speed=0.7+random(0.05)
friction=0.04+random(0.004)
image_angle=choose(0,0,90,180,270)

alarm[0]=1