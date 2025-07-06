usage = doorleft + doorright + lightleft + lightright + global.cameraflipped + 0.5

if (obj_c_pravi.movetimer <= 0){
	usage += 0.65
}

if (global.cameraflipped){
	audio_sound_gain(sfx_cam_hum, 1, 0)
}else{
	audio_sound_gain(sfx_cam_hum, 0, 0)
}

if (keyboard_check_pressed(vk_space)){
	global.cameraflipped = !global.cameraflipped
}

powerleft -= usage/30

if (time > 2700){
	time = 0
	hours += 1
}

time += 1 * 270

//TEMP

if (hours = 6){
	ini_open(savedata)
	if (global.night != "c"){	
		ini_write_real("data", "night" + string(global.night), true)
	}else{
		ini_write_real("data", "custom" + string(obj_game.customchallenge), true)
	}
	ini_close()
	if (global.night != 6 && global.night != "c"){
		ini_open(savedata)
		if (ini_read_real("data", "night5", 0)){
			obj_game.beatennight = 6
		}else if (ini_read_real("data", "night4", 0)){
			obj_game.beatennight = 5
		}else if (ini_read_real("data", "night3", 0)){
			obj_game.beatennight = 4
		}else if (ini_read_real("data", "night2", 0)){
			obj_game.beatennight = 3
		}else if (ini_read_real("data", "night1", 0)){
			obj_game.beatennight = 2
		}else{
			obj_game.beatennight = 1
		}
		ini_close()
	}else if (global.night = 6){
		obj_game.beatennight6 = 1
	}
	room_goto(WIN)
}

if (powerleft <= 0 && !obj_poweroutdevil.active){
	audio_stop_all()
	if (obj_lever_left.shut){
		obj_lever_left.shut = false
		obj_door_left.transanim = spr_office_door_off
		obj_door_left.image_index = 0
		audio_play_sound_at(sfx_door_open, -50, 0, 0, 100, 200, 1, false, 1, 0.7)
	}
	if (obj_lever_right.shut){
		obj_lever_right.shut = false
		obj_door_right.transanim = spr_office_door_off
		obj_door_right.image_index = 0
		audio_play_sound_at(sfx_door_open, 50, 0, 0, 100, 200, 1, false, 1, 0.7)
	}
	obj_poweroutdevil.active = true
	audio_play_sound(sfx_powerdown, 1, false)
}