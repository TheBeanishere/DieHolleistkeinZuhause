if (obj_game.AI_roachy > 0 && obj_office.powerleft > 0){
	lifetime += 1
	if (lifetime > 150){
		greenfade += 0.015
	}

	if (greenfade >= 1){
		audio_play_sound(sfx_roachy, 1, false, 1, 0, 1.6)
		audio_play_sound(sfx_stitcher_shock_fail, 1, false, 0.2, 0, 2.25)
		obj_office.powerleft -= 7.5
		instance_destroy(self)
	}
}
