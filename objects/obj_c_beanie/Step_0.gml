if (obj_game.AI_beanie > 0){
	x = originx + obj_camera.xTo + offsetx
	y = originy + obj_camera.yTo
	if (movetimer > 0){
		place = choose(1, 2, 3, 4, 6, 7)
		image_index = irandom_range(0, 2)
		movetimer -= obj_game.AI_beanie
	}else{
		if (!audio_is_playing(sfx_beanie_breath) && killtimer > 0){
			audio_play_sound(sfx_beanie_breath, 1, true, 0.8)
		}
		if (killtimer > 0){
			show_debug_message(string(place))
			if (global.cameraflipped && global.camera = place){
				stare += 1
				if (stare > 45){
					offsetx = irandom_range(8, -8)
				}
				if (stare > 89){
					killtimer = 300
					stare = 0
					audio_stop_sound(sfx_beanie_breath)
					movetimer = 25200
				}
			}else{
				killtimer -= 1
			}
		}else{
			if (!instance_exists(obj_jump_beanie)){
				audio_stop_sound(sfx_beanie_breath)
				instance_create_layer(640, 400, "death", obj_jump_beanie)
			}
		}
	}
}