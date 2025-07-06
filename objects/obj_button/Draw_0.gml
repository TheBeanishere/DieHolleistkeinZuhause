draw_set_font(global.bigfont)
randomize()
draw_set_valign(fa_middle)
if (letter < string_length(name)){
	draw_set_colour(c_gray)
	draw_text(x + irandom_range(-4, 4), y, string_copy(name, 1, letter))
}else{
	if (collision_circle(mouse_x, mouse_y, 3, self, false, false)){
		draw_set_colour(c_white)
		draw_text(x + irandom_range(-2, 2), y + irandom_range(-2, 2), string_copy(name, 1, letter))
	}else{
		draw_set_colour(c_gray)
		draw_text(x, y, string_copy(name, 1, letter))
	}
}
if (name = "play" && letter >= string_length("play")){
	draw_text(x + string_width("play"), y, "  night " + string(currnight))
}
draw_set_valign(fa_top)