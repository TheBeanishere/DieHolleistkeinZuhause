if (obj_game.AI_roachy > 0 && obj_office.powerleft > 0){
	if (spawntimer > 0){
		spawntimer -= 1
	}else{
		repeat(spawnamounts[obj_game.AI_roachy]){
			instance_create_layer(0, 0, "popup", obj_c_roachy_popup)
		}
		spawntimer = 1200
	}
	if (collision_point(mouse_x, mouse_y, obj_c_roachy_popup, false, true) && global.cameraflipped){
		if (mouse_check_button_pressed(mb_left)){
			with(obj_c_roachy_popup){
				instance_destroy(obj_c_roachy.popups[0])
			}
			audio_play_sound(sfx_punch_1, 1, false, 0.4, 0, 1.5)
			array_delete(popups, 0, 1)
		}
	}
}