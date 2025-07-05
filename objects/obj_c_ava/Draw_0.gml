if (global.cameraflipped && obj_game.AI_ava > 0 && obj_office.powerleft > 0){
	if (global.camera = 8){
		if (awake){
			if (sprite_index = spr_cameras_ava_attack){
				draw_sprite(spr_cameras_ava_damage, 0,x, y)
			}
			draw_self()
		}else{
			draw_self()
		}
	}
}