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

time += 1

//TEMP

if (hours = 6){
	show_message("YOU WIN")
	game_end()
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