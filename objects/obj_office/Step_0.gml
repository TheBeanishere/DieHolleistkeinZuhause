usage = doorleft + doorright + lightleft + lightright + global.cameraflipped + 0.5

if (obj_c_pravi.movetimer <= 0){
	usage += 0.65
}

if (keyboard_check_pressed(vk_space)){
	global.cameraflipped = !global.cameraflipped
}

powerleft -= usage/30

if (time > 2700){
	time = 0
	hours += 1
}

time += 1

//TEMP

if (hours = 6){
	show_message("YOU WIN")
	game_end()
}

if (powerleft <= 0){
	show_message("POWER OUTAGE")
	room_goto(MENU_custom)
}