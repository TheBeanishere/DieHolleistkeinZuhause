if (global.cameraflipped){
	if (obj_office.powerleft <= 0){
		draw_self()
		sprite_index = spr_cameras_nopower
	}else if (array_contains(obj_office.disabledcams, global.camera)){
		draw_self()
		sprite_index = spr_cameras_disabled
	}
}