///Create.

sprite=spr_cherry_food
mask=spr_blank
frame=irandom(1)
x_scale=1
y_scale=choose(1.3,1.4)
alpha=1
collected=false
shake_x=0
shake_y=0
shake_amt=0.45+random(0.15)
xx=-5
yy=0
max_bounce=choose(4,4.5,5)
mask_count=15+irandom(3)
eaten=false
flash_frame=2
flash_alpha=0
touching=0
eat_button=keyboard_check(vk_space)
eat_text="EAT"
marked=false
space_alpha=0

speed=0.55+random(0.03)
friction=0.04+random(0.004)

alarm[0]=1