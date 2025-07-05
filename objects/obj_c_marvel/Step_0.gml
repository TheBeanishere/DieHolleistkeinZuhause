if (obj_game.AI_marvel > 0 && obj_office.powerleft > 0){
	if (stage < 4){
		if (movetimer > 0){
			if (stage = 0){
				movetimer -= 0.5
			}else{
				movetimer -= 1
			}
		}else{
			if (stage = 0){
				stage = 1
			}else{
				var _rand = irandom_range(1, 20)
				if (obj_game.AI_marvel >= _rand){
					stage += 1
				}
			}
			movetimer = 315
			if (stage = 1){
				if (global.camera = location){
					scr_camerastatic()
				}
				location = choose(9, 10)
			}
			if (global.camera = location){
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