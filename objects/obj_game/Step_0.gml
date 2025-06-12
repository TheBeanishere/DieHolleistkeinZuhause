if (room = init && audio_group_is_loaded(sfx) && audio_group_is_loaded(music)){
	room_goto(MENU_main)
}

if (keyboard_check_pressed(vk_f11)){
	window_set_fullscreen(!window_get_fullscreen())
}

if (keyboard_check_pressed(vk_escape) && room = NIGHT_1){
	room_goto(MENU_custom)
}

if (room = MENU_custom && keyboard_check_pressed(vk_enter)){
	room_goto(NIGHT_1)
}