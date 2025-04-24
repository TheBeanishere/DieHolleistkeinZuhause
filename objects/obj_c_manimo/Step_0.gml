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
	if (movetimer <= 0){
		movetimer = 360
		randomize()
		var _move = irandom_range(1, 20)
		if (_move <= obj_game.AI_manimo){
			if (stage < 5){
				stage += 1
			}else if (stage = 5){
				obj_o_manimo.transanim = spr_office_manimo_enter
				obj_o_manimo.image_index = 0
			}
		}
	}
}