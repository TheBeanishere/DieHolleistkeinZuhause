x = originx + obj_camera.xTo
y = originy + obj_camera.yTo

if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_check_button_pressed(mb_left) && obj_game.AI_joetube > 0 && cooldown <= 0 && global.camera = 5 && global.cameraflipped = true){
		audio_play_sound_at(sfx_joetube_lure, 0, 0, 0, 100, 200, 1, false, 1, 0.1)
		cooldown = 800
		obj_c_joetube.movetimer = 400
		if (obj_c_joetube.stage > 4 && (((obj_c_joetube.left && !obj_lever_left.shut)) || ((!obj_c_joetube.left && !obj_lever_right.shut)))){
			obj_o_joetube.transanim = spr_office_joetube_leave
		}else{
			obj_c_joetube.stage = 1
			scr_camerastatic()
		}
	}
}

if (cooldown > 0){
	cooldown -= 1
	image_blend = c_gray
}else{
	image_blend = c_white
}