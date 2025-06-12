if (obj_game.AI_pravi > 0){
	x = originx + obj_camera.xTo
	y = originy + obj_camera.yTo
	
	if (movetimer > 0){
		movetimer -= obj_game.AI_pravi
	}
	
	if (movetimer <= 0 && sprite_index != spr_pravi_explode){
		if (!audio_is_playing(sfx_pravi_sax_1) && !audio_is_playing(sfx_pravi_sax_2)){
			cam = choose(1, 2, 3, 4, 6, 7)
			show_debug_message(string(cam))
			var _sax = choose(sfx_pravi_sax_1, sfx_pravi_sax_2)
			audio_play_sound(_sax, 1, true, 0.6)
		}
		if (fuse > 0){
			fuse -= 1
			if (global.camera = cam && global.cameraflipped && sprite_index != spr_pravi_explode){
				stare += .001
				if (stare >= 120){
					audio_stop_sound(sfx_pravi_sax_1)
					audio_stop_sound(sfx_pravi_sax_2)
					audio_play_sound(sfx_pravi_bonk, 1, false, 0.6)
					movetimer = 384
					fuse = 300
					stare = 0
				}
			}
		}else{
			if (sprite_index != spr_pravi_explode){
				sprite_index = spr_pravi_explode
				image_index = 0
				audio_stop_sound(sfx_pravi_sax_1)
				audio_stop_sound(sfx_pravi_sax_2)
				audio_play_sound(sfx_pravi_explode, 1, false, 1.5)
			}
		}
	}
}