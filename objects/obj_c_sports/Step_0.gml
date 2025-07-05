if (obj_game.AI_sports > 0 && obj_office.powerleft > 0){
	if (stage = 6){
		killtimer -= 1
		if (killtimer <= 0){
			if ((right && !obj_lever_right.shut)||(!right && !obj_lever_left.shut)){
				if (!instance_exists(obj_jumpscare)){	
					instance_create_layer(640, 400, "death", obj_jump_sports)
				}
			}else{
				stage = 1
				if (right){
					audio_play_sound_at(sfx_sports_bonk, 70, 0, 0, 100, 200, 1, false, 1, 0.7)
				}else{
					audio_play_sound_at(sfx_sports_bonk, -70, 0, 0, 100, 200, 1, false, 1, 0.7)
				}
				if (global.camera = 2){
					scr_camerastatic()
				}
			}
		}
	}
	if (obj_cameras.offsetx > 200){
		x = obj_camera.xTo - 200
	}else if (obj_cameras.offsetx < 0){
		x = obj_camera.xTo
	}else{
		x = obj_camera.xTo - obj_cameras.offsetx
	}
	y = obj_camera.yTo
	movetimer -= 1
	if (movetimer <= 0){
		movetimer = 240
		randomize()
		var _move = irandom_range(1, 20)
		if (_move <= obj_game.AI_sports){
			if (stage < 6){
				stage += 1
				var _step = choose(sfx_sports_step_1, sfx_sports_step_2)
				if (stage = 2){
					if (global.camera = 2|| global.camera = 3){
						scr_camerastatic()
					}
					audio_play_sound_at(_step, 10, 0, 0, 100, 200, 1, false, 1, 0.1)
				}
				if (stage = 3){
					if (global.camera = 3|| global.camera = 4){
						scr_camerastatic()
					}
					audio_play_sound_at(_step, -50, 0, 0, 100, 200, 1, false, 1, 0.1)
				}
				if (stage = 4){
					if (global.camera = 4|| global.camera = 1){
						scr_camerastatic()
					}
					audio_play_sound_at(_step, -10, 0, 0, 100, 200, 1, false, 1, 0.2)
				}
				if (stage = 5){
					if (global.camera = 1){
						scr_camerastatic()
					}
					randomise()
					var _dir = choose(true, false)
					right = _dir
					var _voice = choose(sfx_sports_aggro_1, sfx_sports_aggro_2, sfx_sports_aggro_3, sfx_sports_aggro_4, sfx_sports_aggro_5)
					if (right){
						audio_play_sound_at(_voice, 40, 0, 0, 100, 200, 1, false, 1, 0.5)
					}else{
						audio_play_sound_at(_voice, -40, 0, 0, 100, 200, 1, false, 1, 0.5)
					}
					movetimer /= 2
				}
				if (stage = 6){
					killtimer = 150
					if (right){
						audio_play_sound(sfx_sports_run_right, 1, false, 2)
					}else{
						audio_play_sound(sfx_sports_run_left, 1, false, 2)
					}
				}
			}
		}
	}
}