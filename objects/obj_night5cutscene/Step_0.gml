if (char < string_length(dialogue[progress])){
	timer -= 1
	if (timer <= 0){
		audio_stop_sound(sfx_talk_satan)
		timer = 4
		
		var _pitch = random_range(0.3, 0.7)
		if (array_contains(shaking, progress)){
			_pitch -= 0.3
			char += 0.5
		}else{
			char += irandom_range(2,4)
		}
		audio_play_sound(sfx_talk_satan, 1, false, 1, 0, _pitch)
	}
}else{
	audio_stop_sound(sfx_talk_satan)
	nextdialogue -= 1
	if (keyboard_check_pressed(vk_enter)||nextdialogue <= 0){
		progress += 1
		timer = 4
		char = 0
		nextdialogue = 180
	}
}
var _rand = irandom_range(-2, 2)
window_set_size(lerp(window_get_width(), targetwidth + _rand, 0.01), lerp(window_get_height(), targetheight + _rand, 0.01))
window_center()