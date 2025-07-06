if (timer > 0){
	timer -= 1
}else{
	if (char < string_length("It's Six o'Clock.\nTime to get on with your day.")){
		timer = 4
		char += 1
		var _pitch = random_range(0.85, 1.15)
		audio_play_sound(sfx_typewrite, 1, false, 1, 0, _pitch)
	}
}
wintime -= 1
if (wintime <= 0){
	drawalpha = lerp(drawalpha, 0, 0.025)
	if (drawalpha <= 0.025){
		room_goto(MENU_main)
	}
}else{
	drawalpha = lerp(drawalpha, 1, 0.025)
}