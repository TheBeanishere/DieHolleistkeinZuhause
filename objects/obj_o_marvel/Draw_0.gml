if (!global.cameraflipped && obj_c_marvel.stage > 3 && !instance_exists(obj_jump_marvel) && obj_office.powerleft > 0){
	if ((obj_c_marvel.location = 10 && obj_lever_right.shut) || (obj_c_marvel.location = 9 && obj_lever_left.shut)){
		
	}else{
		if (obj_c_marvel.location = 10){
				if (obj_door_right.lightalpha < 0.9){
					draw_sprite_ext(spr_office_marvel_light, 0, x, y, image_xscale, 1, 0, c_white, 1)
				}
		}else if (obj_door_left.lightalpha < 0.9){
			draw_sprite_ext(spr_office_marvel_light, 0, x, y, image_xscale, 1, 0, c_white, 1)
		}
		draw_self()
	}
}