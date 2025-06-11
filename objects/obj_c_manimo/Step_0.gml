if (obj_game.AI_manimo > 0){
	if (obj_cameras.offsetx > 200){
		x = obj_camera.xTo - 200
	}else if (obj_cameras.offsetx < 0){
		x = obj_camera.xTo
	}else{
		x = obj_camera.xTo - obj_cameras.offsetx
	}
	y = obj_camera.yTo
	movetimer -= 1
	if (stage = 6){
		killtimer -= 1
		if (killtimer <= 0){
			if (!instance_exists(obj_jump_manimo)){	
				instance_create_layer(640, 400, "death", obj_jump_manimo)
			}
		}
	}
	if (movetimer <= 0){
		movetimer = 120
		randomize()
		var _move = irandom_range(1, 20)
		if (_move <= obj_game.AI_manimo){
			if (stage < 5){
				stage += 1
				var _step = choose(sfx_manimo_step_1, sfx_manimo_step_2, sfx_manimo_step_3)
				if (stage = 2){
					if (global.camera = 4 || global.camera = 3){
						scr_camerastatic()
					}
					audio_play_sound_at(_step, -30, 0, 0, 100, 200, 1, false, 1, 0.1)
				}
				if (stage = 3){
					if (global.camera = 1 || global.camera = 4){
						scr_camerastatic()
					}
					audio_play_sound_at(_step, 0, 0, 0, 100, 200, 1, false, 1, 0.2)
				}
				if (stage = 4|| stage = 5){
					if (mirror){
						if (stage = 4 && global.camera = 1){
							scr_camerastatic()
						}else if (global.camera = 7){
							scr_camerastatic()
						}
						audio_play_sound_at(_step, 30, 0, 0, 100, 200, 1, false, 1, 0.3)
					}else{
						if (stage = 4 && global.camera = 1){
							scr_camerastatic()
						}else if (global.camera = 6){
							scr_camerastatic()
						}
						audio_play_sound_at(_step, -30, 0, 0, 100, 200, 1, false, 1, 0.3)
					}
				}
				if (stage != 4 && stage != 5 && stage != 6){
					randomise()
					var _mirror = choose(true, false)
					mirror = _mirror
				}
				if (stage = 5){
					movetimer *= 2
					var _voice = choose(sfx_manimo_aggro_1, sfx_manimo_aggro_2, sfx_manimo_aggro_3, sfx_manimo_aggro_4)
					if (mirror){
						audio_play_sound_at(_voice, 30, 0, 0, 100, 200, 1, false, 1)
					}else{
						audio_play_sound_at(_voice, -30, 0, 0, 100, 200, 1, false, 1)
					}
				}
			}else if (stage = 5){
				obj_o_manimo.transanim = spr_office_manimo_enter
				obj_o_manimo.image_index = 0
			}
			if (stage > 4){
				if ((mirror && obj_lever_right.shut) || (!mirror && obj_lever_left.shut)){
					stage = 1
					if (global.camera = 3){
						scr_camerastatic()
					}
					obj_o_manimo.transanim = noone
					obj_o_manimo.sprite_index = spr_office_manimo
				}
			}
			
		}
	}
}