y -= 2
if (keyboard_check(vk_enter)){
	y -= 8
}
if (y < -2880){
	room_goto(MENU_main)
}
drawalpha -= 0.006