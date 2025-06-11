if (obj_game.AI_joetube > 0){
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
		movetimer = 200
		randomize()
		var _move = irandom_range(1, 20)
		if (_move <= obj_game.AI_joetube){
			if (stage < 5){
				stage += 1
				if (stage < 4 && global.camera = 5){
					scr_camerastatic()
				}
				if (stage = 4 && (global.camera = 1 || global.camera = 5)){
					scr_camerastatic()
				}
				if (stage > 4 && global.camera = 1){
					scr_camerastatic()
				}
				if (stage = 5){
					left = choose(true,false)
					obj_o_joetube.transanim = spr_office_joetube_enter
					obj_o_joetube.image_index = 0
					var _voice = choose(sfx_joetube_aggro_1, sfx_joetube_aggro_2, sfx_joetube_aggro_3, sfx_joetube_aggro_4)
					if (left){
						audio_play_sound_at(_voice, -70, 0, 0, 100, 200, 1, false, 1, 0.7)
					}else{
						audio_play_sound_at(_voice, 70, 0, 0, 100, 200, 1, false, 1, 0.7)
					}
				}
			}
		}
	}
}