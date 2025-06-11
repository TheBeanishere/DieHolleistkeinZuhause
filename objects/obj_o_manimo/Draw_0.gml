if (!global.cameraflipped && obj_c_manimo.stage > 4 && !instance_exists(obj_jump_manimo)){
	if (transanim != 0 && sprite_index != spr_office_manimo_stand){
		if (obj_c_manimo.mirror){
				if (obj_door_right.lightalpha < 0.9){
					draw_sprite_ext(spr_office_manimo_light, 0, x, y, image_xscale, 1, 0, c_white, 1)
				}
		}else if (obj_door_left.lightalpha < 0.9){
			draw_sprite_ext(spr_office_manimo_light, 0, x, y, image_xscale, 1, 0, c_white, 1)
		}
	}
	draw_self()
}