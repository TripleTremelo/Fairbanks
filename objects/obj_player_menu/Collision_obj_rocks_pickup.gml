///Collect Rocks.

items_scale[2]=choose(1.3,1.4,1.5)

global.rocks+=1
play_sound(1,snd_pickup,0,0.15,0.96,0.14,250,400,1,80)

with (other) {mask=spr_blank collected=true}