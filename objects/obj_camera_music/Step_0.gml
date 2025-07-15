x = originx + obj_camera.xTo
y = originy + obj_camera.yTo

if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_check_button(mb_left) && global.camera = 8 && global.cameraflipped = true && obj_game.AI_ava > 0){
		obj_c_ava.wind += 120
		if (obj_c_ava.wind > 12000){
			obj_c_ava.wind = 12000
		}
		image_blend = c_grey
	}else{
		image_blend = c_white
	}
}else{
	image_blend = c_white
}