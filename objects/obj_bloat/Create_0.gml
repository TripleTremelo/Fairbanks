///Create.

sprite=spr_zombie_idle
mask=spr_zombie_idle
frame=0
scale=1
alpha=1
hp=1.5
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
spd_change=1.5+random(1.2)
max_spd=0
chase_count=0
if chance(4) {chasing=true}

alarm[1]=60+irandom(60)