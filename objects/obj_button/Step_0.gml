if (letter < string_length(name)){
	randomize()
	timer += choose(1, 0.5, 0.25, 0.5)
	if (timer >= typespeed){
		timer = 0
		letter += 1
		if (letter > 0){
			audio_play_sound(sfx_typewrite, 1, false)
		}
	}
}
if (collision_circle(mouse_x, mouse_y, 3, self, false, false)){
	
	if (name = "play"){
		if (mouse_wheel_up()){
			currnight += 1
		}
		if (mouse_wheel_down()){
			currnight -= 1
		}
		currnight = clamp(currnight, 1, 5)
	}
	
	if (mouse_check_button_pressed(mb_left)){
		if (name = "play"){
			global.night = currnight
			if (currnight < 5){
				room_goto(GAME)
			}else{
				room_goto(INTER_night5cutscene)
			}
		}
		if (name = "night 6"){
			global.night = 6
			room_goto(GAME)
		}
		if (name = "custom night"){
			global.night = "c"
			room_goto(MENU_custom)
		}
		if (name = "credits"){
			room_goto(CREDITS)
		}
		if (name = "options"){
			room_goto(OPTIONS)
		}
		if (name = "quit"){
			game_end()
		}
	}
}