obj_camera.xTo = lerp(obj_camera.xTo, 0, 0.5)
obj_camera.yTo = lerp(obj_camera.yTo, 40, 0.5)

timer += 1

if (image_index = 2){
	if (!audio_is_playing(sfx_beanie_kill_2)){
		audio_play_sound(sfx_beanie_kill_2, 1, false, 1.3)
	}
}
if (image_index = 8){
	audio_stop_sound(sfx_beanie_kill_2)
}

if (image_index = 9){
	if (!audio_is_playing(sfx_beanie_kill_2)){
		audio_play_sound(sfx_beanie_kill_2, 1, false, 1.3)
	}
}

if (image_index = 14){
	if (!audio_is_playing(sfx_beanie_kill_3)){
		audio_play_sound(sfx_beanie_kill_3, 1, false, 1.3)
	}
}

if (timer = 107){
	if (!audio_is_playing(sfx_beanie_kill_4)){
		audio_play_sound(sfx_beanie_kill_4, 1, false, 1.3)
	}
}

if (timer = 140){
	if (!audio_is_playing(sfx_beanie_kill_1)){
		audio_play_sound(sfx_beanie_kill_1, 1, false, 1.3)
	}
	shake = true
}

if (shake){
	shakiness += 0.025
	var _shakex = irandom_range(-shakiness, shakiness)
	var _shakey = irandom_range(-shakiness, shakiness)
	obj_camera.xTo = _shakex
	obj_camera.yTo = _shakey
}