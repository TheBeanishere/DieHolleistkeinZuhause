obj_camera.xTo = lerp(obj_camera.xTo, 0, 0.5)
obj_camera.yTo = lerp(obj_camera.yTo, 40, 0.5)

if (image_index = 7){
	if (!audio_is_playing(sfx_manimo_kill_1)){
		audio_play_sound(sfx_manimo_kill_1, 1, false, 1.3)
	}
	shake = true
}

if (shake){
	var _shakex = irandom_range(-32, 32)
	var _shakey = irandom_range(-32, 32)
	obj_camera.xTo = _shakex
	obj_camera.yTo = _shakey
}