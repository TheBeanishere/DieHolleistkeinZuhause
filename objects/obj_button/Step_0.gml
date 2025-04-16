if (letter < string_length(name)){
	randomize()
	timer += choose(1, 0.5, 0.25, 0.5)
	if (timer >= typespeed){
		timer = 0
		letter += 1
	}
}
if (collision_circle(mouse_x, mouse_y, 3, self, false, false)){
	textsize = lerp(textsize, 1.5, 0.05)
	if (mouse_check_button_pressed(mb_left)){
		if (name = "play"){
			room_goto(NIGHT_1)
		}
	}
}else{
	textsize = lerp(textsize, 1, 0.05)
}