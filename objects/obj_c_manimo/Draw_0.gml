if (global.cameraflipped && obj_game.AI_manimo > 0){
	if (stage = 1 && global.camera = 3){
		image_index = 2
		draw_self()
		return;
	}
	if (stage = 2 && global.camera = 4){
		image_index = 3
		draw_self()
		return;
	}
	if (stage = 3 && global.camera = 1){
		image_index = 0
		draw_self()
		return;
	}
	if (stage = 4 && global.camera = 7 && mirror){
		image_index = 6
		draw_self()
		return;
	}else if (stage = 4 && global.camera = 6 && !mirror){
		image_index = 5
		draw_self()
		return;
	}
	if (stage = 5 && global.camera = 7 && mirror){
		image_index = 11
		draw_self()
		return;
	}else if (stage = 5 && global.camera = 6 && !mirror){
		image_index = 10
		draw_self()
		return;
	}
}