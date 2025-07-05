x = originx + obj_camera.xTo
y = originy + obj_camera.yTo

image_index = camID - 1 + (selected * 11)

if ((camID = 9||camID = 10|| camID = 11) && (global.night = 1||global.night = 2||global.night = 3||global.night = 4)){
	
}else if (collision_point(mouse_x, mouse_y, self, false, false) && global.cameraflipped){
	if (mouse_check_button_pressed(mb_left)){
		global.camera = camID
		if (!collision_point(mouse_x, mouse_y, obj_camera_music, false, false)){
			scr_camerastatic()
		}
	}
}

if (global.camera = camID){
	selected = true
}else{
	selected = false
}