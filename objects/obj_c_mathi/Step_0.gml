if (obj_game.AI_satan > 0){
	if (obj_cameras.offsetx > 200){
		x = obj_camera.xTo - 200
	}else if (obj_cameras.offsetx < 0){
		x = obj_camera.xTo
	}else{
		x = obj_camera.xTo - obj_cameras.offsetx
	}
	y = obj_camera.yTo
	
	if (kill){
		killtimer -= 1
		if (killtimer <= 0){
			if (!instance_exists(obj_jumpscare)){
				instance_create_layer(640, 400, "death", obj_jump_mathi)
			}
		}
	}else{
		movetimer -= 1
	}
	
	if (lightactive){
		movetimer = 15
		if (stage = 8){
			if (obj_door_left.lightalpha < 0.9){
				lightscare += 1
			}else if (!obj_lever_left.shut){
				lightkill += 1
			}
		}
		if (stage = 9){
			if (obj_door_right.lightalpha < 0.9){
				lightscare += 1
			}else if (!obj_lever_right.shut){
				lightkill += 1
			}
		}
			
		if (lightscare >= 90){
			obj_o_mathi_light.transanim = spr_office_mathi_shock
			obj_o_mathi_light.image_index = 0
			lightscare = 0
			lightkill = 0
			movetimer = 155
			if (stage = 9){
				audio_play_sound_at(sfx_mathi_bonk, 70, 0, 0, 100, 200, 1, false, 1, 0.7)
			}
			if (stage = 8){
				audio_play_sound_at(sfx_mathi_bonk, -70, 0, 0, 100, 200, 1, false, 1, 0.7)
			}
			audio_stop_sound(sfx_mathi_aggro_1)
			audio_stop_sound(sfx_mathi_aggro_2)
			audio_stop_sound(sfx_mathi_aggro_3)
			audio_stop_sound(sfx_mathi_aggro_4)
			audio_stop_sound(sfx_mathi_aggro_5)
			
		}
		
		if (lightkill >= 210){
			if (!instance_exists(obj_jumpscare)){
				instance_create_layer(640, 400, "death", obj_jump_mathi)
			}
		}
	}
	
	if (movetimer <= 0){
		movetimer = 155
		
		randomize()
		var _move = irandom_range(1, 20)
		if (_move <= obj_game.AI_satan){
			if (stage = 8){
				if (light){
					
				}else{
					kill = true
					obj_o_mathi.transanim = spr_office_mathi_enter
				}
			}
			if (stage = 9){
				if (light){
					
				}else{
					kill = true
					obj_o_mathi.transanim = spr_office_mathi_enter
				}
			}
			if (stage = 6){
				stage = 8
				if (light){
					var _voice = choose(sfx_mathi_aggro_1, sfx_mathi_aggro_2, sfx_mathi_aggro_3, sfx_mathi_aggro_4, sfx_mathi_aggro_5)
					audio_play_sound_at(_voice, -70, 0, 0, 100, 200, 1, false, 1, 0.7)
					lightactive = true
				}
				movetimer *= 2.65
				if (global.camera = 6){
					scr_camerastatic()
				}
				if (obj_lever_left.shut && !light){
					stage = 3
					if (global.camera = 3){
						scr_camerastatic()
					}
					obj_o_mathi.transanim = noone
					obj_o_mathi.sprite_index = spr_office_mathi
				}
			}
			if (stage = 7){
				stage = 9
				if (light){
					var _voice = choose(sfx_mathi_aggro_1, sfx_mathi_aggro_2, sfx_mathi_aggro_3, sfx_mathi_aggro_4, sfx_mathi_aggro_5)
					audio_play_sound_at(_voice, 70, 0, 0, 100, 200, 1, false, 1, 0.7)
					lightactive = true
				}
				movetimer *= 2.65
				if (global.camera = 7){
					scr_camerastatic()
				}
				if (obj_lever_right.shut && !light){
					stage = 3
					if (global.camera = 3){
						scr_camerastatic()
					}
					obj_o_mathi.transanim = noone
					obj_o_mathi.sprite_index = spr_office_mathi
				}
			}
			if (stage = 1){
				stage = choose(6, 7)
				light = choose(true, false, false)
				if (global.camera = stage || global.camera = 1){
					scr_camerastatic()
				}
			}
			if (stage = 2){
				stage = choose(1, 3)
				if (global.camera = stage || global.camera = 2){
					scr_camerastatic()
				}
			}
			if (stage = 3){
				stage = choose(2, 4)
				if (global.camera = stage || global.camera = 3){
					scr_camerastatic()
				}
			}
			if (stage = 4){
				stage = choose(1, 3)
				if (global.camera = stage || global.camera = 4){
					scr_camerastatic()
				}
			}
		}
		show_debug_message("mathi move:" + string(stage))
	}
}