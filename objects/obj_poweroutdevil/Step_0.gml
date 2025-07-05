if (active){
	if (dark < 0.95){
		dark += 0.015
	}
	if (wait >= 0){
		wait -= random_range(0, 1)
	}else{
		if (image_alpha < 1){
			image_alpha += 0.015
		}
		musickill -= 1
		if (musickill <= 0 && !instance_exists(obj_jumpscare)){
			var _kill = irandom_range(0, 9)
			if (_kill < 2){
				instance_create_layer(640, 400, "death", obj_jump_powerout)
			}
		}
	}
	if (wait < 0 && !audio_is_playing(mus_bedtime)){
		audio_play_sound(mus_bedtime, 1, false)
	}
}