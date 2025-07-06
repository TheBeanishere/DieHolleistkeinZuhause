if (audio_is_playing(sfx_call_2)||audio_is_playing(sfx_call_3)||audio_is_playing(sfx_call_4)||audio_is_playing(sfx_call_5)||audio_is_playing(sfx_call_1)){
	if (collision_point(mouse_x, mouse_y, self, false, false) && mouse_check_button_pressed(mb_left)){
		audio_stop_sound(sfx_call_1)
		audio_stop_sound(sfx_call_2)
		audio_stop_sound(sfx_call_3)
		audio_stop_sound(sfx_call_4)
		audio_stop_sound(sfx_call_5)
	}
	x = obj_camera.xTo
	y = obj_camera.yTo+96
}else{
	instance_destroy(self)
}