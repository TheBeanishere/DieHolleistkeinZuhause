if (!global.cameraflipped){
	if (!obj_office.doorleft){
		if (collision_point(mouse_x, mouse_y, self, false, false)){
			if (mouse_check_button_pressed(mb_left)){
				clicked = true
			}
			if (clicked){
				if (mouse_check_button(mb_left)){
					lightalpha = 0.6
					obj_office.lightleft = true
					randomize()
					audio_sound_gain(sfx_lightbuzz_left, 2, 150)
					flicker = random_range(0, 0.05)
				}else{
					clicked = false
				}
			}else{
				obj_office.lightleft = false
				audio_sound_gain(sfx_lightbuzz_left, 0, 150)
				lightalpha = lerp(lightalpha, 1, 0.05)
			}
		}else{
			audio_sound_gain(sfx_lightbuzz_left, 0, 150)
			lightalpha = lerp(lightalpha, 1, 0.05)
			clicked = false
		}
	}else{
		clicked = false
		audio_sound_gain(sfx_lightbuzz_left, 0, 150)
		obj_office.lightleft = false
		lightalpha = lerp(lightalpha, 1, 0.05)
	}
}else{
	clicked = false
	audio_sound_gain(sfx_lightbuzz_left, 0, 150)
	obj_office.lightleft = false
	lightalpha = lerp(lightalpha, 1, 0.05)
}

if (transanim != noone){
	sprite_index = transanim
}