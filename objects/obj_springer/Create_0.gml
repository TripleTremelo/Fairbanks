///Create.

sprite=spr_springer
mask=spr_springer
frame=0
scale=1
alpha=1
hp=1
shake_x=0
shake_y=0
shake_amt=0
shot=false
move_dir=0
facing_dir=0
chasing=false
localFrame=0
dir_count=15
spewed=false
spd_change=1+random(0.5)
max_spd=0
chase_distance=120
chase_count=0
strike=false

y = choose(190,350)

if y=190 {image_angle=0   direction=270}
if y=350 {image_angle=180 direction=90}

alarm[0]=60+irandom(60)