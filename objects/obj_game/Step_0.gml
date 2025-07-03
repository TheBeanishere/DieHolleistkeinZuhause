if (room = init && audio_group_is_loaded(sfx) && audio_group_is_loaded(music)){
	room_goto(boot)
}

if (keyboard_check_pressed(vk_f11) && room != INTER_night5cutscene){
	window_set_fullscreen(!window_get_fullscreen())
}

if (keyboard_check_pressed(vk_escape) && room = NIGHT_1){
	room_goto(MENU_custom)
}

if (room = MENU_savecreate){
	if (nameconfirm){
		if (keyboard_check_pressed(vk_backspace)){
			nameconfirm = false
		}else if (keyboard_check_pressed(vk_enter)){
			if (namedeny){
				var _pitch = random_range(0.9, 1.1)
				audio_play_sound(sfx_WRONG, 1, false, 1, 0, _pitch)
			}else{
				ini_open(savedata)
				ini_write_string("data", "name", name)
				ini_close()
				room_goto(MENU_main)
			}
		}
	}else{
		if (keyboard_check_pressed(vk_backspace)){
			array_delete(tempname, array_length(tempname)-1, 1)
		}else if (keyboard_check_pressed(vk_enter)){
			nameconfirm = true
			nameline = ""
			var _tempstring = ""
			var _times = 0
			repeat(array_length(tempname)){
				_tempstring = _tempstring + chr(tempname[_times])
				_times += 1
			}
			_times = 0
			repeat(array_length(nononames)){
				var _arrayget = array_get(nononames, _times)
				if (string(_arrayget) = string(_tempstring)){
					ini_open("lang.txt")
					nameline = ini_read_string("nononames", _tempstring, "fuck")
					ini_close()
					namedeny = true
				}
				_times += 1
			}
			_times = 0
			repeat(array_length(specialnames)){
				var _arrayget = array_get(specialnames, _times)
				if (_arrayget = _tempstring){
					ini_open("lang.txt")
					nameline = ini_read_string("nononames", _tempstring, "fuck")
					ini_close()
					namedeny = false
					name = _tempstring
				}
				_times += 1
			}
			if (nameline = ""){
				nameline = "ARE YOU SURE?"
				namedeny = false
				name = _tempstring
			}
		}else if (keyboard_check_pressed(vk_anykey)){
			var _pitch = random_range(0.9, 1.1)
			audio_play_sound(sfx_typewrite, 1, false, 0.7, 0, _pitch)
			var _key = keyboard_lastkey
			array_push(tempname, _key)
		}
	}
}

if (room = MENU_custom){
	if (keyboard_check_pressed(vk_enter)){
		room_goto(NIGHT_1)
	}
	if (keyboard_check_pressed(vk_right)){
		scr_customchallenge(customchallenge, 1)
	}
	if (keyboard_check_pressed(vk_left)){
		scr_customchallenge(customchallenge, 0)
	}
}