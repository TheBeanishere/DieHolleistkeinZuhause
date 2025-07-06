if (intro){
	if (image_alpha < 1){
		image_alpha += 0.0075
	}else if (introdelay > 0){
		introdelay -= 1
	}else{
		intro = false
	}
}else{
	if (progress < 49){
		if ((progress < 37 || forgave != "")){
			buttonfade = lerp(buttonfade, 0, 0.05)
			if (char < string_length(dialogue[progress])){
				timer -= 1
				if (timer <= 0){
					audio_stop_sound(sfx_talk_satan)
					timer = 4
					var _pitch = random_range(0.7, 1.2)
					char += irandom_range(2,4)
					audio_play_sound(sfx_talk_satan, 1, false, 0.5, 0, _pitch)
				}
			}else{
				audio_stop_sound(sfx_talk_satan)
				nextdialogue -= 1
				if (keyboard_check_pressed(vk_enter)||nextdialogue <= 0|| (progress = 45 && char >= string_length(dialogue[progress]) )){
					progress += 1
					timer = 4
					char = 0
					nextdialogue = 180
					if (progress = 46){
						audio_stop_sound(mus_the_unforgiving)
						audio_play_sound(choose(sfx_punish_1, sfx_punish_2, sfx_punish_3, sfx_punish_4), 1, false)
					}
					if (progress > 46){
						shake = 12 + (progress * 0.2)
						image_alpha = 2
						audio_play_sound(choose(sfx_punish_1, sfx_punish_2, sfx_punish_3, sfx_punish_4), 1, false)
					}
					if (progress = 42 && forgave = "yes"){
						progress = 50
					}
				}
			}
			image_index = expression[progress]
		}else{
			buttonfade = lerp(buttonfade, 1, 0.05)
			if (keyboard_check_pressed(ord("Y"))){
				forgave = "yes"
			}
			if (keyboard_check_pressed(ord("N"))){
				forgave = "no"
				progress = 43
			}
		}
	}else{
		image_alpha -= 0.005
		if (image_alpha <= 0){
			room_goto(CREDITS)
		}
	}
}
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