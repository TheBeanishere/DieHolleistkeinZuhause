if (obj_game.AI_liru > 0 && obj_office.powerleft > 0){
	if (obj_cameras.offsetx > 200){
		x = obj_camera.xTo - 200
	}else if (obj_cameras.offsetx < 0){
		x = obj_camera.xTo
	}else{
		x = obj_camera.xTo - obj_cameras.offsetx
	}
	y = obj_camera.yTo
	if (global.cameraflipped && global.camera = 2){
		staretime -= 1
		if (staretime = 0){
			staretime = 90
			movetimer = 240
			if (stage > 1){
				scr_camerastatic()
				stage -= 1
			}
		}
	}
	movetimer -= 1
	if (movetimer <= 0){
		movetimer = 240
		randomize()
		var _move = irandom_range(1, 20)
		if (_move <= obj_game.AI_liru){
			if (stage < 5){
				var _voice = choose(sfx_liru_1, sfx_liru_2, sfx_liru_3)
				audio_play_sound_at(_voice, 50, 0, 30, 100, 200, 1, false, 1, 0.7)
				stage += 1
				if (global.camera = 2){
					scr_camerastatic()
				}
			}else{
				if (global.camera = 2){
					scr_camerastatic()
				}
				if (global.cameraflipped){
					obj_o_liru.sprite_index = spr_office_liru
					global.cameraflipped = false
				}else{
					obj_o_liru.sprite_index = spr_office_liru
				}
				obj_o_liru.image_index = 0
				obj_o_liru.image_speed = 1
				obj_o_liru.image_alpha = 1
				instance_destroy(obj_camerabutton)
			}
		}
	}
}