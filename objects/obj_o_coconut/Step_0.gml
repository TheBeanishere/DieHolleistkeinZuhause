if (obj_game.AI_coconut > 0 && obj_office.powerleft > 0){
	if (timer > 0){
		timer -= obj_game.AI_coconut
	}else{
		if (!active){
			active = true
			sprite_index = choose(spr_coconut_1, spr_coconut_2, spr_coconut_3, spr_coconut_4, spr_coconut_5)
			audio_play_sound(choose(sfx_coconut_aggro_1, sfx_coconut_aggro_2, sfx_coconut_aggro_3,sfx_coconut_aggro_4), 1, false)
			if (obj_game.scungeness){
				audio_stop_sound(sfx_coconut_aggro_1)
				audio_stop_sound(sfx_coconut_aggro_2)
				audio_stop_sound(sfx_coconut_aggro_3)
				audio_stop_sound(sfx_coconut_aggro_4)
			}
		}else{
			if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && mouse_check_button_pressed(mb_left) && !global.cameraflipped){
				audio_play_sound(choose(sfx_coconut_pain_1, sfx_coconut_pain_2), 1, false)
				var _ptich = random_range(0.85, 1.15)
				audio_play_sound(choose(sfx_punch_1, sfx_punch_2), 1, false, 1, 0, _ptich)
				timer = 14400
				killtimer = 228
				active = false
				if (obj_game.scungeness){
					timer = 0
					killtimer = 615
				}
			}
			if (killtimer > 0){
				killtimer -= 1
			}else{
				if (!instance_exists(obj_jumpscare)){
					instance_create_layer(640, 400, "death", obj_jump_coconut)
				}
			}
		}
	}
}