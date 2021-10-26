///Create.

hp=0
if instance_exists(obj_player) {hp=obj_player.player_hp}

depth=-7500

audio_pause_all()
instance_deactivate_all(1)

audio_resume_sound(snd_snow)
audio_resume_sound(snd_ambience)
instance_activate_object(obj_gen_snow)

play_sound_not_3d(1,snd_menu_pause,0,0.3,1,0)

menu[0] = "RESUME"
menu[1] = "MAIN MENU"
menu[2] = "QUIT GAME"

space=10
pointer_pos=0
push=0
move=0
scale=1
delay=11
glide=0
glide_count=0
hue=0
scale=0.5
can_navigate=true
item_space=36
pause_y=270

item_slots[0]=0
item_slots[1]=0
item_slots[2]=0
item_slots[3]=0