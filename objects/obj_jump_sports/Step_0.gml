obj_camera.xTo = lerp(obj_camera.xTo, 0, 0.5)
obj_camera.yTo = lerp(obj_camera.yTo, 40, 0.5)

if (image_index = 15){
	if (!audio_is_playing(sfx_sports_kill_2)){
		audio_play_sound(sfx_sports_kill_2, 1, false, 1.3)
	}
}

if (image_index = 21){
	if (!audio_is_playing(sfx_sports_kill_3)){
		audio_play_sound(sfx_sports_kill_3, 1, false, 0.6)
	}
}

