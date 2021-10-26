///Step.

if keyboard_check_pressed(ord("F")) {if window_get_fullscreen() {window_set_fullscreen(0)} else {window_set_fullscreen(1)}}


//CHEATS.
if keyboard_check_pressed(ord("M")) {if !global.show_masks {global.show_masks=true} else {global.show_masks=false}}
//if keyboard_check_pressed(ord("Q")) {game_end()}
if keyboard_check_pressed(ord("7")) {room_speed=300}
if keyboard_check_pressed(ord("8")) {if room_speed > 10 {room_speed-=10} else {room_speed=1}}
if keyboard_check_pressed(ord("9")) {room_speed=60}