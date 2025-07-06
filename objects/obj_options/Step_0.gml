if (keyboard_check_pressed(vk_right)||keyboard_check_pressed(ord("D"))){
	choice += 1
}
if (keyboard_check_pressed(vk_left)||keyboard_check_pressed(ord("A"))){
	choice -= 1
}
if (choice < 0){
	choice = 4
}
if (choice > 4){
	choice = 0
}
switch (choice){
	case 0:
		if (keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"))){
			audio_group_set_gain(sfx, audio_group_get_gain(sfx) + 0.05, 0)
			if (audio_group_get_gain(sfx)>1){
				audio_group_set_gain(sfx, 1, 0)
			}
			ini_open(savedata)
			ini_write_real("options", "sfx", audio_group_get_gain(sfx))
			ini_close()
		}
		if (keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))){
			audio_group_set_gain(sfx, audio_group_get_gain(sfx) - 0.05, 0)
			if (audio_group_get_gain(sfx)<0){
				audio_group_set_gain(sfx, 0, 0)
			}
			ini_open(savedata)
			ini_write_real("options", "sfx", audio_group_get_gain(sfx))
			ini_close()
		}
	break;
	case 1:
		if (keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"))){
			audio_group_set_gain(music, audio_group_get_gain(music) + 0.05, 0)
			if (audio_group_get_gain(music)>1){
				audio_group_set_gain(music, 1, 0)
			}
			ini_open(savedata)
			ini_write_real("options", "music", audio_group_get_gain(music))
			ini_close()
		}
		if (keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))){
			audio_group_set_gain(music, audio_group_get_gain(music) - 0.05, 0)
			if (audio_group_get_gain(music)<0){
				audio_group_set_gain(music, 0, 0)
			}
			ini_open(savedata)
			ini_write_real("options", "music", audio_group_get_gain(music))
			ini_close()
		}
	break;
	case 2:
		if (keyboard_check_pressed(vk_enter)){
			obj_game.jumpscareness = !obj_game.jumpscareness
			ini_open(savedata)
			ini_write_real("options", "jumpscares", obj_game.jumpscareness)
			ini_close()
		}
	break;
	case 3:
		if (keyboard_check_pressed(vk_enter)){
			window_set_fullscreen(!window_get_fullscreen())
			ini_open(savedata)
			ini_write_real("options", "fullscreen", window_get_fullscreen())
			ini_close()
		}
	break;
	case 4:
		if (keyboard_check_pressed(vk_enter)){
			ini_open(savedata)
			ini_write_real("options", "scunge", !ini_read_real("options", "scunge", 0))
			ini_close()
		}
	break;
}