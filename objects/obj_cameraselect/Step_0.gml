x = originx + obj_camera.xTo
y = originy + obj_camera.yTo

image_index = camID - 1 + (selected * 8)

if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_check_button_pressed(mb_left)){
		global.camera = camID
		obj_camstatic.image_alpha = 1
	}
}

if (global.camera = camID){
	selected = true
}else{
	selected = false
}