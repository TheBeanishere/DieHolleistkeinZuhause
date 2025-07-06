x = originx + obj_camera.xTo
y = originy + obj_camera.yTo

if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_check_button_pressed(mb_left) && obj_game.AI_mathi > 0 && cooldown <= 0 && global.camera = 11 && global.cameraflipped = true){
		audio_play_sound(sfx_toilet, 1, false)
		cooldown = 1200
		scr_camerastatic()
		obj_c_mathi5000.movetimer = 435
		obj_c_mathi5000.stage = 1
	}
}

if (cooldown > 0){
	cooldown -= 1
	image_blend = c_gray
}else{
	image_blend = c_white
}