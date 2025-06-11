if (room = init && audio_group_is_loaded(sfx) && audio_group_is_loaded(music) && (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_enter))){
	room_goto(MENU_main)
}

if (keyboard_check_pressed(vk_f11)){
	window_set_fullscreen(!window_get_fullscreen())
}