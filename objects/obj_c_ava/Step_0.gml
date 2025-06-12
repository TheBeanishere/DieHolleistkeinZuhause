if (obj_game.AI_ava > 0){
	if (!audio_is_playing(mus_ava_musicbox)){
		audio_play_sound(mus_ava_musicbox, 1, true, 0.4)
	}
	if (wind <= 0){
		if (!awake){
			if (global.camera = 8){
				scr_camerastatic()
			}
			sprite_index = spr_cameras_ava_attack
			image_index = 0
			awake = true
			obj_office.powerleft -= obj_office.powermax/2
			audio_stop_sound(mus_ava_musicbox)
			audio_play_sound(sfx_ava_break, 1, false, 1.4)
		}
	}else{
		wind -= obj_game.AI_ava/2
	}
	
	if (obj_cameras.offsetx > 200){
		x = obj_camera.xTo - 200
	}else if (obj_cameras.offsetx < 0){
		x = obj_camera.xTo
	}else{
		x = obj_camera.xTo - obj_cameras.offsetx
	}
	y = obj_camera.yTo
	
	if (global.cameraflipped && global.camera = 8){
		audio_sound_gain(mus_ava_musicbox, 1.25, 50)
	}else{
		audio_sound_gain(mus_ava_musicbox, 0.75, 50)
	}
	
	if (awake){
		audio_sound_pitch(mus_ava_musicbox, lerp(audio_sound_get_pitch(mus_ava_musicbox), 0.6, 0.01))
		audio_sound_gain(mus_ava_musicbox, 0, 3000)
	}else{
		audio_sound_pitch(mus_ava_musicbox, 1)
	}
	
}