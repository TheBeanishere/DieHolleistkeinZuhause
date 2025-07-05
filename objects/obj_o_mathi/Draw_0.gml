if (!global.cameraflipped && obj_c_mathi.stage > 7 && !instance_exists(obj_jump_mathi) && !obj_c_mathi.light && obj_office.powerleft > 0){
	if (transanim != 0 && sprite_index != spr_office_mathi_stand){
		if (obj_c_mathi.stage = 9){
				if (obj_door_right.lightalpha < 0.9){
					draw_sprite_ext(spr_office_mathi_light, 0, x, y, image_xscale, 1, 0, c_white, 1)
				}
		}else if (obj_door_left.lightalpha < 0.9){
			draw_sprite_ext(spr_office_mathi_light, 0, x, y, image_xscale, 1, 0, c_white, 1)
		}
	}
	draw_self()
}