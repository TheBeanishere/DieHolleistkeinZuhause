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
				stage += 1
				if (global.camera = 2){
					scr_camerastatic()
				}
			}
		}
	}
}