obj_camera.xTo = lerp(obj_camera.xTo, 0, 0.5)
obj_camera.yTo = lerp(obj_camera.yTo, 40, 0.5)

if (image_index = 5){
	if (!audio_is_playing(sfx_coconut_bonk)){
		audio_play_sound(sfx_coconut_bonk, 1, false, 1.3)
	}
}