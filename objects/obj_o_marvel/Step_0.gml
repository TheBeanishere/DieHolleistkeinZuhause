if (obj_game.AI_marvel > 0 && obj_office.powerleft > 0){
	if (obj_c_marvel.location = 10){
		image_xscale = -1
		x = 1615
	}else{
		image_xscale = 1
		x = -335
	}
	if (obj_c_marvel.stage = 4){
		if ((obj_c_marvel.location = 10 && obj_lever_right.shut) || (obj_c_marvel.location = 9 && obj_lever_left.shut)){
			if (killtime <= 200){
				leavetime += 1
				if (leavetime >= 90){
					leavetime = 0
					killtime = 420
					obj_c_marvel.stage = 1
					if (obj_c_marvel.location = 10){
						audio_play_sound_at(choose(sfx_chain_1, sfx_chain_2), 30, 0, 0, 100, 200, 1, false, 1, 0.4, 0, 0.65)
					}else{
						audio_play_sound_at(choose(sfx_chain_1, sfx_chain_2), -30, 0, 0, 100, 200, 1, false, 1, 0.4, 0, 0.65)
					}
					obj_c_marvel.location = choose(9, 10)
					obj_c_marvel.movetimer = 315
				}
			}
		}else{
			killtime -= 1
			if (killtime = 201){
				if (obj_c_marvel.location = 10){
					audio_play_sound_at(choose(sfx_chain_1, sfx_chain_2), 30, 0, 0, 100, 200, 1, false, 1)
				}else{
					audio_play_sound_at(choose(sfx_chain_1, sfx_chain_2), -30, 0, 0, 100, 200, 1, false, 1)
				}
			}
		}
		if (killtime <= 0 && !instance_exists(obj_jumpscare)){
			instance_create_layer(640, 400, "death", obj_jump_marvel)
		}
	}

}