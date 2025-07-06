if (obj_game.AI_mathi > 0 && obj_office.powerleft > 0){
	if (obj_cameras.offsetx > 200){
		x = obj_camera.xTo - 200
	}else if (obj_cameras.offsetx < 0){
		x = obj_camera.xTo
	}else{
		x = obj_camera.xTo - obj_cameras.offsetx
	}
	y = obj_camera.yTo
	if (movetimer > 0){
		movetimer -= 1
	}else{
		movetimer = 435
		var _rand = irandom_range(1, 20)
		if (obj_game.AI_mathi >= _rand){
			var _vent = choose(sfx_vent_1, sfx_vent_2, sfx_vent_3)
			audio_play_sound(_vent, 1, false)
			stage += 1
			if (global.camera){
				scr_camerastatic()
			}
			if (stage = 5 && !instance_exists(obj_jumpscare)){
				instance_create_layer(640, 400, "death", obj_jump_mathi5000)
			}
		}
	}
}