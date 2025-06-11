if (!global.cameraflipped){
	if (!obj_office.doorright){
		if (collision_point(mouse_x, mouse_y, self, false, false)){
			if (mouse_check_button_pressed(mb_left)){
				clicked = true
			}
			if (clicked){
				if (mouse_check_button(mb_left)){
					lightalpha = 0.6
					obj_office.lightright = true
					randomize()
					flicker = random_range(0, 0.05)
					audio_sound_gain(sfx_lightbuzz_right, 2, 150)
				}else{
					clicked = false
				}
			}else{
				obj_office.lightright = false
				audio_sound_gain(sfx_lightbuzz_right, 0, 150)
				lightalpha = lerp(lightalpha, 1, 0.05)
			}
		}else{
			audio_sound_gain(sfx_lightbuzz_right, 0, 150)
			lightalpha = lerp(lightalpha, 1, 0.05)
			clicked = false
		}
	}else{
		clicked = false
		obj_office.lightright = false
		audio_sound_gain(sfx_lightbuzz_right, 0, 150)
		lightalpha = lerp(lightalpha, 1, 0.05)
	}
}else{
	clicked = false
	obj_office.lightright = false
	audio_sound_gain(sfx_lightbuzz_right, 0, 150)
	lightalpha = lerp(lightalpha, 1, 0.05)
}

if (transanim != noone){
	sprite_index = transanim
}