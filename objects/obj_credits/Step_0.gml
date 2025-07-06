y -= 2
if (keyboard_check_pressed(vk_enter)){
	y -= 6
}
if (y < -2880){
	room_goto(MENU_main)
}
drawalpha -= 0.006