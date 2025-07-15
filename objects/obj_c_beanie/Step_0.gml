if (obj_game.AI_beanie > 0 && obj_office.powerleft > 0){
	x = originx + obj_camera.xTo + offsetx
	y = originy + obj_camera.yTo
	if (movetimer > 0){
		do{	
			if (global.night  = 1||global.night  = 2||global.night  = 3||global.night  = 4){
				place = choose(1, 2, 3, 4, 6, 7)
			}else{
				place = choose(1, 2, 3, 4, 6, 7, 9, 10, 11)
			}
		}until (place != global.camera)
		image_index = irandom_range(0, 3)
		if (obj_c_pravi.movetimer > 0){	
			movetimer -= obj_game.AI_beanie
		}
	}else{
		if (!audio_is_playing(sfx_beanie_breath) && killtimer > 0){
			audio_play_sound(sfx_beanie_breath, 1, true, 0.8)
		}
		if (killtimer > 0){
			show_debug_message(string(place))
			if (global.camera = place && global.cameraflipped){
				stare += 1
				if (stare > 30){
					offsetx = irandom_range(8, -8)
				}
				if (stare > 59){
					killtimer = 660
					stare = 0
					audio_stop_sound(sfx_beanie_breath)
					movetimer = 16000
				}
			}else{
				killtimer -= 1
				if (global.cameraflipped){
					killtimer += 0.5
				}
			}
		}else{
			if (!instance_exists(obj_jumpscare)){
				audio_stop_sound(sfx_beanie_breath)
				instance_create_layer(640, 400, "death", obj_jump_beanie)
			}
		}
	}
}