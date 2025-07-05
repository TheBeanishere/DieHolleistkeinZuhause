if (global.cameraflipped && obj_game.AI_sports > 0 && obj_office.powerleft > 0){
	if (stage = 1 && global.camera = 2){
		image_index = 1
		draw_self()
		return;
	}
	if (stage = 2 && global.camera = 3){
		image_index = 2
		draw_self()
		return;
	}
	if (stage = 3 && global.camera = 4){
		image_index = 3
		draw_self()
		return;
	}
	if (stage = 4 && global.camera = 1){
		image_index = 0
		draw_self()
		return;
	}
}