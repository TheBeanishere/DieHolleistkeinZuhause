if (letter < string_length("Die Hölle ist kein Zuhause")){
	timer += 1
	if (timer >= 6){
		letter += 1
		timer = 0
		if (letter > 0){
			audio_play_sound(sfx_typewrite, 1, false, 1, 0, 0.7)
			obj_game.menusquarecount -= 1.25
		}
	}
}