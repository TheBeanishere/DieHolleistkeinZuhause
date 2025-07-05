if (global.cameraflipped && obj_game.AI_joetube > 0 && obj_office.powerleft > 0){
	if (global.camera = 5 && stage < 4){
		image_index = stage - 1
		draw_self()
		return;
	}
	if (stage = 4 && global.camera = 1){
		image_index = 3
		draw_self()
		return;
	}
}