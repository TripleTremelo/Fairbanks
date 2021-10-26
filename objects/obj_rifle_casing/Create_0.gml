///Create.

depth=-6000

sprite=spr_rifle_casing
mask=spr_rifle_casing
alpha=1
shadow_alpha=0.1
spin_speed=choose(-11,-9,9,11)
y_stop=y+14+irandom(2)
scale=2
dir_change=-1+random(2)
spd=1.1+random(0.15)

speed=spd
direction=80+irandom(20)
gravity=0.08+random(0.01)
gravity_direction=265+random(10)

image_angle=random(360)

alarm[0]=480