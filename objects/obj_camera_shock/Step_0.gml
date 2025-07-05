x = originx + obj_camera.xTo
y = originy + obj_camera.yTo

if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_check_button_pressed(mb_left) && obj_game.AI_stitcher > 0 && cooldown <= 0 && global.camera = 8 && global.cameraflipped = true){
		if (obj_c_stitcher.active){	
			audio_play_sound(sfx_stitcher_shock, 1, false)
			obj_c_stitcher.active= false
			obj_c_stitcher.sprite_index = spr_cameras_stitcher_shock
			obj_o_stitcher.image_speed = 0
			obj_o_stitcher.image_index = 0
		}else{
			audio_play_sound(sfx_stitcher_shock_fail, 1, false)
		}
		cooldown = 600
	}
}

if (cooldown > 0){
	cooldown -= 1
	image_blend = c_gray
}else{
	image_blend = c_white
}