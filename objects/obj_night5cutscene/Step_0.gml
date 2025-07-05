if (intro){
	if (image_alpha < 1){
		image_alpha += 0.0075
	}else if (introdelay > 0){
		introdelay -= 1
	}else{
		image_speed = 1
		if (image_index = 6 && introsfx < 1){
			introsfx += 1
			shake = 10
			audio_play_sound(choose(sfx_satan_reveal_1, sfx_satan_reveal_2), 1,false)
			
		}
		if (image_index = 10 && introsfx < 2 && introsfx > 0){
			shake = 20
			introsfx += 1
			audio_play_sound(choose(sfx_satan_reveal_1, sfx_satan_reveal_2), 1,false)
		}
		if (image_index = 14 && introsfx < 3 && introsfx > 1){
			shake = 30
			introsfx += 1
			audio_play_sound(choose(sfx_satan_reveal_1, sfx_satan_reveal_2), 1,false, 1, 0, 0.5)
		}
	}
}else{
	if (progress < 52){
		image_index = expression[progress]
		if (array_contains(shaking, progress)){
			shake = 7
		}
		if (char < string_length(dialogue[progress])){
			timer -= 1
			if (timer <= 0){
				audio_stop_sound(sfx_talk_satan)
				timer = 4
		
				var _pitch = random_range(0.3, 0.7)
				if (array_contains(shaking, progress)){
					_pitch -= 0.25
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
	}else{
		if (endtimer > 0){
			endtimer -= 1
		}else{
			room_goto(MENU_main)
		}
		shake = 25
		//audio_sound_gain(mus_goatsgruff, lerp(audio_sound_get_gain(mus_goatsgruff), 0, 0.05), 0)
		if (audio_sound_get_pitch(mus_goatsgruff) > 0.05){
			audio_sound_pitch(mus_goatsgruff, audio_sound_get_pitch(mus_goatsgruff) - 0.005)
		}else if (audio_sound_get_gain(mus_goatsgruff) > 0){
			audio_sound_gain(mus_goatsgruff, audio_sound_get_gain(mus_goatsgruff) - 0.01, 0)
		}
		image_index = expression[progress]
		if (!audio_is_playing(sfx_satan_laugh)){
			audio_play_sound(sfx_satan_laugh, 1, false)
		}
		image_xscale -= 0.001
		image_angle = lerp(image_angle, random_range(-35, 35), 0.05)
		image_alpha -= 0.0025/2
		image_yscale -= 0.001
	}
}
var _rand = irandom_range(-2, 2)
window_set_size(lerp(window_get_width(), targetwidth + _rand, 0.01), lerp(window_get_height(), targetheight + _rand, 0.01))
window_center()
if (shake > 0){
	shake = lerp(shake, 0, 0.02)
	if (shake < 1){
		shake = 0
	}
	var _shakeness = 0
	_shakeness = random_range(-shake, shake)
	x = originx + _shakeness
	_shakeness = random_range(-shake, shake)
	y = originy + _shakeness
}