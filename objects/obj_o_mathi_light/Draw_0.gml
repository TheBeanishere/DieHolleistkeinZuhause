if (!global.cameraflipped && obj_c_mathi.stage > 7 && !instance_exists(obj_jump_mathi) && obj_c_mathi.lightactive){
	draw_self()
	draw_sprite_ext(spr_office, 1, -335, y, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_office, 2, -335, y, 1, 1, 0, c_white, 1)
}